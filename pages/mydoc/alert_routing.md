---
title: Alert Routing
tags: [alert routing]
keywords:
last_updated:
summary: "Route alerts to the right responder(s) based on the tags they carry"
sidebar: mydoc_sidebar
permalink: docs/alert-routing
folder: mydoc
---

Alert Routing allows you to configure *Routing Rules* to ensure that alerts are routed to the right responder with the help of `event tags` attached to them. 

## Prerequisites

- Only the Account Owner and Admins have Create, Read, Update and Delete capabilities for Routing Rules
- First, ensure you have `Tags` [defined](https://support.squadcast.com/docs/event-tagging) for the Service

## Configuring Routing Rules for a Service

**(1)** Navigate to **Services** from the sidebar

![](images/alert_routing_1.png)

**(2)** For the Service of your choice, click on **More** and select **Routing Rules**

![](images/alert_routing_2.png)

## UI-based Rule Builder (Beginner-friendly)

**(a)** This box displays all the `event tags` [defined](https://support.squadcast.com/docs/event-tagging) for this Service, which can be used to define Routing Rules

**(b)** Select **Add new rule**

![](images/alert_routing_3.png)

**(c)** Pick the **event tag** `key` and `value` pair that you are checking for in an incident using the drop-downs

![](images/alert_routing_4.png)

**(d)** **Add Conditions** to make your rules more granular

**(e)** You can route the incident containing the specific `event tags` to either a `User`, `Squad` or an `Escalation Policy`. Pick the same from the drop-down

**(f)** Click on **Save**

![](images/alert_routing_5.png)

{{site.data.alerts.yellow-note-i}}
<b>Default Service Escalation Policy Override</b>
<br/><br/><p>The Alert Routing Rules will take precendence (override) over the default Escalation Policy for the Service, if any of the rules match (evaluate to True) an incoming incident.</p>
{{site.data.alerts.end}}

## Raw String Method

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>Once you opt for the Raw String method, you cannot revert to the UI-based Rule Builder method for that rule.</p>
{{site.data.alerts.end}}

**(a)** This box displays all the `event tags` [defined](https://support.squadcast.com/docs/event-tagging) for this Service

**(b)** Select **Add new rule**

![](images/alert_routing_3.png)

**(c)** Click on **Edit** to enable Raw String method

![](images/alert_routing_7.png)

**(d)** Write your custom Tagging Rule expression and select **Route To** accordingly

**(e)** Click on **Save**

![](images/alert_routing_6.png)

### The rule engine supports expressions with parameters, arithmetic, logical, and string operations

#### Basic Expressions

`10 > 0`, `1+2`, `100/3`

#### Parameterized Expressions

`tags.severity == "high"`

The available parameters are `tags`
+ `tags` : This parameter contains the all the configured tags for a given Service.

#### Regular Expressions

`re(tags.severity, "high.*")`

This can be used to check if a particular tag field matches a regular expression.

## Example

Below is the set of `event tags` defined for a Service (as shown in the right panel of the configuration space)

```json
{
    "tags" : [
        {
             "severity" : "critical"
        },
        {
             "severity" : "high"
        },
        {
             "severity" : "low"
        }
    ]
}
```
**Use-case for Routing Rules** 

When:
- `severity` is `critical` : Route to a **Squad**
- `severity` is `high` : Route to an **Escalation Policy** 
- `severity` is `low` : Route to a **User**

**Routing Rules are as follows:** 

- `tags.severity == "critical"` *route* to a `squad`
- `tags.severity == "high"` *route* to an `escalation policy`
- `tags.severity == "low"` *route* to a `user`