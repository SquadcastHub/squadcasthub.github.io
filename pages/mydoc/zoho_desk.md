---
title: Zoho Desk
summary: "Send alerts to Squadcast from Zoho Desk"
tags: [integration, zoho desk]
keywords:
sidebar: mydoc_sidebar
permalink: docs/zoho-desk
folder: mydoc
---

[Zoho Desk](https://www.zoho.com/desk/) is a cloud-based help desk solution from Zoho Corporation, catering to businesses of all sizes. Key features include management of customer support tickets, a customer support portal, contract management and report creation.

Route detailed alerts from Zoho Desk to the right users in Squadcast.

## Using Zoho Desk as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Zoho Desk** from the Alert Source drop-down and copy the Webhook URL

![](images/zoho_desk_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook Integration in Zoho Desk

**(1)** Login to your **Zoho Desk** dashboard and select the **Project** of your choice

![](images/zoho_desk_2.png)

**(2)** Navigate to **Setup**. Under **Developer Space** section, click on **Webhooks**. Then click on **New Webhook** or **Add Your First Webhook**

![](images/zoho_desk_3.png)

**(3)** Fill in the **Name**, paste the previously copied Squadcast Webhook URL in the placeholder for **URL to notify**. Put in a **Description** and start setting up the events. 

For the First event : 

* Select **Tickets** as module
* Set **Add** as event
* Select your **departments** accordingly

For the Second event : 

* Select **Tickets** as module
* Set **Delete** as event
* Select your **departments** accordingly

![](images/zoho_desk_4.png)

You can also click on **Test Run** to test the alert. This will create a test incident in Squadcast.

That's it, you are good to go! Your Zoho Desk integration is now complete. Whenever Zoho Desk fires an alert, an incident will be created in Squadcast for it. Also, when an alert is resolved in Zoho Desk, the corresponding incident gets **auto-resolved** in Squadcast.

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://www.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="#" id="sd1" class="btttn" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>