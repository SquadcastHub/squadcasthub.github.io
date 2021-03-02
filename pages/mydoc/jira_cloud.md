---
title: Jira Cloud
tags: [integration, jira cloud]
keywords: 
last_updated: 
summary: "Create tickets in JIRA with the incidents from Squadcast and sync status bidirectionally"
sidebar: mydoc_sidebar
permalink: docs/jira-cloud
folder: mydoc
---

You can use this integration guide to install and configure the Squadcast extension in JIRA Cloud to *create issues in JIRA projects* when there is an incident in Squadcast either *Automatically* or *Manually* and *sync the status bidirectionally*.

## Pre-requisites

1. A valid Squadcast cloud subscription or a trial account (in either the Pro or Enterprise plans)

2. A user account in JIRA Cloud version with `Administrator` privileges

## Integration Steps

**(1)** Login to your Jira Cloud account and install [Squadcast Jira Cloud plugin](https://marketplace.atlassian.com/apps/1221041/squadcast-for-jira-cloud?hosting=cloud&tab=overview) by clicking on **Get it now**

![](images/jira_cloud_squadcast_1.png)

**(2)** Click on **Configure** once the app has been installed

![](images/jira_cloud_squadcast_12.png)

**(3)** Copy the `JIRA Client Token` that is available in *Step 2* of the *Configuration page*

![](images/jira_cloud_squadcast_13.png)

**(4)** Go back to Squadcast, navigate to **Extensions** from the sidebar and click on **Integrate** under Jira cloud

![](images/jira_cloud_squadcast_2.png)

**(5)** Paste the previously copied `Jira Client Token` and click on **Save & Next**

![](images/jira_cloud_squadcast_3.png)

**(6)** Select the `Jira Project` in which tickets need to be created, select the `Issue Type` and click **Next**

![](images/jira_cloud_squadcast_4.png)

**(7)** Then, map the `Jira Issue Status` to the available *Squadcast incident statuses* and click **Next**

![](images/jira_cloud_squadcast_5.png)

**(8)** Select the **Mode** in which you want to add tickets to Jira for incidents in Squadcast: **Manually** or **Automatically** and then, select the *Service(s)*, for whose incidents JIRA tickets must be created by Squadcast and click on  **Save & Integrate**

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