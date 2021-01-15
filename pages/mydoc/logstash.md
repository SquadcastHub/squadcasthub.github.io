---
title: Logstash
tags: [integration, logstash]
keywords: 
last_updated: 
summary: "Squadcast - Logstash Integration guide"
sidebar: mydoc_sidebar
permalink: docs/logstash-integration-guide.html
folder: mydoc
---

The following steps help in configuring a service so as to extract its related alert data from Logstash.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Logstash as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Logstash** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/logstash_1.png)

## Create a Squadcast Webhook in Logstash

In your Logstash configuration file (.conf), under output section add the following.

```json
       http {
           format=>"json"
           http_method=>"post"
           url=>"The URL obtained above"
        }
```

In case you want to filter the logs being sent you can use the standard Logstash output conditional statements. For example:

```json
   if [type]=="FOO"{
     http {
       format=>"json"
       http_method=>"post"
       url=>"The URL obtained above"
        }
    }
```