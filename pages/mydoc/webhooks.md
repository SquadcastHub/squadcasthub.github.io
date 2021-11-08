---
title: Webhooks
tags:
keywords:
last_updated:
summary: "Receive alerts from squadcast in your service"
sidebar: mydoc_sidebar
permalink: docs/webhooks
folder: mydoc
---

## Prerequisites

- Only the Account Owner and Users with the `Manage Webhook` permission will be able to enable, disable and manage webhooks in Squadcast

## Creating webhooks

Go to **Settings > Webhooks**

**(1)** Click on the + icon

![](images/webhooks_1.png)

**(2)** Enter a suitable name and click on create

![](images/webhooks_2.png)

## Events

We now support Incident events as Triggers, Acknowledge, Resolved, Reassigned

![](images/webhooks_3.png)

You can choose to filter out the webhook based on the incident status, a new event is sent for the provided URLs if any of the filter matches

## URLs and headers

We support multiple URLs, with POST, PUT and PATCH methods, any alert generated will be sent to all the URLs, you can also configure additional headers, this applies for all the outbound 

![](images/webhooks_4.png)

## Filters

You can filter events from services and alert sources, either by individual expression or a combination of expression and expression groups

![](images/webhooks_5.png)

## Logs

Once the webhook has been sent, you can view the logs in the **Logs** tab, 

![](images/webhooks_6.png)

Click on the expand icon on any logs to view the payload 

![](images/webhooks_7.png)

## Settings

Configure name description and Failure notification email in the settings tab

![](images/webhooks_8.png)