---
title: MS Teams
tags: [integration, msteams]
keywords:
last_updated:
summary: "Acknowledge, Resolve & Reassign incidents from MS Teams"
sidebar: mydoc_sidebar
permalink: docs/msteams
folder: mydoc
---

We understand that most of your work happens over MS Teams. You can integrate Squadcast and Slack to collaborate efficiently with your team while working on incidents. Here's a brief of all that is possible.

## Prerequisites

- Only the Account Owner and Users with the `Manage Extensions` permission will be able to enable, disable and manage Extensions in Squadcast
- Only MS Teams Admin can add squadcast msteams app in their workspace

## MS Teams Notifications for Incidents

Squadcast sends a notification to the configured MS Teams Channel as soon as an incident is triggered. You can easily **Acknowledge**, **Resolve** and **Reassign** the populated incidents from within the Slack Channel itself.

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/><p>The <b>email address</b> used with your <b>user in MS Teams</b> and your <b>user in Squadcast</b> should be the same, if not, the integration will not work as expected.</p>
{{site.data.alerts.end}}

### Follow the steps below to integrate Squadcast and MS Teams.

**(1)** For adding MS Teams Squadcast App you have two options.

### Option 1 by using custom app.

**(1.1)** Download MS Teams App bundle by clicking on this link [MS Teams App Bundle]().

**(1.2)** Open MS Teams app drawer.

![](images/teams_app.png)

**(1.3)** Click on Upload Customised App, and upload Downloaded App bundle by clicking on Upload for my Org.

![](images/msteams_custom_app.png)

**(1.4)** Once successfully uploaded you will see Squadcast MS Teams app in Built for your org.

**(1.5)** Click on App card to open App configuration modal, Click on "Add" button to add app.

![](images/msteams_app_modal.png)

**(1.6)** Once successfully added you will recieve an authorise message, click on "Authorize" button to initiate authorisation flow

![](images/msteams_authorise_message.png)

**(1.7)** Clicking on it will redirect you to extension page on dashboard, indicating successfull integration of MS Teams and Squadcast.

![](images/msteam_successfull_integration.png)

### Adding Channels for MS Teams integration.

**(1)** By default only bot converstaion will appear as default channel in the integration.

**(2)** To add more channels go to MS Teams app drawer and open Squadcast app modal, and click on dropdown next to "Open" button to open configuration options and click on "Add to a team".

![](images/msteams_app_add_to_team.png)

**(3)** Select a team and channel to add MS Teams app to a team and click on Setup Bot

![](images/msteams_select_channel.png)

![](images/msteams_setup_bot.png)

**(4)** Once successfully added MS Teams team will appear in Squadcast MS Teams extension configuration.

{{site.data.alerts.blue-note}}
<b>List of channels appearing in default channel</b>
<br/><br/>

<p>Once Squadcast App is added to some team in MS Teams then all the channels for that team will appear in "DEFAULT MS TEAM NOTIFICATION CHANNEL", to add more teams to Squadcast refer <b>Step 2</b> </p>
{{site.data.alerts.end}}

![](images/msteams_team_channel.png)

## Updating the global MS Teams Channel for all Services in Squadcast

**(1)** Click on **DEFAULT MS TEAM NOTIFICATION CHANNEL Dropdown**

**(2)** Select the new MS Teams Channel that would be the default Slack Channel for all your Squadcast Services

![](images/msteams_team_channel.png)

**(3)** Click on **Save**

![](images/msteams_team_save.png)

Now, you will start receiving alert notifications for _all_ Squadcast incidents in the configured MS Teams Channel, in this case, the `internal-testing-Production-alerts` Channel. You can then choose to **Acknowledge**, **Resolve** and **Reassign** these incidents from within the Channel, in this case, the `internal-testing-Production-alerts` Channel.

{{site.data.alerts.blue-note-md}}
**This integration supports bi-directional status sync**

When an incident is _acknowledged_, _resolved_ or _reassigned_ from MS Teams, the status change of the incident is propagated to Squadcast and updated automatically. Similarly, if an incident is _acknowledged_, _resolved_ or _reassigned_ in Squadcast, you will be notified in the configured MS Teams Channel for it.

**Note**: If an incident is auto-resolved by the alert-source, then the notification indicates the same.

{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: Global MS Teams Channel = default MS Teams Channel for all Services</b>
<br/><br/><p>By default, the configured global MS Teams Channel is applicable to every Service in Squadcast. This means, all the alerts coming for every Service in Squadcast will be routed to the default MS Teams Channel configured</p>
{{site.data.alerts.end}}

## Configuring Service Specific MS Teams Channels

Additionally, you can associate one MS Teams Channel per Service so as to receive notifications for incidents affecting only that Service in this MS Teams Channel.

Follow the steps below to configure the same:

**(1)** Click on checkbox to activate `TEAM/SERVICE SPECIFIC CHANNEL`

![](images/msteams_teams_service_specific.png)

**(2)** Click on the team name to open team configuration option.

![](images/msteam_team_config.png)

**(3)** Select **Squadcast Team**.

![](images/msteams_select_sq_team.png)

**(4)** All the services part of that Squadcast Team will appear in next Services dropdown select service.

**(5)** Select a channel in opened Teams so for example in all the channels in `internal-testing` team is shown and we can select a channel to create a Squadcast(Team, service) to MS Teams Channel mapping.

![](images/msteams_select_team_channels.png)

**(6)** Click on "Save" to save configuration.

## Capablites of MS Teams App

- You can `Acknowledge`,`Resolve` and `Reassign` Incidents from App itself by clicking on corresponding CTAs, in addition to this you can also add notes to the incidents, which will directly reflect on Squadcast dashboard.

![](images/msteams_message.png)

- Once App is added as a bot in specific MS Teams channel, you can run bot command `whos-on-call` to view oncall schedule for all the Teams created on Squadcast platform.

![](images/msteams_sq_command.png)
