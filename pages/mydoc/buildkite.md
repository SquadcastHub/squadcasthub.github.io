---
title: Buildkite
tags: [integration, buildkite]
keywords:
last_updated:
summary: "Get alerts from Buildkite into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/buildkite
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Buildkite.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Buildkite as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Buildkite** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/buildkite_1.png)

## Create a Squadcast webhook in Buildkite

1.Login to your build kite web console and go to **Settings** tab on the top.

![](images/buildkite_2.png)

2.Click on **Notification Services** on left sidebar.

![](images/buildkite_3.png)

3.Click on **Add** button beside Webhook.

![](images/buildkite_4.png)

4.Paste the Build Kite Webhook URL copied from the Squadcast dashboard into the **Webhook URL** field. In events, select :

    * build.finished
    * agent.connected
    * agent.lost
    * agent.disconnected
    * agent.stopped

![](images/buildkite_5.png)

5.Configure the **Pipelines** and **Branch filtering** sections as per your requirements.
6.Finally, click on the **Add Webhook Notification** 

Now whenever a build fails in Buildkite, an incident will be created automatically in Squadcast.
And once the build for the same pipeline passes, all the Squadcast incidents created would get resolved automatically.

Similarly, when the agent gets disconnected / lost / stopped, an incident is created in Squadcast automatically. And once that agent is connected again, the incident is automatically resolved.

**NOTE** : The incident gets resolved automatically only if the same agent connects back. If a different agent connects, the user need to manually resolve the incident in the Squadcast Dashboard.