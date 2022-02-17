---
title: Jira Cloud
tags: [integration, jira cloud]
keywords: 
last_updated: 
summary: "Create tickets in Jira with the incidents from Squadcast and sync status bidirectionally"
sidebar: mydoc_sidebar
permalink: docs/jira-cloud
folder: mydoc
---

You can use this integration guide to install and configure the Squadcast extension in Jira Cloud to *create issues in Jira projects* when there is an incident in Squadcast either *Automatically* or *Manually* and *sync the status bidirectionally*.

## Pre-requisites

- A valid Squadcast cloud subscription or a trial account (in either the Pro or Enterprise [plans](https://squadcast.com/pricing))

- A user account in Jira Cloud version with `Administrator` privileges

- Only the Account Owner and Users with the `Manage Extensions` permission will be able to enable, disable and manage Extensions in Squadcast

## Configuring the Extension

### In Jira Cloud: Installing Squadcast App

**(1)** Login to your Jira Cloud account and install [Squadcast Jira Cloud plugin](https://marketplace.atlassian.com/apps/1221041/squadcast-for-jira-cloud?hosting=cloud&tab=overview) by clicking on **Get it now**

![](images/jira_cloud_squadcast_1.png)

**(2)** Click on **Configure** once the app has been installed

![](images/jira_cloud_squadcast_12.png)

**(3)** Copy the `Jira Client Token` that is available in *Step 2* of the *Configuration page*

![](images/jira_cloud_squadcast_13.png)

### In Squadcast: Configuring Jira Cloud Extension

This would be the global configuration for the Jira Cloud extension. After configuring the same, you can map a particular Jira Cloud project to one or more Squadcast Services by following the steps [here]().

**(1)** In Squadcast, navigate to **Settings** and select the **Extensions** tab from the left navigation sidebar
 
**(2)** Move over to the Jira Cloud extension and click on **Integrate** 

![](images/jira_cloud_squadcast_2.png)

**(3)** Paste the previously copied `Jira Client Token` and click on **Save & Next**

![](images/jira_cloud_squadcast_3.png)

**(4)** Select the `Jira Project` in which tickets need to be created, select the `Issue Type` and click **Next**

![](images/jira_cloud_squadcast_4.png)

**(5)** Then, map the `Jira Issue Status` to the available *Squadcast incident statuses* and click **Next**

![](images/jira_cloud_squadcast_5.png)

**(6)** Select the **Mode** in which you want to add tickets to Jira for incidents in Squadcast: **Manually** or **Automatically** and then, select the *Service(s)*, for whose incidents Jira tickets must be created by Squadcast and click on  **Save & Integrate**

![](images/jira_cloud_squadcast_6.png)

That's it! Your Jira Cloud integration is good to go. 

## Usage of the Automatic and Manual Modes

### Automatic mode

If you have chosen the **Automatic mode** while configuring Jira cloud then you need not do anything. Any incident triggered for the selected Service(s) will automatically *create an issue* in the *selected Jira Project* with the *configured Issue Type*.

### Manual mode

If **Manual Mode** is chosen, follow the below steps to create a ticket in Jira:

**(1)** Open the incident in Squadcast and click on **More Actions** button in the **Incident Details** page

![](images/jira_cloud_squadcast_7.png)

**(2)** Select **Jira Cloud** action and click on **Create a ticket in Jira**

![](images/jira_cloud_squadcast_8.png)

![](images/jira_cloud_squadcast_9.png)

A ticket will be created in the *selected Jira Project* with the *configured Issue Type*. This action will be recorded in the *Incident Timeline with a hyperlink to the created Jira ticket*.

![](images/jira_cloud_squadcast_10.png)

![](images/jira_cloud_squadcast_11.png)

## Configuring a Jira Project for each Squadcast Service

If you would like for tickets to be created for incidents of each Service in a different Jira Project, you can configure so within the Services page.

**(1)** For a Service, click the **More** options

![](images/jira_cloud_squadcast_14.png)

**(2)** Select **Jira Cloud Project**

![](images/jira_cloud_squadcast_15.png)

**(3)** Here, map the *Jira Project* of your choice and select the required *Type*

![](images/jira_cloud_squadcast_16.png)

**(4)** Next, you can choose to either create tickets **Manually** or **Automatically** for the Service in the previously selected Project. Additionally, you can map the available Project **Status** to the incident states in Squadcast - `Triggered`, `Acknowledged`, `Resolved`. Then, click **Save**

![](images/jira_cloud_squadcast_17.png)

If you configure a Jira Cloud Project for a Service, this setting will override the previously configured Jira Cloud Extensions settings (the global configuration in Settings > Extensions > Jira Cloud).

