---
title: Rollbar
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Get alerts from Rollbar into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/rollbar
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from [Rollbar](https://docs.rollbar.com/docs/getting-started) onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Rollbar as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding Alert Sources button.

![](images/rollbar_0.png)

**(2)** Select Rollbar from the Alert Source drop-down and copy the **Rollbar Webhook URL** shown.

![](images/rollbar_1.png)

## Create a Squadcast Webhook in Rollbar

**(1)** Navigate to the project you want to configure, then click Settings → Notifications → Webhook
 
**(2)** Paste the webhook URL you copied from Squadcast. Click `Save Settings`.

![](images/rollbar_2.png)

**(3)** Under **Add Rule** select the rules you want to configure for creating incidents in Squadcast.

You can select `New Item`,`Item Reopened`,`Item Reactivated` and `10^nth Occurence` for creating incidents in Squadcast and select `Item Resolved` for auto resolving incidents in Squadcast.

![](images/rollbar_3.png)

Your Rollbar Alert Source integration is good to go. Whenever an alert is triggered in Rollbar, an incident will be triggered in Squadcast as well.

Squadcast will **Auto-Resolve** the incident, if the alerts get resolved in Rollbar and doesn't require any manual intervention from the user.