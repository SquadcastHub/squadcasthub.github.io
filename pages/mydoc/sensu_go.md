---
title: Sensu Go
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Get alerts from Sensu Go into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/sensu-go
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from Sensu Go onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Sensu Go as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

Select **Sensu Go** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/sensu-go_1.png)

### Squadcast handler installation 

If you're using sensuctl 5.13 with Sensu Backend 5.13 or later, you can use the following command to add the asset:

```
sensuctl asset add sensu/sensu-squadcast-handler
```

#### Installation from source

Download the latest version of the sensu-squadcast-handler from releases, or create an executable script by cloning the [sensu-squadcast-handler](https://github.com/SquadcastHub/sensu-squadcast-handler.git) repository
From the local path of the sensu-squadcast-handler repository run the following command:

```
go build -o /usr/local/bin/sensu-squadcast-handler
```

Create a `squadcast-handler.yaml` file like the following :-

```yaml
type: Handler
api_version: core/v2
metadata:
  name: squadcast
  namespace: default
spec:
  command: sensu-squadcast-handler
  env_vars:
  - SENSU_SQUADCAST_APIURL= <Squadcast Alert Source Url>
  runtime_assets:
  - SquadcastHub/sensu-squadcast-handler
  filters:
  - is_incident 
  timeout: 10
  type: pipe
```

Make sure to replace `<Squadcast Alert Source Url>` with the webhook url you copied from Squadcast.
  
Then run the following command :- 

```
sensuctl create -f squadcast-handler.yaml
```

While creating checks for your client systems make sure to add `squadcast` as a handler.  An example  check using the squadcast handler is shown below :-  

```yaml
api_version: core/v2
type: CheckConfig
metadata:
  namespace: default
  name: health-check
spec:
  command: check-http -u http://localhost:8080/health
  subscriptions:
  - test
  publish: true
  interval: 10
  handlers:
  - squadcast
```

Now whenever an event is triggered in Sensu Go , an incident will be created automatically in Squadcast. Also when an event is resolved in Sensu Go the corresponding incident gets **auto-resolved in Squadcast.**