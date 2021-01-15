---
title: MongoDB Atlas / Cloud Manager
tags: [integration, mongodb atlas, cloud manager]
keywords: 
last_updated: 
summary: "Route your MongoDB Atlas / Cloud manager alerts to Squadcast"
sidebar: mydoc_sidebar
permalink: docs/mongodb-atlas-cloud-manager.html
folder: mydoc
---

Follow the below steps to configure routing of your MongoDB Atlas / Cloud manager alerts to Squadcast. 

**Note**: MongoDB Atlas is the cloud hosted version of MongoDB offered by the company, whereas MongoDB Cloud Manager is the open source self-hosted version of MongoDB.

## Using MongoDB as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

1.Select **MongoCloudManager** from  **Alert Source** drop down and copy the Webhook URL shown.

{{site.data.alerts.blue-note}}
Select the <b>Alert Source</b> Integration type as <b>MongoAtlas</b> (For MongoDB Atlas hosted version) / <b>MongoCloudManager</b> (For Self hosted version).
{{site.data.alerts.end}}

![](images/mongodb_1.png)

2.Go to your MongoDB Atlas / Cloud manager Dashboard and click on **Settings** and click the **edit** icon on Webhook settings and enter the webhook url obtained from the previous step and click Save button. (You need Account owner permissions to do this in MongoDB)

![](images/mongodb_2.png)

3.Now we can add the created webhook as an alert mechanism for both new / existing alerts. Click **Add -> New Alert** to create a new alert.

![](images/mongodb_3.png)

4.Define the alert parameters and under **Send to**, select **Webhook** and click **Save** button.

![](images/mongodb_4.png)

![](images/mongodb_5.png)

The Alert is configured and integrated with Squadcast and whenever it is triggered in MongoDB, an incident will be triggered in Squadcast as well.

Squadcast automatically syncs the alert status from MongoDB as defined below. 

If a user Acknowledges the alert in MongoDB, Squadcast will also Acknowledges (**Auto-Acknowledge**) the incident in Squadcast, provided the same user (with same email ID) is also present in Squadcast.

Squadcast will **Auto-Resolve** the incident, if the alerts get resolved in MongoDB and doesn't require any manual intervention from the user.