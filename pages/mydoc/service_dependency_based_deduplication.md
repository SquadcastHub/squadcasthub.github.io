---
title: Service Dependency Based De-duplication
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "De-duplicate incoming alerts for a Service against the latest open incident of its dependent Service(s)"
sidebar: mydoc_sidebar
permalink: docs/service-dependency-based-deduplication
folder: mydoc
---

Service Dependency Based De-duplication works on the logic that the incidents coming in for a Service and its dependencies have a related cause. 

It is most likely the case where, when one Service has an incident, its dependent Service(s) may also have incidents and hence, you will be notified for the incident only once. *This helps control unnecessary alert noise and notification fatigue during critical outages*.

Defining dependencies between Services also helps Squadcast understand the relationship between your actual systems. 

To understand this better, let us consider 3 Services: *Service A*, *Service B* and *Service C*. 

If *Service A* is `dependent on` *Service B* and *Service C*, then:

- **Dependent Service**: *Service A*
- **Dependency Service(s)**: *Service B*, *Service C*

Let's say, _Service B_ has an open incident at _time x_ and _Service C_ has an open incident at _time x+1_. Now, _Service A_ receives an incident. This incident for _Service A_ gets de-duplicated with the **latest** open incident of its depenedency Service(s) - i.e., with the open incident for _Service C_, in this case.

## Adding a Service Dependency 

**(1)** Navigate to **Services** from the sidebar

![](images/service-dependancy-based-deduplication_0.png)

**(2)** To add a dependency where, *Service A* `is dependent on` Service B, for *Service A*, click on **More** and select **Dependencies**

![](images/service-dependancy-based-deduplication_1.png)

**(3)** Search for *Service B*, select it and click on **Save**

In this example, we have considered `Backend Prometheus Service` and `Translations` Services as dependencies of the `Payment Portal` Service. 

![](images/service-dependancy-based-deduplication_2.png)

This means that the `Payment Portal` Service is dependent on `Backend Prometheus Service` and `Translations`.

## Enabling Service Dependency Based De-duplication

Once you have defined the Service Dependencies, you can set a Service Dependency Based De-duplication rule which would de-duplicate all incoming alerts for the chosen Service against the latest open incident of its Service Dependencies.

To do so: 

**(1)** For the Service that has its dependencies defined, click on **More** and select **De-duplication Rules**

![](images/service-dependancy-based-deduplication_3.png)

**(2)** For the De-duplication Rule that you want checked and applied for Service Dependency Based De-duplication, simply enable the checkbox **If this service and a service it depends on both have an incident, alert only once**. 

**NOTE:** This checkbox for every De-duplication Rule is disabled by default. 

![](images/service-dependancy-based-deduplication_4.png)

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><br/><p><b>1.</b> The Service Dependency Based De-duplication will de-duplicate any incoming alert against either a <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Triggered</code> or <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Acknowledged</code> incident only.
<br/><br/>
<b>2.</b> Service Dependency based De-duplication is rule-specific and can be enabled for any number of De-duplication Rules that are defined for a Service.</p>
{{site.data.alerts.end}}

## Enabling Service Dependency Based De-duplication for a Specific Service Dependency 

In cases where you would like Squadcast to consider just one of the many dependencies for a Service for Service Dependency Based De-duplication, you can follow the method below. 

Along with enabling the Service Dependency checkbox as shown above, you will need to add the below condition to the rule:

`past_incident.service == <slug_of_the_particular_dependency_service>`

## FAQs

**(1)** Where can one find the `slug` of a Service?

The `slug` of a Service is displayed on the Service card as shown below. 

![](images/service-dependancy-based-deduplication_5.png)