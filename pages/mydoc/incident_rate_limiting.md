---
title: Incident Rate Limiting
tags: [rate limiting]
keywords: 
last_updated: 
summary: "Limit the number of requests a client can make"
sidebar: mydoc_sidebar
permalink: docs/incident-rate-limiting
folder: mydoc
---

Squadcast limits the number of Incidents a client can create within a certain period of time. 

This Rate Limiting is done for a few reasons: 
1. To not overwhelm the system and provide a fairness for all the accounts on Squadcast in terms of resource consumption
2. To ensure that there is no violation of the platform 
3. To not bombard the user with irrelevant or unnecessary incidents 
4. To ensure that only meaningful and actionable alerts are sent into Squadcast

For calculating rate limits, all incidents including [Suppressed](alert-suppression) incidents and [Duplicates](de-duplication-rules) will be counted.

## How can I ensure that I don't exceed the Rate Limit?

There are a few ways to control the kind of alerts/ incidents that come into Squadcast. This is also done to ensure that you reduce alert fatigue and send in actionable incidents only. 

Configure your third party tools to send in only the alerts that you will need to take action on as opposed to sending in all the alerts that come in. For example, you don't need all of the warning alerts and will probably need just the ones that impact customer SLAs or your internally set SLOs.