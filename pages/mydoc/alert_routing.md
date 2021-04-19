---
title: Alert Routing
tags: [alert routing]
keywords:
last_updated:
summary: "Help route notifications to the right responder based on event tags"
sidebar: mydoc_sidebar
permalink: docs/alert-routing
folder: mydoc
---

Alert routing allows you to configure rules to ensure that alerts are routed to the right responder with the help of event tags attached to each alert. 

For each service, you can define your routing rules. 

You can set this up by going to [your Squadcast account](https://app.squadcast.com)

- Go to the relevant service
- Click on the options dropdown 
- Choose "Routing Rules"

![](images/alert_routing_1.png)

## Create your Routing Rule

You can add your rule expression in the field "Routing Expression" or create the rule using the dropdown and then add the user, squad or escalation policy that the tagged alert should be routed to. 

![](images/alert_routing_2.png)

You can add as many routing rules with the "Add new rule" button. 

{{site.data.alerts.yellow-note-i}}
<b>Escalation Override</b>
<br/><br/><p>The alert routing feature will route incidents based on the rules set in and will override the default escalation policy for the service if a rule matches.</p>
{{site.data.alerts.end}}

By default, when a new rule is being created, a user is prompted to use the *drop-down blocks* for convenience in-order to create a routing rule. As you build the expression from these drop-downs, simultaneously you can see the corresponding routing expression *raw string* for the same, just to ensure that you are building the right rule.

The drop-down blocks are beginner friendly for sure, but they aren't as flexible as raw string method.
If you want more flexibility while building your expressions, you may opt anytime to switch to use the raw string mode by clicking the edit button as shown.

![](images/alert_routing_3.png)

The method of specifying one rule is independent from others in the same service as well.
So, for the same service, you may have few rules in *drop-down block* mode, few in *raw-string* mode.

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p><ol><li>Once you opt for the raw-string method, you can't revert back to the drop-down blocks for that specific rule.</li><li>The drop-down blocks only support logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operator between 2 expressions. If you want to have a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">OR</code> operation between 2 expressions, then you would have to create a new routing rule instead</li></ol></p>
{{site.data.alerts.end}}

![](images/alert_routing_2.png)

## Rule Execution Priority

You can add as many rules by selecting the "Add rule" button below. The routing will be true for the first rule that matches in the list of rules added by you.

So, you can rearrange the rules to prioritize them suitably by using the **Move Up** and **Move Down** buttons on the top-right corner of the `Change Execution Priority` segment.

![](images/alert_routing_4.png)

## Syntax for rules (For Raw String method)

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
    "tags" : {
         "severity" : ["critical", "high", "low"]
    }
}
```
**Use Case** 

- When `severity` is `critical` : Route to an squad
- When `severity` is `high` : Route to an escalation policy 
- When `severity` is `low` : Route to a user

**Rules** 

- When `tags.severity == "critical"` route to a `squad`
- When `tags.severity == "high"` route to an `escalation policy`
- When `tags.severity == "low"` route to a `user`