---
title: Adding a Service
tags: [service]
keywords:
last_updated: 
summary: "Service - The core components of your infrastructure from which alerts are generated"
series:
weight:
sidebar: mydoc_sidebar
permalink: docs/adding-a-service-1.html
folder: mydoc
---

Services can refer to specific systems, applications, or tools that generate alerts. You will be able to quickly communicate with all concerned users whenever a service is impacted by an incident.

<div markdown="span" class="alert alert-info" role="alert">
    <i class="fa fa-info-circle"></i> 
    <b>Note:</b> 
    <br/><br/>You need to have at least one escalation policy before you can add a Service.
    <br/><br/>
    The escalation policy that you assign to a service is its default escalation policy. If routing rules are configured for this service, it can override the default policy and will escalate based on the configured rules.
</div>

![](images/adding_a_service_1.png)

You can create a service under **Services (Sidebar) → Add Service**.

Give your service a name and a description. 

Then search for and assign the relevant escalation policy to the service.

<div markdown="span" class="alert alert-warning" role="alert">
    <i class="fa fa-info-circle"></i> 
    <b>Optional:</b> 
    <br/><br/>You can choose to add an email address prefix to the service for it to function as an alternative alert source for the particular service. 
    <br/><br/>
    If you leave it blank, Squadcast will automatically fill in the prefix-key which you can use.
</div>

![](images/adding_a_service_2.png)

Once you have created a service, you can send alerts for this service from multiple sources.

## Adding Multiple Alert Sources for one Service

To get trigger endpoints of different alert sources for a given service, click on the **Alert Sources** button of the service as shown below.

![](images/adding_a_service_3.png)

Select the type of **Alert Source** from the dropdown and you'll get the corresponding triggering endpoint as well as a link to documentation on how to setup that alert source.

<div markdown="span" class="alert alert-info" role="alert">
    <i class="fa fa-info-circle"></i> 
    <b>Note:</b> 
    <br/><br/>The dropdown has all the available active endpoints that can be used to send in alerts into Squadcast.
    <br/><br/>
    The details of the alert source can be accessed in the Incident Dashboard and Incident Details pages.
</div>

![](images/adding_a_service_4.png)

So, now when the incident comes for a service via a given alert source, you can see the **Service** in the **Impact On** column and **Alert Source** in **Via** column, in incident listing page:

![](images/adding_a_service_5.png)

and on the incident details page: 

![](images/adding_a_service_6.png)

## Pro Tip

<div markdown="span" class="alert alert-success" role="alert">
    <i class="fa fa-check-square-o"></i> 
    <b>Pro Tip:</b> 
    <br/><br/>We are currently working on improving the UI to show you the list of integrated alert sources for each service.
</div>

We recommend adding the names of the integrated alert sources under the Service Description so as to keep a note of all the end-points. 

![](images/adding_a_service_7.png)