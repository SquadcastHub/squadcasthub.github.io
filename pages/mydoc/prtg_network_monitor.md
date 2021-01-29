---
title: PRTG Network Monitor
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Get alerts from PRTG Network Monitor into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/prtg-network-monitor
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from PRTG Network Monitor onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using PRTG Network Monitor as an Alert Source

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/prtg_0.png)

Select **PRTG Network Monitor** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/prtg_1.png)

## Create a Squadcast Webhook in PRTG Network Monitor

**(1)** Login to your PRTG Network Monitor dashboard. Go to **Setup** present in the top right corner of the screen. Select **Account Settings --> Notification Templates**

![](images/prtg_2.png)

**(2)** Click on the **+** button on the right side of the screen to **Add Notification Template**.

![](images/prtg_3.png)

**(3)** Name it  **Squadcast Webhook**  for easy identification. Configure the remaining fields as per your requirements.

![](images/prtg_4.png)

**(4)** Scroll down and tick the **Execute HTTP Action** button. Paste the webhook URL copied from Squadcast platform in the **URL** field. 

Select **HTTP Method** as POST and paste the snippet given below in the payload field.

![](images/prtg_5.png)

```
colorofstate=%colorofstate&company=%company&comments=%comments&commentssensor=%commentssensor&commentsdevice=%commentsdevice&commentsgroup=%commentsgroup&commentsprobe=%commentsprobe&coverage=%coverage&cumsince=%cumsince&date=%date&datetime=%datetime&device=%device&deviceid=%deviceid&down=%down&downtime=%downtime&elapsed_lastcheck=%elapsed_lastcheck&elapsed_lastdown=%elapsed_lastdown&elapsed_lastup=%elapsed_lastup&group=%group&groupid=%groupid&history=%history&home=%home&host=%host&iconofstate=%iconofstate&lastcheck=%lastcheck&lastdown=%lastdown&lastmessage=%lastmessage&laststatus=%laststatus&lastup=%lastup&lastvalue=%lastvalue&linkprobe=%linkprobe&linkgroup=%linkgroup&linkdevice=%linkdevice&linksensor=%linksensor&location=%location&message=%message&name=%name&nodename=%nodename&objecttags=%objecttags&parenttags=%parenttags&prio=%prio&priority=%priority&probe=%probe&probeid=%probeid&programname=%programname&programversion=%programversion&sensor=%sensor&sensorid=%sensorid&server=%server&serviceurl=%serviceurl&settings=%settings&shortname=%shortname&since=%since&sitename=%sitename&statesince=%statesince&status=%status&systemdatetime=%systemdatetime&tags=%tags&time=%time&timezone=%timezone&uptime=%uptime
```

**(5)** Finally click on the **Create** button to create the Notification Template.

Now, your Squadcast webhook is setup and ready to be consumed by sensors for sending alerts. 

Simply select the **Squadcast Webhook** as the Notification Template from the dropdown when configuring Notification Triggers in order to send notifications to Squadcast.

![](images/prtg_6.png)

PRTG Network Monitor also supports auto-resolve. So, when the system gets back online, your incident would get **automatically resolved in Squadcast.**