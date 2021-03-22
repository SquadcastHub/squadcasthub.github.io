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

Squadcast will suppress the incidents that match any of the Suppression Rules you create for your Services. These incidents will go into the `Suppressed` state and you will not get any notifications for them.

These are useful in situations where you would like to *view* your all your informational alerts in Squadcast but do not want to get notified for them. 

## Prerequisites

- Only the Account Owner and Admins have Create, Read, Update and Delete capabilities for Suppression Rules
- First, integrate with an Alert Source and ensure that the Alert Source has started sending alerts to Squadcast

## Creating Suppression Rules

**(1)** Navigate to **Services** from the sidebar

**(2)** Select a Service and click on the **More** option

**(3)** Click on **Suppression Rules**

![](images/alert_suppression_1_new.png)

**(4)** Select an **Alert Source** from the drop-down 

**(5)** Click on **Add new rule**

![](images/alert_suppression_2_new.png)

**(6)** Suppression Rules can be added in two different ways:

### (A) UI-based Rule Builder (Beginner-friendly)

(a) On the right, you can view the *payload of the **latest** alert* for the chosen Alert Source 

(b) The drop-downs in the Rule Builder contain values from the payload on the right. You can use them to easily create your Suppression Rules. As you build the expression from these drop-downs, you can also see the corresponding *raw string* being auto-populated for the same under **String Expression**. 

![](images/alert_suppression_3_new.png)

(c) You can add more than 1 condition for a rule by selecting **Add Condition** (a logical AND is performed between all the conditions -> the entire Suppression Rule will evaluate to `True` only if all the conditions evaluate to `True`)

![](images/alert_suppression_4_new.png)

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><p>The drop-down blocks only support logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operator between 2 expressions. If you want to have a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">OR</code> operation between 2 expressions, then you would have to create a new Suppression Rule.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Comparison Operators within Suppression Rules</b>
<br/><br/><p>You can also leverage comparison operators such as <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">==, <, <=, >, >=</code> within your rules using the drop-down blocks, when the parameter you are evaluating against, is a <b>numerical value from the payload</b> to reduce alert noise.
<img src="images/alert_suppression_7_new.png"></p>
{{site.data.alerts.end}}

### (B) Raw String Method

{{site.data.alerts.yellow-note-i}}
<b>Important</b>
<br/><p>Once you opt for the Raw String method, you cannot revert to the UI-based Rule Builder method.</p>
{{site.data.alerts.end}}

(a) On the right, you can view the payload of the latest alert for the chosen Alert Source

(b) Click on **Edit** to enable Raw String method

![](images/alert_suppression_5_new.png)

(c) Write your custom Suppression Rule expression

### Syntax for writing rules: The rule engine supports expressions with parameters, arithmetic, logical, and string operations

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check out this [link](https://regex101.com/) to get an idea of all the expression types accepted in Squadcast. 

#### Basic Expressions

   `10 > 0`, `1+2`, `100/3`

#### Parameterized Expressions

   `payload.metric == "disk"`
      The available parameters are `payload`
            `payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events for a particular alert source 
            `incident_details`: This contains the content of `message` and `description` of the incoming event
            `source`: This denotes the associated alert source for the current/incoming event

#### Regular Expressions

   `re(payload.metric, "disk.*")`

#### Parse JSON content within the payload using `jsonPath` to add a tag

**General Format** 
`jsonPath(<the JSON string that should be parsed for JSON content>, <"the parameter that needs to be picked from the parsed JSON object">)`

**Example**

Below is an example payload:

```json
{
   "payload": {  
      "Type" : "Notification",
      "MessageId" : "5966c484-5b37-58df",
      "TopicArn" : "arn:aws:sns:us-east-1:51:Test",
      "Message" : "{\"AlarmName\":\"Squadcast Testing - Ignore\",\"AlarmDescription\":\"Created from EC2 Console\"}"
   }
}
```

```javascript
jsonPath(payload.Message, "AlarmName")
```

This will pick out the value `AlarmName` from the Message object in the payload based on which, you can suppress the incident.

{{site.data.alerts.blue-note}}
<b>Multiple Alert Sources</b>
<br/><br/><p>We can see alert payloads of past events from different alert sources for the service by selecting the respective alert source from the dropdown in the right-half side.
<br/><br/>
Since the payload format is fixed for a given alert source, it is usually preferrable to have suppression rules on a per-alert source basis. This can be done by making use of the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source</code> field which lets you know the alert source that triggered the incoming event.
<br/><br/>
For example, if you want to have a suppression rule for a service, only for alerts coming for <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">jira-plugin</code> alert source, then the corresponding rule would look something like: <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source == 'jira-plugin' && (&lt;your_suppression_rule&gt;)</code></p>
{{site.data.alerts.end}}

### Example

Below is an example payload for demonstration:

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
    "message": "[Bug] bug - 2"
    "description": "+ Project: HYDRA \n+Issue Type: Bug ..."
  },
  "source": "jira-plugin"
}
```

To suppress any incoming alert when:
 - The alert message contains: `[Bug]`
 - The alert source is `jira-plugin`

**Suppression Rule:**

```javascript
re(payload.incident_details.message, "[Bug]") && source == "jira-plugin"
```

## Viewing Suppressed Incidents

You can view `suppressed` incidents in the [Incident List](https://support.squadcast.com/docs/incident-list-table-view) page by clicking on **All Incidents** and choosing **Suppressed** as highlighted in the screenshot below.

![](images/alert_suppression_6_new.png)


{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><p><ul><li><code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Suppressed</code> and <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Resolved</code> are the final states for incidents in Squadcast. You will not be able to take any action on incidents that are in these states.</li>
<li>Incident information will be available on the Squadcast platform even if they are suppressed.</li></ul></p>
{{site.data.alerts.end}}

## FAQs

**(1)** What kind of regex can be used to write custom rules?

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check <a href="https://regex101.com">this</a> out to get an idea of all the expression types accepted in Squadcast. Please do your regex [here](https://regex101.com) against `Golang` flavour as shown in the screenshot below and then, set them up in Squadcast:

![](images/de-duplication_9.png)

**(2)** Can I create OR rules?

Yes, you can. The evaluation between different Suppression Rules is OR. Add multiple Suppression Rules to enable OR evaluation.
