---
title: Configure and Monitor your SLOs
tags: [configure and monitor slo]
keywords:
last_updated:
summary: "With Squadcast, you can define and monitor Service Level Objects for your services."
sidebar: mydoc_sidebar
permalink: docs/configure-slo
folder: mydoc
---

{{site.data.alerts.yellow-note-i-md}}
**Note:**

This feature is available as part of the [Pro and Enterprise Plan](https://www.squadcast.com/pricing).
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}

Before configuring your SLOs, we recommend you read our <a href="slo-basics">SLO Basics Documentation</a>.

{{site.data.alerts.end}}

Before you begin to define your SLO, you should have an expectation of what percent of your SLI (availability, latency, etc) is needed to pass the SLO. For example, you may want your service to be available 99.99% of the time to pass the SLO. In this case, 99.99% is the “Target SLO” and “availability” is your “SLI”.

## Creating New SLO

To create a new SLO, click on **+Create New SLO** button on the top right.

### Define SLO

You begin by defining your SLO.

![](images/slo_1.png)

1. Enter the SLO Name of your choice
2. Enter the SLO Description detailing out specifics of the SLO
3. Enter Tags (key-value pairs) specifying the Owner, Environment and Type

You can additionally add your own tags by clicking the **+Add Tag** button. 

<br>
Once done, Click on **Next** to Configure SLO.

### Configure SLO

![](images/slo_2.png)

<br>
1. Under the **Services Associated with this SLO** tab, you can select multiple Services to link it to the SLO. Only incidents from these linked services can then be mapped to the SLO. 

2. Enter the **SLIs that affect the SLO**. There could be one or more SLIs - like availability, response time, etc - that map to this SLO.

3. Enter the percentage or ratio under **Target SLO in %**. This sets the target percentage to define compliance. 

4. **Error Budget** is auto-calculated based on the values entered for target SLO and duration. It is calculated in minutes and cannot be edited.

5. Enter the **Duration** for this SLO, by choosing between **Rolling Period** or **Fixed Duration** (Calendar Duration)

- Under **Rolling**, you can select the period in days. This option is used when you want the SLO calculated continuously for a defined number of days (for example, continuously over a 7 day period). This can be a maximum of 90 days. 

- Under **Fixed Duration**, you can select the start and end dates from the drop down. This option is used when the SLO has to be calculated over a fixed duration - for example, over one quarter at a time. The fixed duration can be a maximum of one year. 
<br>
Once done, Click on Next to **Error Budget Policy**.

### Error Budget Policy

![](images/slo_3.png)

The **Error Budget Policy** defines the conditions based on which to notify one or more users or squads or when incidents have to be created when a condition is breached. 

Choose the conditions you want to be alerted for, out of the following options.

  - Alert when there is a breach of **Error Budget**

  - Alert when there is an **Unhealthy Burn Rate**. An unhealthy burn rate is determined when the error budget is burning faster than what’s expected. For example, for an SLO of 99.99% over the course of a year, the error budget works out to be about 52 mins 33 seconds - or about 4 mins 20 sec per month. If the error budget is being burnt faster than than, then its considered unhealthy.  
 - Alert when the no. of **False Positives** exceeds the set limit.

  - Alert when the **Error Budget** decreases below the set limit.

Choose the mode of delivery of the alerts

  - **Email** Alerts, wherein an email notification is sent to the Users or Squads you specify. 
  - **Incident** Alerts, wherein an alert is created in the specified Service.   
 
<br>
Once done, Click on **Create**, and your SLO is created!

## Monitor Your SLOs

Once created, you can access all your SLOs for the current team from the SLO dashboard. 

![](images/slo_4.png)

The SLO list view shows information for each SLO, including:

|    Field   | Description |
| --- | --- |
|   Target SLO   |       Shows the percentage or ratio to target, which is the target value for compliance       |
| Current SLO |      Shows the current historical compliance with the SLO      |
| Remaining Error Budget |      Shows the remaining Error Budget for your SLO (in minutes) |
| SLO Health |      Indicates the health of the SLO, either as Healthy or Needs Attention     |
| Status |      Status Indicates whether your SLO is Active or Inactive      |
| Incidents Reported |      Indicates the no. of incidents reported for this SLO      |
| Tags |      Indicates the tags associated with the SLO      |

## SLO Detail Page

To view the details of a particular SLO, select the SLO from the SLO list in the SLO dashboard. 

![](images/slo_5.png)

## Marking an Incident as False Positive

This is useful if an incident was previously marked as one that affects an SLO and has been subsequently determined that it does not. This acts like an “undo” button. 

You can mark an incident as False Positive in one of two ways:

Through the SLO Details page, checkmark the incident(s) -> Click on Mark as **False Positive** button

![](images/slo_6.png)

Alternatively, go to the Incident’s Detail page -> Click on Mark as False Positive in the Incident Affects SLO tab

![](images/slo_7.png)

{{site.data.alerts.yellow-note-i-md}}
**Note:**

If you marked an Incident as False Positive by mistake, you can undo this. Navigate to **False Positives** tab in SLO Details Page -> Check the **Incident** -> Click on **SLO Affected** 

![](images/slo_8.png)

{{site.data.alerts.end}}

## Deleting an SLO

To delete an SLO, click on the icon on the right of the SLO from the SLO list, and click on the **Delete** icon, as shown in the image below.

![](images/slo_9.png)


## FAQs

### Please refer to the Frequently Asked Questions below that might help you fix any issues/answer your queries.

#### 1. Can I delete services associated with an SLO? 

Yes, you can delete a service associated with an SLO, the SLO and its Incidents will still be intact.

#### 2. How is the Error Budget calculated?

An error budget is 1 minus the SLO of the service. A 99.9% SLO service has a 0.1% error budget. If our service receives 1,000,000 requests in four weeks, a 99.9% availability SLO gives us a budget of 1,000 errors over that period.

#### 3. How is the Burn Rate calculated?

- First we calculate error budget allocated for a day. (for eg: if slo is 99.99% for an year, you get 55.5min/365 error budget for a day)
- Then, we fetch total error budget spent till today's date
- Subsequently, we see how many days its been since the slo started and later check if the user has consumed more error budget than they were suppoed to, to calculate the burn rate

#### 4. What determines a Healthy or Unhealthy SLO?

Healthy or unhealthy is based on how rapidly the error budget is getting depleted.

#### 5. Can I automatically associate incidents with an SLO?

We're working on something that can help you do this in the near future.

