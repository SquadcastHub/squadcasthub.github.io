---
title: Microsoft Teams
tags: [integration, msteams]
keywords:
last_updated:
summary: "Acknowledge, Resolve & Reassign incidents from MS Teams"
sidebar: mydoc_sidebar
permalink: docs/msteams
folder: mydoc
---

We understand that most of your work happens over MS Teams. You can integrate Squadcast and MS Teams to collaborate efficiently with your team while working on incidents. Here's a brief of all that is possible.

## Prerequisites

- Only the Account Owner and Users with the `Manage Extensions` permission will be able to enable, disable and manage Extensions in Squadcast
- Only MS Teams Admins can add the Squadcast-MS Teams app in their workspace

## MS Teams Notifications for Incidents

Squadcast sends a notification to the configured MS Teams channel as soon as an incident is triggered. You can easily **Acknowledge**, **Resolve** and **Reassign** the populated incidents from within the MS Teams channel.

{{site.data.alerts.blue-note-md}}
**Note:**

The `email address` used with your *user in MS Teams* and your *user in Squadcast* should be the same, if not, the integration will not work as expected.
{{site.data.alerts.end}}

## Follow the steps below to integrate Squadcast and MS Teams for US Data Center

{{site.data.alerts.yellow-note-i-md}}
**Note:**

The user can install the Squadcast application from three locations:

**(1)** Installation from Microsoft AppSource.

**(2)** Installation directly from the Microsoft Teams client.

**(3)** Installation directly using the app URL [here](https://teams.microsoft.com/l/app/7792759a-43e8-4dc8-9f55-e7b0382c4a67?source=app-details-dialog).

Installation however, is dependent on your administrator's application installation policy.

Consult with your administrator and refer to the Microsoft Teams' [Application Poilcy](https://docs.microsoft.com/en-us/microsoftteams/teams-app-permission-policies) for more information.
{{site.data.alerts.end}}

### Install Squadcast from AppSource

**(1)** Go to the Microsoft AppSource site, select the **Apps** option in the Search drop down and enter **Squadcast** in the search field.

You can locate the Squadcast App [here](https://appsource.microsoft.com/en-us/product/office/WA200004390).

**(2)** Click on the **Get it now** button.

**(3)** Fill out the contact form accordingly, and proceed to app installation via the **Next** button. You will now be redirected to the Microsoft Teams client with the Squadcast app window open.

**(4)** Click on the Squadcast app tile.

**(5)** Click on the app card to open the app's configuration modal and then, click on **Add** to add the app

![](images/msteams_app_modal.png)

**(6)** Once successfully added, you will recieve an authorize message. Click on **Authorize** button to initiate the authorization flow

![](images/msteams_authorise_message.png)

**(7)** On doing so, you will be redirected to the **Extensions** page in Squadcast, indicating **successful integration of MS Teams and Squadcast**

![](images/msteam_successfull_integration.png)

### Install directly from the Microsoft Teams client

**(1)** Navigate to the app directory and search for Squadcast from within your Microsoft Teams client.

**(2)** Click on the Squadcast app tile.

**(3)** Click on the app card to open the app's configuration modal and then, click on **Add** to add the app

![](images/msteams_app_modal.png)

**(4)** Once successfully added, you will recieve an authorize message. Click on **Authorize** button to initiate the authorization flow

![](images/msteams_authorise_message.png)

**(5)** On doing so, you will be redirected to the **Extensions** page in Squadcast, indicating **successful integration of MS Teams and Squadcast**

![](images/msteam_successfull_integration.png)

### Install directly from Squadcast App URL

**(1)** Navigate to the App directly using the App URL [here](https://teams.microsoft.com/l/app/7792759a-43e8-4dc8-9f55-e7b0382c4a67?source=app-details-dialog). 

**(2)** Click on the app card to open the app's configuration modal and then, click on **Add** to add the app

![](images/msteams_app_modal.png)

**(3)** Once successfully added, you will recieve an authorize message. Click on **Authorize** button to initiate the authorization flow

![](images/msteams_authorise_message.png)

**(4)** On doing so, you will be redirected to the **Extensions** page in Squadcast, indicating **successful integration of MS Teams and Squadcast**

![](images/msteam_successfull_integration.png)

## Follow the steps below to integrate Squadcast and MS Teams for EU Data Center

**(1)** Download the MS Teams app bundle by clicking on one of this link.

MS Teams app bundle for the EU data center: <a href="https://github.com/SquadcastHub/extensions/blob/main/bundles/Squadcast-EU-1.6.0.zip?raw=true">download link</a>

**(2)** Navigate to the **Apps** section

![](images/teams_app.png)

**(3)** Click on **Upload a customised app**, and upload the previously downloaded app bundle by clicking on **Upload for my organization**

![](images/msteams_custom_app.png)

**(4)** Once successfully uploaded, you will see the Squadcast-MS Teams app in-built for your organization

**(5)** Click on the app card to open the app's configuration modal and then, click on **Add** to add the app

![](images/msteams_app_modal.png)

**(6)** Once successfully added, you will recieve an authorize message. Click on **Authorize** button to initiate the authorization flow

![](images/msteams_authorise_message.png)

**(7)** On doing so, you will be redirected to the **Extensions** page in Squadcast, indicating **successful integration of MS Teams and Squadcast**

![](images/msteam_successfull_integration.png)

## Adding MS Teams Channels

**(1)** By default, only the bot conversation will appear in the default channel

**(2)** To add more channels, navigate to the Squadcast app in MS Teams and click on the drop-down next to the **Open** button to open the configuration options. Click on **Add to a team**

![](images/msteams_app_add_to_team.png)

**(3)** Select the **team** and a **channel** to add this app and click on **Set up a bot**

![](images/msteams_select_channel.png)

![](images/msteams_setup_bot.png)

**(4)** Once successfully added, all of these will appear in Squadcast's MS Teams Extension configuration

![](images/msteams_team_channel.png)

{{site.data.alerts.blue-note-md}}
**List of channels appearing in default channel**

Once the Squadcast app is added to a team in MS Teams, all the channels for that team will appear in **DEFAULT MS TEAM NOTIFICATION CHANNEL**. To add more teams to Squadcast, refer to step 2 & onwards.
{{site.data.alerts.end}}

### Updating the Global MS Teams Channel for all Services in Squadcast

**(1)** Click on the **DEFAULT MS TEAM NOTIFICATION CHANNEL** drop-down

**(2)** Select the new MS Teams channel that would be the default channel for all your Squadcast Services

![](images/msteams_team_channel.png)

**(3)** Click on **Save**

![](images/msteams_team_save.png)

Now, you will start receiving alert notifications for _all_ Squadcast incidents in the configured MS Teams channel, in this case, the `internal-testing-Production-alerts` channel. You can then choose to **Acknowledge**, **Resolve** and **Reassign** these incidents from within the channel, in this case, the `internal-testing-Production-alerts` channel.

{{site.data.alerts.blue-note-md}}
**This integration supports bi-directional status sync**

When an incident is acknowledged, resolved or reassigned from MS Teams, the status change of the incident is propagated to Squadcast and updated automatically. Similarly, if an incident is acknowledged, resolved or reassigned in Squadcast, you will be notified in the configured MS Teams channel for it.

**Note**: If an incident is auto-resolved by the alert source (monitoring tool), then the notification will indicate the same.
{{site.data.alerts.end}}

{{site.data.alerts.blue-note-md}}
**Note:** 

Global MS Teams channel = default MS Teams channel for all Services

By default, the configured global MS Teams channel is applicable to every Service in Squadcast. This means, all the alerts coming for every Service in Squadcast will be routed to the default MS Teams channel configured.
{{site.data.alerts.end}}

### Configuring Service Specific MS Teams Channels

Additionally, you can associate one MS Teams channel per Squadcast Service so as to receive notifications for incidents affecting only that Service in this MS Teams channel.

Follow the steps below to configure the same:

**(1)** Enable the checkbox to activate `TEAM/SERVICE SPECIFIC CHANNEL`

![](images/msteams_teams_service_specific.png)

**(2)** Select the Team to open the Team configuration option

![](images/msteam_team_config.png)

**(3)** Select the Squadcast **Team** here

![](images/msteams_select_sq_team.png)

**(4)** All the Services that are a part of that Squadcast Team will appear in next Services drop-down, select the Service(s)

**(5)** Select a channel in opened Teams so for example in all the channels in `internal-testing` team is shown and we can select a channel to create a Squadcast(Team, service) to MS Teams Channel mapping

![](images/msteams_select_team_channels.png)

**(6)** Click on **Save** to save configuration

## Capabilities of MS Teams App

- You can `Acknowledge`,`Resolve` and `Reassign` incidents from within MS Teams itself by clicking on the corresponding CTAs. In addition to this, you can also add notes to the incidents which will directly reflect in the Incident Details page for the incident.

![](images/msteams_message.png)

- Once the app is added as a bot in a specific MS Teams channel, you can run the bot command `whos-on-call` to view the on-call schedules for all the Teams created in your Squadcast organization.

![](images/msteams_sq_command.png)

## Additional Information on Errors

Errors encountered when taking actions on incident:

![](images/msteams_unauthorized_error.png)

This error is either because you are not part a of the organization for which this incident is triggerd in Squadcast, or you are not authorised to take this action.

## FAQs

**(1)** What happens when I link multiple organizations with the same [tenant](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant)?

If you link multiple organizations with the same [tenant](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant), then the previous organization-tenant mapping will get deactivated.

**(2)** What does unlinking an account lead to?

Unlinking an account deactivates all the organizations for a given [tenant](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant).
