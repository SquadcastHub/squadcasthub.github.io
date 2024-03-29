---
title: Oh Dear
summary: "Send alerts to Squadcast from Oh Dear"
tags: [integration, oh dear]
keywords:
sidebar: mydoc_sidebar
permalink: docs/oh-dear
folder: mydoc
---

[Oh Dear](https://ohdear.app/) is a monitoring tool which monitors uptime, SSL certificates, broken links, scheduled tasks, application health, DNS and more.

Route detailed alerts from Oh Dear to the right users in Squadcast.

## Using Oh Dear as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Oh Dear** from the Alert Source drop-down and copy the Webhook URL

![](images/oh_dear_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook Alert in Oh Dear

**(1)** Login to your Oh Dear dashboard. Head over to the **Account** settings and click on **Team Notifications**

![](images/oh_dear_2.png)

**(2)** Under **AVAILABLE CHANNELS**, choose **Webhooks**. Then click on **Configure notifications**

![](images/oh_dear_3.png)

**(3)** Under **Configure notifications**, paste the previously copied Squadcast Webhook URL in the placeholder for **Webhook URL**. Select the alert triggers and click on **Update**

![](images/oh_dear_4.png)

You can also click on **Send test** to test the alert. This will create a test incident in Squadcast.

![](images/oh_dear_5.png)


That's it, you are good to go! Your Oh Dear integration is now complete. Whenever Oh Dear fires an alert, an incident will be created in Squadcast for it. Also, when an alert is resolved in Oh Dear, the corresponding incident gets **auto-resolved** in Squadcast.

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://www.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="#" id="sd1" class="btttn" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>