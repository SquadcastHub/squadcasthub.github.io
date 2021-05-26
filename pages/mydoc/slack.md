---
title: Slack
tags: [integration, slack]
keywords: 
last_updated: 
summary: "Trigger, Ack, Resolve, Reassign incidents from Slack."
sidebar: mydoc_sidebar
permalink: docs/slack
folder: mydoc
---

We understand that most of your work happens over Slack. You can integrate Squadcast and Slack to collaborate efficiently with your team while working on incidents. Here's a brief of all that is possible. 

## Slack Notifications for Incidents

Squadcast sends a notification to the configured Slack Channel as soon as an incident is triggered. You can easily **Acknowledge**, **Resolve** and **Reassign** the populated incidents from within the Slack Channel itself.

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/><p>The <b>email address</b> used with your <b>user in Slack</b> and your <b>user in Squadcast</b> should be the same, if not, the integration will not work as expected.</p>
{{site.data.alerts.end}}

### Follow the steps below to integrate Squadcast and Slack

**(1)** From the sidebar, navigate to **Extensions**

![](images/slack_squadcast_1.jpg)

**(2)** Click on the **Integrate** button on the Slack tile

![](images/slack_squadcast_2.png)

**(3)** Now, click on **Continue**

![](images/slack_integration_modal_select_workspace.png)

**(4)** You will be redirected to Slack for approval of certain permissions that Squadcast would need for this integration. First select the Slack Workspace that you wish to integrate with your Squadcast account and then, click on **Allow**

![](images/slack_squadcast_3.png)

**(5)** Next, you will be asked to select a Slack Channel that would be the default Slack Channel for all your Squadcast Services

![](images/slack_integration_modal_select_channel.png)

**(6)** You can either select an existing Channel from the dropdown or create a new Channel in Slack. If you have added a new Channel and don't see the same in the dropdown, refresh the dropdown and it would appear. Once you have selected the Channel, click on **Save**

![](images/slack_integration_modal_select_channel_dropdown.png)

{{site.data.alerts.blue-note}}
<b>List of Slack Channels displayed in the dropdown</b>
<br/><br/><p>By default, all the Public Slack Channels and the Private Slack Channels in which the Squadcast Bot is added in your Slack Workspace would be listed in the dropdown. If you do not see the Channel of your choice listed in the dropdown, then:
<ol>
  <li>Head over to your Slack Workspace</li>
  <li>Open the Channel that should have been present in the integration dropdown</li>
  <li>In this Channel, call the Squadcast Bot by using <b>@squadcast</b></li>
  <li>Back in Squadcast, click on the Refresh button beside the Channel dropdown to refresh the list. Your Channel should be populated in the list now</li>
</ol></p>
{{site.data.alerts.end}}

This completes the integration process between Squadcast and Slack. You can verify the same with the presence of the **Integrated** banner on the Slack tile as well as the selected Channel mentioned on the Slack tile

![](images/slack_integration_integrated_card.png)

{{site.data.alerts.blue-note}}
<b>Revoke Slack integration from Squadcast</b>
<br/><br/><p>You can simply click on <b>Revoke</b> to remove the configured Slack integration at any given time</p>
{{site.data.alerts.end}}

## Updating the global Slack Channel for all Services in Squadcast

**(1)** Click on **Select Channel**

![](images/slack_integration_select_channel_button.png)

**(2)** Select the new Slack Channel that would be the default Slack Channel for all your Squadcast Services

![](images/slack_integration_modal_select_channel_dropdown.png)

**(3)** Click on **Save**

![](images/slack_integration_modal_save_channel.png)

Now, you will start receiving alert notifications for *all* Squadcast incidents in the configured Slack Channel, in this case, the `incidents-internal` Channel. You can then choose to **Acknowledge**, **Resolve** and **Reassign** these incidents from within the Channel, in this case, the `incidents-internal` Channel.

{{site.data.alerts.blue-note}}
<b>This integration supports bi-directional status sync</b>
<br/><br/><p>When an incident is <i>acknowledged</i>, <i>resolved</i> or <i>reassigned</i> from Slack, the status change of the incident is propagated to Squadcast and updated automatically. Similarly, if an incident is <i>acknowledged</i>, <i>resolved</i> or <i>reassigned</i> in Squadcast, you will be notified in the configured Slack Channel for it</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: Global Slack Channel = default Slack Channel for all Services</b>
<br/><br/><p>By default, the configured global Slack Channel is applicable to every Service in Squadcast. This means, all the alerts coming for every Service in Squadcast will be routed to the default Slack Channel configured</p>
{{site.data.alerts.end}}

## Configuring Service Specific Slack Channels

Additionally, you can associate one Slack Channel per Service so as to receive notifications for incidents affecting only that Service in this Slack Channel.

Follow the steps below to configure the same:

**(1)** From the sidebar, navigate to **Services** 

![](images/slack_squadcast_8.png)

**(2)** Click on the three horizontal dots for the Service of your choice

![](images/slack_squadcast_9.png)

**(3)** Select **Slack Channel**

![](images/slack_squadcast_10.png)

**(4)** By default, the configured global Slack Channel is populated. Now, select a Channel from the drop-down to which incident notifications should be sent for this Service and click on **save**

![](images/slack_squadcast_11.png)

{{site.data.alerts.blue-note}}
<b>List of Channel shown</b>
<br/><br/><p>By default all the Public Channels and only the Private Channels in which Squadcast bot is already called in your Slack workspace would be listed in Squadcast. If you do not see your Channel in the list, then:
<ol>
  <li>Move to your Slack Workspace</li>
  <li>Open the Channel that you wish to map in Squadcast</li>
  <li>Call Squadcast by using <b>@squadcast</b></li>
  <li>Now, map the Channel in Squadcast under the Service of your choice</li>
</ol></p>
{{site.data.alerts.end}}

**(5)** **Save** the configuration

![](images/slack_squadcast_12.png)

You will be able to see the associated Slack Channel on the bottom-right corner of the Service tile.

![](images/slack_squadcast_13.png)

## Triggering Incidents from Slack

You can trigger incidents in Squadcast directly from a Slack Channel. 

**(1)** To trigger an incident from Slack, within the Slack Channel, type `/create_incident` and select the first option as seen in the screenshot

![](images/slack_squadcast_14.png)

**(2)** In the pop-up:
  (a) Pick the Service for which you want to trigger the incident
  (b) Give the incident a meaningful title
  (c) Provide informative description if needed
Click on **Create** to trigger the incident

![](images/slack_squadcast_15.png)

**(3)** You will now be able to see the newly triggered incident in Squadcast. You will also be notified in the globally configured or the Service specific Slack Channel for the same

![](images/slack_create_incident_success.png)

{{site.data.alerts.red-note}}
<b>Adding private Slack Channels for Service-specific Slack Channels</b>
<br/><br/><p>First, within the private Slack Channel, add the Squadcast bot. You can do so by executing the command - <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">@squadcast</code>. Once this is done, in Squadcast, you can map that particular Channel to the Service of your choice.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: Global Slack Channel = default Slack Channel for all Services</b>
<br/><br/><p>You will be able to view tags (if present) associated with an incident in the incident notification that you receive within the Slack Channel</p>
{{site.data.alerts.end}}

![](images/slack_incident_action_buttons.png)

## Using Slack as an Alert Source
To create incidents automatically in Squadcast from Slack, check out [Slack as an alert source](slack-as-an-alert-source).

## FAQs

1. #### How can a user in Slack be given access to add Public Channels?
Please follow the <a href="https://slack.com/intl/en-nl/help/articles/360017938993-What-is-a-Channel" target="_blank">documentation by Slack</a> to give access to your user to create Public Channels.

2. #### Our Squadcast Organization is integrated with our Slack account. However, we see `error messages` such as the ones below. What do they mean?

- #### You have not linked your Slack account with your Squadcast account.
This error message simply means that you are not added as a user of your Squadcast Organization. One needs to be added as a user in their Squadcast Organization to be able to take actions on incidents from Slack. **Additionally, your Slack user Email and Squadcast user Email must be the exact same**.

- #### You are not a part of this Organization on Squadcast. Please contact your Admin.
This error message simply means that you are a user of Squadcast for an Organization that is **not the same** as the one that the incident in Slack is for. One needs to be added as a user of all those Squadcast Organizations in order to take actions on incidents of those particular Organizations. Please contact an Admin of your Organization and have them add you as a user of the right Squadcast Organization.

- #### You are a part of this Organization as a Stakeholder. You cannot take actions on incidents. Please contact your Admin to upgrade your role.
Stakeholders in Squadcast have read-only access to the platform. As a `Stakeholder`, one will not be able to take any actions on the incidents. To be able to take actions on incidents, you must be added as a `User` or an `Admin`. Please contact an Admin of your Organization and have your User Type changed from Stakeholder to `User` or `Admin`.