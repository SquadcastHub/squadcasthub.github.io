---
title: Service Dependency Based Deduplication
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Deduplicate incoming events for a service against the latest incident of its service dependencies"
sidebar: mydoc_sidebar
permalink: docs/service-dependency-based-deduplication
folder: mydoc
---

Service Dependency Based Deduplication works on the logic that the incidents coming in for a service and its dependencies have a related cause. 

## Adding a Service Dependency 

Adding Dependent services helps the system understand the relationship between your actual systems. 

You can add a dependency for your Service by: 
- Move over to the **Service** tab from the left side navigation panel 
- Click on the `More Option` icon and choose `Dependencies` 

![](images/service-dependancy-based-deduplication_1.png)

- Search and add dependency services from your Squadcast Organization.

![](images/service-dependancy-based-deduplication_2.png)

In this example above, we have marked the `Backend Prometheus Service` and `Translations` services as a dependencies of the `Payment Portal` service. 

This means that the  `Payment Portal` service is dependent on `Backend Prometheus Service` and `Translations`

## Enabling Service Dependency Based Deduplication

Once you've added the Service dependencies, you can set a Service Dependency based deduplication rule which would deduplicate all incoming events for the chosen service against the latest incident of its service dependencies.

To enable this: 

- Move over to the `Deduplication` option from the `More Options` icon for the chosen service. 
- You will see a checkbox with the message as shown in the image below. This checkbox will be disabled by default. 
- To enable Service Dependency based deduplication, you can check this and this will hold true for that particular rule. 

![](images/service-dependancy-based-deduplication_3.png)

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><br/><p>1. The Service Dependency based deduplication will deduplicate any incoming event against either a Triggered, Acknowledged or a Suppressed Incident. 
<br/><br/>
2. Service Dependency based deduplication is rule-specific and can be enabled for any number of rules for the service.</p>
{{site.data.alerts.end}}

##  Enabling Service Dependency Based Deduplication for a Specific Dependency 

In cases where you would like the system to consider just one of the many dependencies for a service, you can follow the method below. 

Along with enabling  the Service Dependency checkbox as shown above, you will need to add the below condition to the rule. 

`past_incident.service == <slug_of_the_particular_dependency_service>`

The slug of a service is displayed on the Service card as shown below. 

![](images/service-dependancy-based-deduplication_4.png)