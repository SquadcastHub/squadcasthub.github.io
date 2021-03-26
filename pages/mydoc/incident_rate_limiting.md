---
title: Incident Rate Limiting
tags: [rate limiting]
keywords: 
last_updated: 
summary: "How do I avoid hitting the incident rate limits?"
sidebar: mydoc_sidebar
permalink: docs/incident-rate-limiting
folder: mydoc
published: false
---

Squadcast has the following Incident Rate Limits in place. This limit is calculated over a **1 minute rolling window from the current time**. 

| Pricing Plans      | Rate Limits (incidents/min)   |
|:------------------:|:-----------------------------:|
| Essential (Free)   |                          15   |
| Pro                |                          30   |
| Enterprise         |                          50   |


When Incident Rate limits are exceeded, our system throttles your alert requests for reasons listed below:

- To not overwhelm the system and provide a fair service for all the accounts on Squadcast in terms of resource consumption
- To ensure that there is no violation of the platform
- To not bombard the user with notifications for irrelevant or unnecessary incidents
- To ensure that only meaningful and actionable alerts are sent into Squadcast

## What kind of events do the Incident Rate Limits include?


{{site.data.alerts.blue-note-md}}
  **Incident Rate Limits Calculation**

  All events in the platform, including **[Suppressed](alert-suppression)** incidents & **[Duplicate](de-duplication-rules)** events will be counted towards the Incident Rate Limits Calculation.

{{site.data.alerts.end}}

## How can I ensure that I don't exceed the Incident Rate Limits?

There are a few ways to control the kind of events that come into Squadcast. This is also done to ensure that you reduce alert fatigue and and send in actionable events only.
 
- Configure your third party tools to send in only the alerts that you will need to take action on as opposed to sending in every single alert. For example, you don’t need all of the warning alerts and will probably need just the ones that impact customer SLAs or your internal SLOs.
- Using the **[Discard](alert-suppression#discarding-suppressed-incidents)** function to avoid hitting the **[Incident Rate Limits](incident-rate-limiting)** as Suppressed events that are discarded don’t get counted against the allowed Incident Rate Limits.
