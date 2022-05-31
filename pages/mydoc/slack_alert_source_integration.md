---
title: Slack
tags: [integration, slack]
keywords: 
last_updated: 
summary: Create incidents in Squadcast from Slack
sidebar: mydoc_sidebar
permalink: docs/slack-as-an-alert-source
folder: mydoc
---

## Integrate with Slack

First, configure the [Slack Extension](https://support.squadcast.com/docs/slack) for your Squadcast Organization. Once this is done, you will be able to create incidents directly from Slack and view them on Squadcast.

## Create Incidents from Slack

In the Slack channel from which you want to create an incident in Squadcast, perform the following steps: 

**(1)** Invoke the *Squadcast Bot* by calling out `@squadcast`

![](images/slack_1.png)

**(2)** Once the bot is added, you will be able to take actions with respect to incidents directly from Slack

### Using Slash Command in Slack

{{site.data.alerts.blue-note-md}}
**Help Command**

You can call out `/create_incident help` to walk you through the process within your Slack channel to guide you through the process.

![](images/slack_2.png)
{{site.data.alerts.end}}

The command that is used to create an incident from Slack is:

`/create_incident <Incident Message Text>`

{{site.data.alerts.note-md}}
**Note**

You can call the `/create_incident` or `/create_incident <Incident Message Text>` command to create an incident from Slack.
{{site.data.alerts.end}}

![](images/slack_3.png)

This will then prompt a UI pop-up where you can fill in additional information such as:
- Impacted **Service**
- **Incident Message**
- **Incident Description**

![](images/slack_4.png)

This newly created incident will now show up immediately in the Slack channel and in Squadcast as well. In Squadcast, you can navigate to either [Incident Dashboard](https://support.squadcast.com/docs/incident-dashboard) or [Incident List](https://support.squadcast.com/docs/incident-list-table-view) to view the newly triggered incident.

![](images/slack_create_incident_success_2.png)

### Using Message Actions in Slack

You can also choose to create an incident from an existing message in the Slack channel.

**(1)** Click on the **More Actions** icon for the chosen message

![](images/slack_6.png)

**(2)** Choose the **Create Incident** option from the dropdown shown

![](images/slack_7.png)

**(3)** In the UI pop-up, fill in all the relevant information needed to create the incident

![](images/slack_8.png)

The incident has now been created successfully.

![](images/slack_message_action_create_incident_success.png)


{{site.data.alerts.note-md}}
**Important**

The **Squadcast Bot must be called into the channel** where you will want to take any of the above actions to create an incident.
{{site.data.alerts.end}}

## Creating Slack Channel for Incidents

To create a Slack Channel for an Incident,

**(1)** Navigate to the Incident Details page, and click on the **+** icon or **+ Add Link** button
 
![](images/slackchannel_1.png)

**(2)** Click on the **Create Slack Channel** option from the menu

![](images/slackchannel_2.png)
 
**(3)** Type in the **Channel Name** for your Incident and click **Save**

![](images/slackchannel_3.png)
 
This will generate a dedicated Slack Channel for your Incident.

{{site.data.alerts.yellow-note-i-md}}
**Note**
<br>
All notifications of this specific incident like, Acknowledged, Re-assigned, Resolved will be sent to this channel in addition to the regular channel (if configured).
 
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i-md}}
**Note**
<br>
Once the Incident is resolved, you can archive the Slack Channel using the **Archive** button on the right. 
 
![](images/slackchannel_4.png)
 
{{site.data.alerts.end}}

### How to Video

<script src="https://fast.wistia.com/embed/medias/7tpv6ktcns.jsonp" async></script><script src="https://fast.wistia.com/assets/external/E-v1.js" async></script><div class="wistia_responsive_padding" style="padding:58.13% 0 0 0;position:relative;"><div class="wistia_responsive_wrapper" style="height:100%;left:0;position:absolute;top:0;width:100%;"><span class="wistia_embed wistia_async_7tpv6ktcns popover=true popoverAnimateThumbnail=true videoFoam=true" style="display:inline-block;height:100%;position:relative;width:100%">&nbsp;</span></div></div>