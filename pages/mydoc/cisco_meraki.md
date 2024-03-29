---
title: Cisco Meraki
summary: "Send alerts to Squadcast from Cisco Meraki"
tags: [integration, cicso meraki]
keywords:
sidebar: mydoc_sidebar
permalink: docs/cisco-meraki
folder: mydoc
---

[Cisco Meraki](https://meraki.cisco.com/) is a suite of internet-managed network solutions that enables a single source of management over locations, infrastructure, and devices. Meraki Webhooks provide a new way to subscribe to alerts sent from Meraki Cloud when an events occur.

Route detailed alerts from Cisco Meraki to the right users in Squadcast.

## Using Cisco Meraki as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Cisco Meraki** from the Alert Source drop-down and copy the Webhook URL

![](images/cisco_meraki_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook URL REST Endpoint in Cisco Meraki

**(1)** Login to your Cisco Meraki dashboard. Head over to the **Network-wide** tab and click on **Alerts**

![](images/cisco_meraki_2.png)

**(2)** Scroll to the bottom of the **Alerts** page, and click on **Add an HTTP Server** under the **Webhooks** section

![](images/cisco_meraki_4.png)

**(3)** Here, fill in the **Name**. Paste the previously copied Squadcast Webhook URL in the placeholder for **URL**. Then, click on **Save**

![](images/cisco_meraki_5.png)

**(4)** Scroll to the top of the **Alerts** page and add the newly created Webhook for Squadcast as a  **default recipient**

![](images/cisco_meraki_6.png)

**(5)** Select the events & parameters for triggering this webhook and the click on **Save**

![](images/cisco_meraki_7.png)

![](images/cisco_meraki_8.png)

That's it, you are good to go! Your Cisco Meraki integration is now complete. Whenever Cisco Meraki fires an alert, an incident will be created in Squadcast for it.

{{site.data.alerts.blue-note-md}}
**Note**:

Incidents will be triggered in Squadcast for the alerts that come in from Cisco Meraki with the key `alertLevel` having values `critical`, `warning` and `informational`.
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in Cisco Meraki, does Cisco Meraki send auto-resolve signals to Squadcast?<br/><br/>A: No, Cisco Meraki does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from Cisco Meraki should be resolved manually.</p>
{{site.data.alerts.end}}

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://www.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="#" id="sd1" class="btttn" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>