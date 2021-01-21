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

Squadcast limits the number of requests a client can make within a certain period of time. 

This Rate Limiting is done for a few reasons: 
1. To not overwhelm the system and provide a fairness for all the accounts on Squadcast in terms of resource consumption
2. To ensure that there is no violation of the platform 
3. To not bombard the user with irrelevant or unnecessary incidents 
4. To ensure that only meaningful and actionable alerts are sent into Squadcast

If a request exceeds the defined Rate Limits, the system will stop accepting new requests. Which means, after exceeding the limit, you will not receive any more incidents for that time period. 

You will start receiving incidents again post this time period.  

## Rate Limits Calculation and How it Works

Squadcast considers a time period of **1 minute** during which a maximum of only 15 incidents are allowed into the system. 

When ever a new incident is created, before creating an incident Squadcast checks if the count of incidents in the last 1 minute has exceeded the incoming incident limit or not. 

- If `Not`: Squadcast creates an incident
- If `Yes`: Squadcast does not create an incident and hence, you will not see any incidents come in for that period of time. 

Also, the system will freeze for next 15 minutes, and disregard any incoming alerts, this not allowing any new incidents to be created during this period. 

Post this freeze period of 15 minutes, Squadcast will again process incoming events from all alert sources and allow new incidents to be created. The Rate Limits will again be in effect, and considered from the time of unfreeze. 

## How can I ensure that I don't exceed the Rate Limit?

There are a few ways to control the kind of alerts/ incidents that come into Squadcast. This is also done to ensure that you reduce alert fatigue and send in actionable incidents only. 

- Configure your third party tools to send in only the alerts that you will need to take action on as opposed to sending in all the alerts that come in. For example, you don't need all of the warning alerts and will probably need just the ones that impact customer SLAs or your internally set SLOs. 

- Set [**De-duplication Rules**](de-duplication-rules) to automatically suppress similar alerts. Especially useful to suppress warning alerts from your tool, should you want to send all kinds of alerts into Squadcast just for information. 

## How to increase my Rate Limits? 

If you have done everything to reduce the number of meaningful alerts coming into Squadcast but still see that this exceeds our Rate Limits, then you can reach out to our **[Support](mailto:support@squadcast.com)** and we can help by increasing the Rate Limits for your organization.