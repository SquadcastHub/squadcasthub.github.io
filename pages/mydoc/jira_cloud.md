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

You can use this extension guide to install and configure the Squadcast extension in JIRA Cloud to create issues in JIRA projects when there is an incident in Squadcast either Automatically or Manually and sync the status bidirectionally.

## Pre-requisites

1. A valid Squadcast cloud subscription or a trial account

2. A user account in JIRA Cloud version with Administrator privileges

## Integration Steps

**(1)** Login to your Jira cloud account and install <a href="https://marketplace.atlassian.com/apps/1221041/squadcast-for-jira-cloud?hosting=cloud&tab=overview">Squadcast Jira cloud plugin</a> and click on **Configure** button.

![](images/jira_cloud_squadcast_1.png)

**(2)** Copy the Jira API token from the configuration page.

**(3)** Go back to Squadcast **Extensions** page and click on **Integrate** button under Jira cloud.

![](images/jira_cloud_squadcast_2.png)

**(4)** Paste the Jira API token from the 2nd step and click on **Save & Next** button.

![](images/jira_cloud_squadcast_3.png)

**(5)** Select the Jira project in which tickets need to be created and select the issue type and click **Next**.

![](images/jira_cloud_squadcast_4.png)

**(6)** Then map the Jira ticket status to the available Squadcast statuses and click **Next**.

![](images/jira_cloud_squadcast_5.png)

**(7)** Then select the mode in which you want to add incident to Jira: **Manually** or **Automatically** and then select the service(s) for which you want to enable the Jira cloud integration and click on the **Save & Integrate** button.

![](images/jira_cloud_squadcast_6.png)

That's it! Your Jira cloud extension is good to go. 

## Usage of the Automatic and Manual Modes

### Automatic mode

If you have chosen the Automatic mode while configuring Jira cloud then you need not do anything. Any incident triggered for the selected service will automatically create an issue in the selected Jira project with the configured issue type.

### Manual mode

If the chosen mode is Manual, follow the below steps to create a ticket in Jira.

**(1)** Open the incident in Squadcast and click on **More Actions** button.

![](images/jira_cloud_squadcast_7.png)

**(2)** Select **Jira Cloud** action and click on **Create a ticket in Jira** button.

![](images/jira_cloud_squadcast_8.png)

![](images/jira_cloud_squadcast_9.png)

A ticket will be created in the selected Jira project with the configured issue type and this action will be recorded in the incident timeline with a hyperlink to the created Jira ticket.

![](images/jira_cloud_squadcast_10.png)

![](images/jira_cloud_squadcast_11.png)

Similarly, if there was an error in creating a ticket in Jira, it will be reflected in the Incident Timeline. 

![](images/jira_cloud_squadcast_12.png)

## How-to Video

<div class="wistia_responsive_padding" style="padding:56.25% 0 0 0;position:relative;"><div class="wistia_responsive_wrapper" style="height:100%;left:0;position:absolute;top:0;width:100%;"><iframe src="https://fast.wistia.net/embed/iframe/ldkmvj4z9e?videoFoam=true" title="JIRA Cloud Video" allow="autoplay; fullscreen" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen msallowfullscreen width="100%" height="100%"></iframe></div></div>
<script src="https://fast.wistia.net/assets/external/E-v1.js" async></script>