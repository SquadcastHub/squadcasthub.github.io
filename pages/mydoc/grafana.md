---
title: Grafana
tags: [integration, grafana]
last_updated: 
keywords:
summary: "Send alerts to Squadcast from Grafana"
sidebar: mydoc_sidebar
permalink: docs/grafana.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Grafana.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Grafana as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Grafana** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/grafana_1.png)

## Create Squadcast Webhook in Grafana dashboard

Login to your Grafana dashboard, Click on the **Alerting (Bell) icon** and select **Notification channels**.

![](images/grafana_2.png)

Click on **Add Channel** or **New Channel** and enter the Notification channel name as **Squadcast**, Type as **Webhook**, and enable **Send on all alerts** checkbox as below.

![](images/grafana_3.png)

Enter the webhook url we have got from the Squadcast service under **URL** in Webhook settings and select the Http Method as **POST** and click **Save**.

If you'd like to include images to your incident, check the **Include Image** box and you should see it as a part of your incident description in Squadcast. 

If you would like to enable **Auto-Resolve** in Squadcast, then make sure the **Disable Resolve Message** is unchecked.

![](images/grafana_4.png)

![](images/grafana_5.png)

<p align='center'><img src="images/grafana_6.jpg" style="max-width: 35%"></p>

{{site.data.alerts.blue-note}}
<b>Sending Grafana Images into Squadcast: </b>
<br/><br/><p>The Image URL must be public or accessible from your computer for it to be visible on Squadcast. <br/><br/>Even if the Image is not accessible, the Image URL will be provided in the Incident Description.</p>
{{site.data.alerts.end}}

## Setup Alerts in Grafana

To setup alerts for a Panel, go to your Grafana dashboard, under options choose **Edit**.

![](images/grafana_7.png)

Then under **Alerts**, click **Create Alert** button.

![](images/grafana_8.png)

In the Alert Config, under **Notifications**, Add Squadcast webhook as the **Send to** field and enter a Message for the alert and save it.

![](images/grafana_9.png)

Now, whenever an alert is triggered in Grafana for that particular panel, an incident will be created in Squadcast. When it is resolved in Grafana, it will automatically get Resolved in Squadcast, provided the **Disable Resolve Message** checkbox is **unchecked**.

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://app.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="https://calendly.com/renuka-squadcast/30min" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>