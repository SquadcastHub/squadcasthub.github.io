---
title: Alert Suppression
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Avoid alert fatigue by setting up Suppression Rules"
sidebar: mydoc_sidebar
permalink: docs/alert-suppression
folder: mydoc
---

Alert suppression can help you avoid alert fatigue by suppressing notifications for non-actionable alerts. 

Squadcast will suppress the incidents that match any Suppression rules you create. These incidents will go into `Suppressed` state and you won't get any notifications for them.

These are useful in situations where you'd like to view your all your informational alerts in Squadcast but don't want to be notified for them. 

## Creating a Suppression rule

For each service, you can define your suppression rules.

You can set this up by going to [your Squadcast account](https://app.squadcast.com)

- Go to the relevant service
- Click on the options dropdown 
- Choose "Suppression Rules"

![](images/alert_suppression_1_new.png)

Choose Alert Source from the Dropdown

![](images/alert_suppression_2_new.png)

Click on **Add new rule** to start configuring a rule

![](images/alert_suppression_3_new.png)

By default, when a new rule is being created, a user is prompted to use the *drop-down blocks* for convenience. As you build the expression from these drop-downs, you can also see the corresponding suppression expression *raw string* being auto-added for the same. 

The drop-down blocks are beginner friendly for sure, but they aren't as flexible as raw string method.
If you want more flexibility while building your expressions, you may opt anytime to switch to use the raw string mode by clicking the edit button as shown.

![](images/alert_suppression_4_new.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><p><ol><li>You will have the option to choose either the <i>drop-down block</i> mode or the <i>raw-string</i>  for every rule you create.</li><li>Once you opt for the raw-string method, you can't revert back to the drop-down blocks for that specific rule. You can delete the rule and create a new one to have the option to use the drop-down blocks.</li><li>The drop-down blocks only support logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operator between 2 expressions. If you want to have a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">OR</code> operation between 2 expressions, then you would have to create a new tagging rule instead and have the copy over the same tags for the other rule.</li></ol></p>
{{site.data.alerts.end}}

You can add as many Suppression Rules as you want for a service. 

![](images/alert_suppression_5_new.png)

{{site.data.alerts.blue-note-md}}
   **Multiple Alert Sources**

   We can see alert payloads of past events from different alert sources for the service by selecting the respective alert source from the dropdown in the right-half side.

   Since the payload format is fixed for a given alert source, it is usually preferrable to have suppression rules on a per-alert source basis. This can be done by making use of the `source` field which lets you know the alert source that triggered the incoming event.

   For example, if you want to have a suppression rule for a service, only for alerts coming for `jira-plugin` alert source, then the corresponding rule would look something like:
   
   ```javascript
   source == 'jira-plugin' && (<your_suppression_rule>)
   ```
{{site.data.alerts.end}}

## Syntax for Writing Rules (For Raw String method)

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check out this [link](https://regex101.com/) to get an idea of all the expression types accepted in Squadcast. 

- Basic expression: `10 > 0`, `1+2`, `100/3`
- Parameterized expression: `payload.metric == "disk"`
   The available parameters are `payload`, `incident_details`, `source`
   + `payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events for a particular alert source. 
   + `incident_details`: This contains the content of `message` and `description` of the incoming event.
   + `source`: This denotes the associated alert source for the current / incoming event.
- Regular expression: `re(payload.metric, "disk.*")`
- Parsing JSON content: `jsonPath(payload.message, "a.b.c")`
   This can be used to parse JSON formatted strings and get the `jsonPath` from the resulting JSON object.

## Example

For a sample content shown in the right panel of the configuration space

```json
{
  "payload": {
    "issue_description": "bug - 2",
    "issue_id": "10029",
    "issue_key": "HYD-30",
    "issue_labels": [],
    "issue_link": "http://13.233.254.18:8080/browse/HYD/issues/HYD-30",
    "issue_priority": "Medium",
    "issue_summary": "bug - 2",
    "issue_type": "Bug",
    "project_id": "10000",
    "project_key": "HYD",
    "project_name": "hydra"
  },
  "incident_details": {
    "message": "[Bug] bug - 2",
    "description": "+ Project: HYDRA \n+Issue Type: Bug ..."
  },
  "source": "jira-plugin"
}
```
Suppress any incoming alert if,
 - The incident message contains:  `[Bug]`
 - The alert source is jira-plugin

**Rule**
`re(payload.incident_details.message, "[Bug]") && source == "jira-plugin"`

## Viewing Suppressed Alerts

You can view Suppressed incidents on the Incident List page by clicking on All Incidents and choosing **Suppressed** as highlighted in the screenshot below.

![](images/alert_suppression_6_new.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><p><ul><li>Suppressed and Resolved are the final states for incidents in Squadcast. You will not be able to take any action on incidents in these states.</li><li>Incident information will be available on the Squadcast platform even if they are suppressed.</li></ul></p>
{{site.data.alerts.end}}