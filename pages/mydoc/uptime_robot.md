---
title: Uptime Robot
tags: [integration, uptime robot]
keywords: 
last_updated: 
summary: "Get Alerts from Uptime Robot into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/uptime-robot
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Uptime Robot and Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Uptime Robot as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Uptime Robot** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/uptime_robot_1.png)

## Create Squadcast webhook in Uptime Robot dashboard

Go to your Uptime Robot dashboard and select **My Settings** and click on **Add Alert Contact** button in the **Alert Contact** tab.

![](images/uptime_robot_2.png)

In the  **New Alert Contact** page, Add the contact information as below.

<style>
table{
    max-width: 100%;
}
</style>

| Field                      | Value                                               |
|----------------------------|-----------------------------------------------------|
| Alert Contact Type         | Webhook                                             |
| Friendly Name              | Squadcast                                           |
| URL to Notify              | URL from the previous step and append ? to the end  |
| Enable Notifications for   | Up & down events                                    |

For **POST Value (JSON Format)**, please paste the below JSON and make sure the **Send as JSON** checkbox is ticked and click **Create Alert Contact** button.

```json
{
	"monitorID": "*monitorID*",
	"monitorURL": "*monitorURL*",
	"monitorFriendlyName": "*monitorFriendlyName*",
	"alertType": "*alertType*",
	"alertTypeFriendlyName": "*alertTypeFriendlyName*",
	"alertDetails": "*alertDetails*",
	"alertDateTime": "*alertDateTime*",
	"alertDuration": "*alertDuration*"
}
```

![](images/uptime_robot_3.png)

Then click on the **Edit** icon on the newly created webhook contact.

![](images/uptime_robot_4.png)

In the **Edit Alert Contact** window, make sure the **Send as JSON** and **Send default variables as POST parameters** check boxes are ticked and the **Send default variables** as a query string checkbox is unchecked and click **Save** changes

![](images/uptime_robot_5.png)

Then you can add the Alert contact to any monitor and whenever an alert is fired, an incident will get triggered in Squadcast. This integration comes with an **Auto-Resolve** feature, meaning, when the alert get resolved in Uptime Robot, it gets resolved in Squadcast as well.

![](images/uptime_robot_6.png)

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://app.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="https://calendly.com/amiya-squadcast/website?month=2019-08&amp;back=1" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>