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

These are useful in situations where you would like to _view_ your all your informational alerts in Squadcast but do not want to get notified for them.

## Prerequisites

- The User Role associated with the user in the Team must have required permissions to manage Services (ability to manage Suppression Rules).

- Integrate with an Alert Source and ensure that the Alert Source has started sending alerts to Squadcast before setting up Suppression Rules.

## Creating Suppression Rules

Ensure that the right Team is chosen from the team picker on the top of the screen.

**(1)** Click on **Services** in the primary navigation

**(2)** Select a **Service** and click on the **More options** icon

**(3)** Click on **Suppression Rules**

![](images/alert_suppression_1_new.png)

**(4)** Select an **Alert Source** from the drop-down

**(5)** Click on **Add new rule**

![](images/alert_suppression_2_new.png)

**(6)** Suppression Rules can be added in two different ways:

### (A) UI-based Rule Builder (Beginner-friendly)

(a) On the right, you can view the _payload of the **latest** alert_ for the chosen Alert Source

(b) The drop-downs in the Rule Builder contain values from the payload on the right. You can use them to easily create your Suppression Rules. As you build the expression from these drop-downs, you can also see the corresponding _raw string_ being auto-populated for the same under **String Expression**.

![](images/alert_suppression_3_new.png)

(c) You can add more than 1 condition for a rule by selecting **Add Condition** (a logical AND is performed between all the conditions -> the entire Suppression Rule will evaluate to `True` only if all the conditions evaluate to `True`)

![](images/alert_suppression_4_new.png)

(d) You can suppress incidents based on time as well. To do so, check **Suppress by time**. Add details for your suppression time slot like **Timezone**, **Duration** and **Repetition**. 

Under **Duration**, you can specify **Start and End Dates** and choose **Start and End Time** as well or simply run it for the entire day. 

You can add **Repetition** for your slot, to do so, you can choose from the **drop down list**, while specifying the end for this repetition, as a particular date/time or never.

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
You can add multiple suppression time slots for a single Suppression Rule.  
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
Users can select a timezone as per which the time slot needs to be active.
{{site.data.alerts.end}}

![](images/time-based_suppression.png)

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><p>The drop-down blocks only support logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operator between 2 expressions. If you want to have a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">OR</code> operation between 2 expressions, then you would have to create a new Suppression Rule.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Comparison Operators within Suppression Rules</b>
<br/><br/><p>You can also leverage comparison operators such as <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">==, <, <=, >, >=</code> within your rules using the drop-down blocks, when the parameter you are evaluating against, is a <b>numerical value from the payload</b> to reduce alert noise.</p>

<p><img src="images/alert_suppression_7_new.png"></p>
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

(d) You can suppress incidents based on time as well. To do so, check **Suppress by time**. Add details for your suppression time slot like **Timezone**, **Duration** and **Repetition**. 

Under **Duration**, you can specify **Start and End Dates** and choose **Start and End Time** as well or simply run it for the entire day. 

You can add **Repetition** for your slot, to do so, you can choose from the **drop down list**, while specifying the end for this repetition, as a particular date/time or never.

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
You can add multiple suppression time slots for a single Suppression Rule.  
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
Users can select a timezone as per which the time slot needs to be active.
{{site.data.alerts.end}}

![](images/time-based_suppression2.png)

### Supported Rules

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check out this [link](https://regex101.com/) to get an idea of all the expression types accepted in Squadcast.

#### Basic Expressions

`10 > 0`, `1+2`, `100/3`

#### Parameterized Expressions

`payload.metric == "disk"`
The available parameters are `payload`
`payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events for a particular alert source
`payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events for a particular alert source
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
   "payload": {
	"payload": {
		"Type": "Notification",
		"MessageId": "5966c484-5b37-58df",
		"TopicArn": "arn:aws:sns:us-east-1:51:Test",
		"Message": "{\"AlarmName\":\"Squadcast Testing - Ignore\",\"AlarmDescription\":\"Created from EC2 Console\"}"
	}
}
```

```javascript
jsonPath(payload.Message, "AlarmName");
```

This will pick out the value `AlarmName` from the Message object in the payload based on which, you can suppress the incident.

{{site.data.alerts.blue-note-md}}
**Multiple Alert Sources**

We can see alert payloads of past events from different alert
sources for the service by selecting the respective alert source
from the dropdown in the right-half side.

Since the payload format is fixed for a given alert source,
it is usually preferrable to have suppression rules on a per-alert source basis.
This can be done by making use of the `source` field which
lets you know the alert source that triggered the incoming event.

For example, if you want to have a suppression rule for a service,
only for alerts coming for **`grafana`** alert source, then the corresponding
rule would look something like:

```javascript
source == 'grafana' && (<your_suppression_rule>)
```

{{site.data.alerts.end}}

#### Example

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
		"message": "[Bug] bug - 2",
		"description": "+ Project: HYDRA \n+Issue Type: Bug ..."
	},
	"source": "grafana"
}
```

To suppress any incoming alert when:

- The alert message contains: `[Bug]`
- The alert source is `grafana`

**Suppression Rule:**

```javascript
re(payload.incident_details.message, "[Bug]") && source == "grafana";
```

## Discarding suppressed incidents

To discard incoming alerts and stop them from being triggered as incidents in Squadcast,
use the `discard()` function in conjunction with Suppression Rules.

### Example

Suppression Rule:

```javascript
source == "grafana" && re(payload["message"], "Notification Message");
```

Supression Rule with `discard()`:

```javascript
source == grafana &&
	re(payload["message"], "Notification Message") &&
	discard();
```

{{site.data.alerts.blue-note-md}}
**Avoid hitting Rate Limits**

The `discard()` function can be used to avoid hitting the
**[Incident Rate Limits](https://support.squadcast.com/docs/incident-rate-limiting)**
as **Suppressed events that are discarded** don't get counted against the allowed rate limits.

{{site.data.alerts.end}}

## Viewing Suppressed Incidents

You can view `suppressed` incidents in the [Incidents](https://support.squadcast.com/docs/incident-list-table-view) page by clicking on **All Incidents** and choosing **Suppressed** as highlighted in the screenshot below.

![](images/alert_suppression_6_new.png)

{{site.data.alerts.yellow-note-i-md}}
**Note**

- **`Suppressed`** and **`Resolved`** are the final states for incidents in Squadcast. You will not be able to take any action on incidents that are in these states.
- Incident information will be available on the Squadcast platform even if they are suppressed.

{{site.data.alerts.end}}

## FAQs

**(1)** What kind of regex can be used to write custom rules?

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check <a href="https://regex101.com">this</a> out to get an idea of all the expression types accepted in Squadcast. Please do your regex [here](https://regex101.com) against `Golang` flavour as shown in the screenshot below and then, set them up in Squadcast:

![](images/de-duplication_9.png)

**(2)** Can I create OR rules?

Yes, you can. The evaluation between different Suppression Rules is `OR`. Add multiple Suppression Rules to enable `OR` evaluation.

**(3)** While adding a Suppression Rule, is the _search string_ in the rule case sensitive?

Yes, that is correct. For example, if your seach string is "ALERT" and your payload does not contain "ALERT" but contains "Alert", this will not be matched. Your search string should be "Alert".

**(4)** How do I know if an incident gets suppressed due to a Suppression Rule?

In the Incident's Activity Timeline the reason for suppression is displayed.

![](images/suppression_reason.png)

**(5)** I have configured multiple rules for a particular Service. Can I search through the configured rules to find the rule I am looking for?

Yes, that is doable. You will notice a **Search** option on the left-top of the rules modal. You can type in a word you recall from the rule description or the rule itself. Any matching results will yield the narrowed down set of rules.

![](images/automation-rules-search-1.png)
