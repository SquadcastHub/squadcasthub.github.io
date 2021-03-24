---
title: Incident Rate Limiting
tags: [rate limiting]
keywords: 
last_updated: 
summary: "How do I avoid hitting the incident rate limits?"
sidebar: mydoc_sidebar
permalink: docs/incident-rate-limiting
folder: mydoc
---

Squadcast has the following incident rate limits in place. This limit is calculated over a 1 minute rolling window from the current time. 

| Pricing Plans      | Rate Limits (incidents/min)   |
|:------------------:|:-----------------------------:|
| Essential (Free)   |                          15   |
| Pro                |                          30   |
| Enterprise         |                          50   |


When you exceed rate limits, our system throttles some of your requests for a few reasons: 

- To not overwhelm the system and provide a fair service for all the accounts on Squadcast in terms of resource consumption
- To ensure that there is no violation of the platform
- To not bombard the user with notifications for irrelevant or unnecessary incidents
- To ensure that only meaningful and actionable alerts are sent into Squadcast

## What kind of events do the rate limits include?


{{site.data.alerts.blue-note-md}}
  **Incident Rate Limit Calculation**

  All events created in the system, including **[Suppressed](alert-suppression)** Incidents & **[Duplicates](de-duplication-rules)** events will be counted for the Rate Limits Calculation.

{{site.data.alerts.end}}

## How can I ensure that I don't exceed the Rate Limit?

There are a few ways to control the kind of events/ incidents that come into Squadcast. This is also done to ensure that you reduce alert fatigue and send in actionable incidents only.
 
- Configure your third party tools to send in only the alerts that you will need to take action on as opposed to sending in all the alerts that come in. For example, you don’t need all of the warning alerts and will probably need just the ones that impact customer SLAs or your internally set SLOs.
- Using the **[Discard](alert-suppression#discarding-suppressed-incidents)** function to avoid hitting the **[Incident Rate Limits](incident-rate-limiting)** as Suppressed events that are discarded don’t get counted against the allowed rate limits.
