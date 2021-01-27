---
title: Adding a Service
tags: [service]
keywords:
last_updated: 
summary: "Service - The core components of your infrastructure from which alerts are generated"
series:
weight:
sidebar: mydoc_sidebar
permalink: docs/adding-a-service-1
folder: mydoc
---

Services represent specific systems, applications, components, products, or teams for which an incident is created. 

## Create a Service

### Prerequisite
You need to have at least one [Escalation Policy](escalation-policies) before you can add a Service.

**(1)** Click on **Services** 

**(2)** Click on **Add Service**

![](images/adding_a_service_1.png)

**(3)** Add the following information:
- Service Name - Corresponds to the name of your business service
- Service Description (optional) - Service Description
- Escalation Policy - The Escalation Policy that you assign to a service will be its default Escalation Policy.
- Email Prefix (optional) - You can choose to add an [email address prefix](email) to the Service for it to function as an alternative alert source for that Service. If you leave it blank, Squadcast will automatically fill in the prefix-key which you can use.
- [Status Based Deduplication](de-duplication-rules#status-based-deduplication) (optional) can be enabled by checking the box with the information message and choosing the appropriate time window for which you'd like this deduplication rule to hold true.

**(4)** Click on **Save**

**(5)** That’s it! The service has been created.

![](images/adding_a_service_2.png)

## Delete a Service

**(1)** Move over to the service that you wish to delete. Click on the `More Options` icon and select `Delete` from the dropdown

![](images/adding_a_service_3.png)

**(2)** You will then see a confirmation pop-up and you can click on `Delete` to delete the service forever.

![](images/adding_a_service_4.png)

### Unable to delete Service and an error message is thrown

In cases where there are open (Triggered / Acknowledged) incidents for a service, the system will not allow you to delete the service without resolving these incidents. 

You will be able to see a similar error message in cases like these. 

![](images/deleting_service_4.png)

You will have to resolve all the open incidents and then follow the same process stated above to delete the service. 

To resolve multiple incidents at one shot, check out the [Take Bulk Actions](take-bulk-actions) documentation.

## Alert Sources (Integrations)

A single service can receive alerts from multiple sources 

### Adding Multiple Alert Sources for one Service

**(1)** Click on **Alert Sources** for a **Service**

![](images/adding_a_service_5.png)

**(2)** Follow the steps below to integrate with an alert source:

(a) Select the type of Alert Source from the dropdown that lists our native integrations

(b) Copy the end point 

(c) Click on integration guide to set integrate with the alert source

![](images/adding_a_service_6.png)

So, now when the incident comes for a Service via a given Alert Source, you can see the **Service** in the **Impact On** column and **Alert Source** in **Via** column, in the Incident Dashboard:

![](images/adding_a_service_7.png)

and on the Incident Details page: 

![](images/adding_a_service_8.png)

Similarly, on the Incident List page, for every incoming incident, the Service affected is listed under **Service** and the Alert Source is listed under **Alert source**.

![](images/adding_a_service_9.png)

{{site.data.alerts.green-note-check}}
<b>Pro Tip</b>
<br/><br/><p>We are currently working on improving the UI to show you the list of integrated Alert Sources for each Service.</p>
{{site.data.alerts.end}}

We recommend adding the names of the integrated Alert Sources under the Service description so as to easily keep a note of all the configured end-points.  

![](images/adding_a_service_10.png)