---
title: Crowdstrike Falcon
summary: "Send alerts to Squadcast from Crowdstrike Falcon"
tags: [integration, crowdstrike falcon]
keywords:
sidebar: mydoc_sidebar
permalink: docs/crowdstrike-falcon
folder: mydoc
---

[Crowdstrike Falcon](https://www.crowdstrike.com/falcon-platform/) helps to secure the most critical areas of enterprise risk – endpoints, cloud workloads, identities, and data.

Route detailed alerts from Crowdstrike Falcon to the right users in Squadcast.

## Using Crowdstrike Falcon as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Crowdstrike Falcon** from the Alert Source drop-down and copy the Webhook URL

![](images/crowdstrike_falcon_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook URL REST Endpoint in Crowdstrike Falcon

**(1)** Login to your Crowdstrike Falcon dashboard. Head over to **Workflows**

![](images/crowdstrike_falcon_2.png)

**(2)** Click on **Create Workflow**. Select trigger as **New detection** or **New incident** and then under workflow diagram choose **condition**. Choose Parameter as **Detection status** or **Incident status**, Operator as **is equal to** & Value as **New**. Then click on **+** and add **Action**. Choose **Notifications** as **Action type** and **Call webhook** as **Action**.

![](images/crowdstrike_falcon_3.png)

Add webhook by clicking to **Go to Store**. Click on **Configure** and then add **Squadcast** as **Name**. Paste the previously copied Squadcast Webhook URL in the placeholder for **Webhook URL**. Then click on **Save configuration**. 

Choose **Squadcast** as **Webhook name** and add the data you want to send to Squadcast.

![](images/crowdstrike_falcon_5.png)

{{site.data.alerts.blue-note-md}}
**Important**  

* **For New Detection :**

Always add **Detection Id** and **Detection Status** in the data you want to send to Squadcast.

* **For New Incident :**

Always add **Incident Id** and **Incident Status** in the data you want to send to Squadcast.

{{site.data.alerts.end}}

Again add a **condition** after the **Trigger** event. Choose Parameter as **Detection status** or **Incident status**, Operator as **is equal to** & Value as **Closed**. Then click on **+** and add **Action**. Choose **Notifications** as **Action type** and **Call webhook** as **Action**. Choose **Squadcast** as **Webhook name** and add the data you want to send to Squadcast.

![](images/crowdstrike_falcon_4.png)

Then click on **Finish**. Give it a name and set the **Workflow Status** as **On**. Then click on **Save workflow**

![](images/crowdstrike_falcon_6.png)

That's it, you are good to go! Your Crowdstrike Falcon integration is now complete. Whenever Crowdstrike Falcon fires an alert, an incident will be created in Squadcast for it. Also, when an status has changed to **Closed**, the corresponding incident gets **auto-resolved** in Squadcast.

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://www.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="#" id="sd1" class="btttn" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>