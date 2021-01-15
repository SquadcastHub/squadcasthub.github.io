---
title: Alert Routing
tags: [alert routing]
keywords:
last_updated:
summary: "Help route notifications to the right responder based on event tags"
sidebar: mydoc_sidebar
permalink: docs/alert-routing.html
folder: mydoc
---

Alert routing allows you to configure rules to ensure that alerts are routed to the right responder with the help of event tags attached to each alert. 

For each service, you can define your routing rules. 

You can set this up by going to app.squadcast.com. 
 - Go to the relevant service
 - Click on the options dropdown 
 - Choose "Routing Rules"

![](images/alert_routing_1.png)

You can add your rule expression in the field "Routing condition" and then add the user, squad or escalation policy that the tagged alert should be routed to. 

You can add as many routing rules with the "Add new rule" button.

![](images/alert_routing_2.png)

{{site.data.alerts.yellow-note-i}}
<b>Escalation Override:</b>
<br/><br/><p>The alert routing feature will route incidents based on the rules set in and will override the default escalation policy for the service if a rule matches.</p>
{{site.data.alerts.end}}

## Syntax for rules

The rule engine supports expressions with parameters, arithmetic, logical, and string operations.
 - Basic expression: `10 > 0`, `1+2`, `100/3`
 - Parameterized expression: `tags.severity == "high"`
    The available parameters are `tags`
      + `tags` : This parameter contains the all the configured tags for a given service
 - Regular expression: `re(tags.severity, "high.*")`
     This can be used to check if a particular tag field matches a regular expression.

## Example

For a sample content shown in the right panel of the configuration space

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
**Use Case** 

When `severity` is `critical` : Route to an squad
When `severity` is `high` : Route to an escalation policy 
When `severity` is `low` : Route to a user

**Rules** 

When `tags.severity == "critical"` route to a `squad`
When `tags.severity == "high"` route to an `escalation policy`
When `tags.severity == "low"` route to a `user`