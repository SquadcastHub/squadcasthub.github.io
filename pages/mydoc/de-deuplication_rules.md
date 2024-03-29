---
title: Alert Deduplication Rules
tags: [deduplication]
keywords:
last_updated:
summary: "Reduce alert noise by grouping similar alerts together"
sidebar: mydoc_sidebar
permalink: docs/de-duplication-rules
folder: mydoc
---

Alert Deduplication can help you reduce alert noise by organising and grouping alerts. This also provides easy access to similar alerts when needed.

This can be achieved by defining Deduplication Rules for each Service in Squadcast. When these rules evaluate to _true_ for an incoming incident, alerts will get deduplicated.

## Prerequisites

- The User Role associated with the user in the Team must have required permissions to manage Services (ability to manage Deduplication Rules).

- Integrate with an Alert Source and ensure that the Alert Source has started sending alerts to Squadcast before setting up Deduplication Rules.

{{site.data.alerts.yellow-note-i}}
<b>Important</b>
<br/><br/><p>Deduplication Rules work only on incidents in either the <b>Triggered</b> or <b>Acknowledged</b> states.</p>
{{site.data.alerts.end}}

## Creating Deduplication Rules

Ensure that the right Team is chosen from the team picker on the top of the screen.

**(1)** Click on **Services** in the primary navigation

**(2)** Select a **Service** and click on the **More options** icon

**(3)** Click on **Deduplication Rules**

![](images/de-duplication_1.png)

**(4)** Click on **Add new rule**

**(5)** Select an **Alert Source** from the drop-down

![](images/de-duplication_2.png)

**(6)** Deduplication Rules can be added in three ways:

### (A) UI-based Rule Builder (Beginner-friendly)

(a) On the right, you can view the _payload of the **latest** alert_ for the chosen Alert Source

(b) The drop-downs in the Rule Builder contain values from the payload on the right. You can use them to easily create your Deduplication Rules

![](images/de-duplication_3.png)

(c) You can add more than 1 condition for a rule by selecting **Add Condition** (a logical AND is performed between all the conditions -> the entire Deduplication Rule will evaluate to `True` only if all the conditions evaluate to `True`)

Next, choose the **Deduplication Time Window**. You can deduplicate incidents for a **maximum of 48 hours**.

{{site.data.alerts.yellow-note-i}}
<b>Time Window</b>
<br/><br/><p>During the set time window, incidents that occur are compared against all incidents that come in during that time period, and will then get deduplicated against the first incident that it matches with.</p>
{{site.data.alerts.end}}

(d) Click on **Save**

![](images/de-duplication_4.png)

### (B) Raw String Method

{{site.data.alerts.yellow-note-i}}
<b>Important</b>
<br/><br/><p>Once you opt for the Raw String method, you cannot revert to the UI-based Rule Builder method for that rule.</p>
{{site.data.alerts.end}}

(a) On the right, you can view the payload of the latest alert for the chosen Alert Source

(b) Click on **Edit** to enable Raw String method

![](images/de-duplication_5.png)

(c) Write your custom Deduplication Rule expression. Below are some examples to help you get started:

### Supported Rules

The rule engine supports expressions with parameters, arithmetic, logical, and string operations.

#### Basic Expressions

  `10 > 0`, `1+2`, `100/3`

#### Parameterized Expressions

  `past.metric == current.metric`

  The available parameters are `past`, `current` and `event_count` + `past` : This parameter contains the JSON payload of the previous incident which the current event is compared with + `current` : This parameter contains the JSON payload of the incoming event which will be compared with the past incidents' JSON payload + `event_count` : This denotes the number of deduplicated events for a given incident

{{site.data.alerts.blue-note}}
<b>Use-case for event_count:</b>
<br/><br/><p>This can be used in scenarios where you do not want to deduplicate more than <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">n</code> number of alerts to a particular incident.</p>
{{site.data.alerts.end}}

#### Regular Expressions

  This can be used to check if a particular JSON payload field matches a regular expression.

  `re(payload.metric, "disk.*")`

#### Parse JSON content within the payload using `jsonPath`

**General Format**
`jsonPath(<the JSON string that should be parsed for JSON content>, <"the parameter that needs to be picked from the parsed JSON object">)`

**Example**
Below is an example payload:

```json
{
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

This will pick out the value `AlarmName` from the Message object in the payload, based on which, you can de-duplicate incidents.

{{site.data.alerts.blue-note}}
<b>Multiple Alert Sources</b>
<br/><br/><p>We can see alert payloads of past events from different alert sources for the Service by selecting the respective alert source from the dropdown in the right-half side.
<br/><br/>
Since the payload format is fixed for a given alert source, it is usually preferrable to have Deduplication Rules on a per-alert source basis. This can be done by making use of the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source</code> field which lets you know the alert source that triggered the incoming event.
<br/><br/>
For example, if you want to have a Deduplication Rule for a Service, only for alerts coming for <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">grafana</code> alert source, then the corresponding rule would look something like: <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source == 'grafana' && (&lt;your_deduplication_rule&gt;)</code></p>
{{site.data.alerts.end}}

#### Example

Below is an example payload for demonstration:

```json
{
	"event_count": 5,
	"past": {
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
	"source": "grafana"
}
```

To deduplicate any incoming alert when:

- The `metric` matches the regular expression `^disk.*`
- The `past` incident `metric` and the `current` event `metric` are the same
- The `past` incident `host` and the `current` event `host` are the same
- The `current` disk usage `value` is less than 60%
- The `context` value tag is same

**Deduplication Rule:**

```javascript
past.metric == current.metric &&
	re(current.metric, "^disk.*") &&
	past.host == current.host &&
	current.value < 60 &&
	jsonPath(past.tags, "context.value") ==
		jsonPath(current.tags, "context.value");
```

## Viewing Deduplicated Incidents

From the [Incidents](https://support.squadcast.com/docs/incident-list-table-view) page, you can view which incidents have deduplicated events when there is a **+\<number\>** next to the Incident ID like in the screenshot below. 

The **number** indicates how many alerts were deduplicated against this incident.

![](images/de-duplication_6.png)

Clicking on such an incident will take you to its [Incident Details page](https://support.squadcast.com/docs/incident-details) where, by clicking on **Deduped Events**, you will be able to see the following:

- Number of deduplicated events
- Time when they reached Squadcast
- **Message** and **Payload** of the event

![](images/de-duplication_7.png)

Clicking on any of the deduplicated events will display will all the information that is sent for that alert from the monitoring tool, including the **Deduplication Reason** (which Deduplication Rule got executed).

![](images/dedup_reason.png)

## FAQs

**(1)** Will I get notified for the duplicate alerts that come in for an incident in Triggered state?

No, nobody is notified for the duplicate alerts that come in for an incident in the `Triggered` or `Acknowledged` state.

**(2)** Will I get notified for the duplicate alerts that come in for an incident in Resolved state?

Yes, incident deduplication will not take place for an incident when it is in the `Resolved` state. Squadcast triggers a fresh incident for such an alert and notifies the right people.

**(3)** Why can't I deduplicate incidents for more than 48 hours?

Most organizations across the world follow a best practice of resolving critial incidents within 48 hours of their creation. This is also the reason why, Squadcast allows you to deduplicate incidents for a maximum of 48 hours.

**(4)** Can I create OR rules?

Yes, you can. The evaluation between different Deduplication Rules is `OR`.

**(5)** What kind of regex can be used to write custom rules?

The rule engine supports expressions with parameters, arithmetic, logical, and string operations. You can also check <a href="https://regex101.com">this</a> out to get an idea of all the expression types accepted in Squadcast. Please do your regex [here](https://regex101.com) against `Golang` flavour as shown in the screenshot below and then, set them up in Squadcast:

![](images/de-duplication_9.png)

**(6)** Do the Deduplication Rules have priority?

Yes, you can specify Execution Rule Priority for the rules defined by moving them `Up` or `Down` the list of rules.

![](images/status-based-deduplication_5.png)

**(7)** While adding a Deduplication Rule, is the _search string_ in the rule case sensitive?

Yes, that is correct. For example, if your seach string is "ALERT" and your payload does not contain "ALERT" but contains "Alert", this will not be matched. Your search string should be "Alert".

**(8)** I have configured multiple rules for a particular Service. Can I search through the configured rules to find the rule I am looking for?

Yes, that is doable. You will notice a **Search** option on the left-top of the rules modal. You can type in a word you recall from the rule description or the rule itself. Any matching results will yield the narrowed down set of rules.

![](images/automation-rules-search-1.png)
