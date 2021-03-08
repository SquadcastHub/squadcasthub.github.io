---
title: Slack
tags: [integration, slack]
keywords: 
last_updated: 
summary: "Trigger, Ack, Resolve incidents from Slack."
sidebar: mydoc_sidebar
permalink: docs/slack
folder: mydoc
---

We understand that most of your work happens over Slack. You can integrate Squadcast and Slack to collaborate efficiently with your team while working on incidents. Here's a brief of all that is possible. 

## Slack Notifications for Incidents

Squadcast sends a notification to the configured Slack channel as soon as an incident is triggered. You can easily **Acknowledge** and **Resolve** the populated incidents from within the Slack channel itself.

## Prerequisite

Kindly ensure that the **email address** used with your **user in Slack** and your **user in Squadcast** are the same, if not, the integration will not work as expected.

### Follow the steps below to integrate Squadcast and Slack

**(1)** From the sidebar, navigate to **Extensions**

![](images/slack_squadcast_1.jpg)

**(2)** Click on **Integrate** in the Slack tile, to begin you will be redirected asking for permissions to access your Slack account

![](images/slack_squadcast_2.png)

**(3)** Please ensure that you have the permission to create Public Channels in your Slack workspace. If you have the permission, then click on **Continue**

![](images/slack_squadcast_18.png)

**(4)** You will be redirected to Slack for approval of certain permissions that Squadcast would need for this integration. Click on **Allow**

![](images/slack_squadcast_3.png)

{{site.data.alerts.blue-note}}
<b>Permission in Slack to add Public Channel</b>
<br/><br/><p>If you do not have the permission to create Public channels in your Slack workspace then you would see following error message:
<img src="images/slack_squadcast_19.png"></p>
{{site.data.alerts.end}}

**(5)** Upon doing this, you will receive an email notification from Slack about your Squadcast installation

This completes the integration process between Squadcast and Slack. You can verify the same with the presence of the **Integrated** banner on the Slack tile.

![](images/slack_squadcast_4.png)

{{site.data.alerts.blue-note}}
<b>Revoke Slack integration from Squadcast</b>
<br/><br/><p>You can simply click on <b>Revoke</b> to remove the configured Slack integration at any given time</p>
{{site.data.alerts.end}}

## Configuring a global Slack channel for all Services in Squadcast

**(1)** Click on **Select Channel**

![](images/slack_squadcast_5.png)

**(2)** Pick a Slack channel where you would wish to receive notifications for *all* the incidents in Squadcast

**(3)** ![](images/slack_squadcast_6.png)

{{site.data.alerts.blue-note}}
<b>List of channel shown</b>
<br/><br/><p>By default all the Public Channels and only the Private channels in which Squadcast bot is already called in your Slack workspace would be listed in Squadcast. If you do not see your channel in the list, then:
<ol>
  <li>Move to your Slack Workspace</li>
  <li>Open the channel that you wish to map in Squadcast</li>
  <li>Call Squadcast by using <b>@squadcast</b></li>
  <li>Now, map the channel in Squadcast under the Service of your choice</li>
</ol></p>
{{site.data.alerts.end}}

**(4)** Click on **Save**

![](images/slack_squadcast_7.png)

Now, you will start receiving alert notifications for *all* Squadcast incidents in the configured Slack channel, in this case, the `incidents` channel. You can then choose to **Acknowledge** and **Resolve** these incidents from within the channel, in this case, the `incidents` channel.

{{site.data.alerts.blue-note}}
<b>This integration supports bi-directional status sync</b>
<br/><br/><p>When an incident is <i>acknowledged</i> or <i>resolved</i> from Slack, the status change of the incident is propagated to Squadcast and updated automatically. Similarly, if an incident is <i>acknowledged</i> or <i>resolved</i> in Squadcast, you will be notified in the configured Slack channel for it</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: Global Slack channel = default Slack channel for all Services</b>
<br/><br/><p>By default, the configured global Slack channel is applicable to every Service in Squadcast. This means, all the alerts coming for every Service in Squadcast will be routed to the default Slack channel, <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">#incidents</code></p>
{{site.data.alerts.end}}

## Configuring Service Specific Slack Channels

Additionally, you can associate one Slack channel per Service so as to receive notifications for incidents affecting only that Service in this Slack channel.

Follow the steps below to configure the same:

**(1)** From the sidebar, navigate to **Services** 

![](images/slack_squadcast_8.png)

**(2)** Click on the three horizontal dots for the Service of your choice

![](images/slack_squadcast_9.png)

**(3)** Select **Slack Channel**

![](images/slack_squadcast_10.png)

**(4)** By default, the configured global Slack channel is populated. Now, select a channel from the drop-down to which incident notifications should be sent for this Service and click on **save**

![](images/slack_squadcast_11.png)

{{site.data.alerts.blue-note}}
<b>List of channel shown</b>
<br/><br/><p>By default all the Public Channels and only the Private channels in which Squadcast bot is already called in your Slack workspace would be listed in Squadcast. If you do not see your channel in the list, then:
<ol>
  <li>Move to your Slack Workspace</li>
  <li>Open the channel that you wish to map in Squadcast</li>
  <li>Call Squadcast by using <b>@squadcast</b></li>
  <li>Now, map the channel in Squadcast under the Service of your choice</li>
</ol></p>
{{site.data.alerts.end}}

**(5)** **Save** the configuration

![](images/slack_squadcast_12.png)

You will be able to see the associated Slack channel on the bottom-right corner of the Service tile.

![](images/slack_squadcast_13.png)

## Triggering Incidents from Slack

You can trigger incidents in Squadcast directly from a Slack channel. 

**(1)** To trigger an incident from Slack, within the Slack channel, type `/create_incident` and select the first option as seen in the screenshot

![](images/slack_squadcast_14.png)

**(2)** In the pop-up:
  (a) Pick the Service for which you want to trigger the incident
  (b) Give the incident a meaningful title
  (c) Provide informative description if needed
Click on **Create** to trigger the incident

![](images/slack_squadcast_15.png)

**(3)** You will now be able to see the newly triggered incident in Squadcast. You will also be notified in the globally configured or the Service specific Slack channel for the same

![](images/slack_squadcast_16.png)

{{site.data.alerts.red-note}}
<b>Adding private Slack channels for Service-specific Slack channels</b>
<br/><br/><p>First, within the private Slack channel, add the Squadcast bot. You can do so by executing the command - <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">@squadcast</code>. Once this is done, in Squadcast, you can map that particular channel to the Service of your choice.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: Global Slack channel = default Slack channel for all Services</b>
<br/><br/><p>You will be able to view tags (if present) associated with an incident in the incident notification that you receive within the Slack channel</p>
{{site.data.alerts.end}}

![](images/slack_squadcast_17.png)

## Using Slack as an Alert Source
To create incidents automatically in Squadcast from Slack, check out [Slack as an alert source](slack-as-an-alert-source).

{{site.data.alerts.blue-note}}
<b>FAQ</b>
<br/><br/><p><b>Q: </b>How to give access to a user in Slack to add Public Channels?<br/>
<b>A: </b>Please follow the <a href="https://slack.com/intl/en-nl/help/articles/360017938993-What-is-a-channel" target="_blank">documentation by Slack</a> to give access to your user.</p>
{{site.data.alerts.end}}