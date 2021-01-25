---
title: Event Tagging
audience:
tags: [event tagging]
keywords:
summary: "Auto-add relevant information like priority, severity or alert type to make incoming incidents context-rich"
last_updated:
sidebar: mydoc_sidebar
permalink: docs/event-tagging
folder: mydoc
---

Tagging Rules can be defined for each Service in Squadcast. These rules, when evaluated to *true*, will add the defined tags to the incoming incident.

## Create Tagging Rules 

**(1)** Click on Services 

**(2)** Select a Service and click on the 3 dots beside the service name

**(3)** Click on Tagging Rules

![](images/tagging_1.png)

**(4)** Select an alert source from the drop-down 

{{site.data.alerts.blue-note}}
<b>Note: Integrate with an alert source first</b>
<br/><br/><p>Ensure that you have integrated with an alert source before you set up Tagging Rules</p>
{{site.data.alerts.end}}

**(5)** Click on “Add new rule”

![](images/tagging_2.png)

**(6)** Tagging Rules can be added in three ways:

### (A) User-friendly drop-down method

(a) See the payload of the latest alert for the chosen alert source 

(b) Use the dropdown to use the values from the payload to create rules

![](images/tagging_3.png)

(c) Use “Add Condition” to add multiple conditions in the same rule

(d) Map any “Key” and “Value” pair as a tag. Multiple tags can be defined for each rule. Each tag can have a different colour.

![](images/tagging_4.png)

### (B) Raw string method

(a) See the payload of the latest alert for the chosen alert source

(b) Click on Edit to enable raw string method

![](images/tagging_5.png)

(c) Use the syntax below to write your custom Tagging Rule expression

The rule engine supports expressions with parameters, arithmetic, logical, and string operations.
- Basic expression: `10 > 0`, `1+2`, `100/3`
- Parameterized expression: `payload.metric == "disk"`
   The available parameters are `payload`
   + `payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events for a particular alert source. 
- Regular expression: `re(payload.metric, "disk.*")`
   This can be used to check if a particular JSON payload field matches a regular expression.
- Parsing JSON content: `jsonPath(payload.message, "a.b.c")`
   This can be used to parse JSON formatted strings and get the `jsonPath` from the resulting JSON object.
- Adding multiple tags from the payload: `addTag( "severity", payload.severity, "#037916")`
- Adding a tag from the payload: `addTags(payload.labels)`

#### Example

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
  "source": "jira-plugin"
}
```

**Use Case: Setting Severity as a Tag** 

Assuming a case where disk usage events need to be prioritised: 

- When the disk usage is greater than 90% - `critical` and `state` tag is `alerting`
- When the disk usage is between 60 - 90% - `high`
- When the disk usage is less than 60% - `low`

Create 3 rules with the following configuration

**Rules**

- Critical: `payload.value  > 90 && jsonPath(payload.tags, "state") == "alerting"` 
- High: `payload.value > 60 && payload.value < 90`
- Low: `payload.value < 60`

### (C) Manual method

Associate a tag while creating an incident manually from the Incident Dashboard

![](images/tagging_6.png)

## Delete Tagging Rules

**(1)** Click on the Tagging Rule for a selected Service 

**(2)** Click on the “Bin” icon to delete that rule and click on **Save** 

![](images/tagging_7.png)

## Updating Tags

Use “+Update Tags” within an incident to update tags for a specific incident

![](images/tagging_8.png)

## FAQ

**(1)** Where can I see the tags associated with incidents?
	
You will be able to clearly view tags associated with incidents in the [Incident List](incident-list-table-view) page.

![](images/tagging_9.png)

**(2)** Can I add tags from the payload automatically ?

Yes, you can.

**(a) Add a single tag**

General Format:

```
addTag ( <tag key as string>, <payload selector or string>, [ <color> ])
```

- tag key: The key of the Tag label. Only letters and numbers allowed. Anything else will be ignored.
- payload selector or string: You can choose to set a tag value from the payload or you can set any custom string as the tag value.
- color: You can set color as a valid HEX code. This is optional. If this parameter is omitted, the default colour - #0F61DD will be used.

For this example, we're using 

```
addTag( "severity", payload.labels.severity, "#037916")
```

as the tag rule.
You will see that the tags are added automatically with the associated key value pair.

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>The addTag function always returns a truevalue. So, this can be chained with other logical operators to set multiple tags from the payload.</p>
{{site.data.alerts.end}}

**(b) Add multiple tags**

General Format: 

```
addTags( <payload selector>)
```

- payload selector: You can choose to set an object with key value pairs as tags from the payload.

For this example, we're using 

```
addTags( payload.labels)
```

as the tag rule.
You will see every key value pair within 

```
labels
```

added as a separate tag for the incident.

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p><ul><li>The key of the Tag label, <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">tag key</code> can only contain letters (both lowercase and uppercase) and numbers. Anything else will be ignored.</li>
<li>The <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">addTags</code> function will add all the tags with the default colour only - #0F61DD</li></ul></p>
{{site.data.alerts.end}}

**(3)** Can a Tagging Rule be created for a specific alert source?

By default, any rule added for a service will be executed for all its active alert source integrations.You can choose to isolate Tagging Rules for specific alert sources based on the source field provided in the right JSON panel.

Example:

```
source == "api" && addTags(payload.labels)
```

This will ensure that this Tagging rule will only be active for incidents triggered via that alert source for the service. This rule will not function for any other alert source.

**(4)** Can I create OR rules?

Yes, you can. The evaluation between different Tagging Rules is OR.

**(5)** How do I add a tag from the incident JSON?

This section will give you an understanding of how you can add tags to an incident straight from the Incident JSON using the Incident API.

**Typical Incident JSON:**

```json
{
   "message":"This will be the incident message",
   "description": "This will be the incident description",
   "tags": {
     "tagname1":"Tag value#1",
     "tagname2":"Tag value#2",
     "tagname3": {
       "color": "Valid HTML HEX Colour Notation goes here",
       "value":"Tag value#3"
   }
}
```

**Example 1: Using `tags` to set *Severity* for the incident**

```json
{
   "message": "Error rates higher than usual",
   "description": "HTTP Error rates for srv_90 is above 90 counts/hour",
   "tags": {
      "severity": "high"
    }
}
```

{{site.data.alerts.blue-note}}
<b>Default colour for tags</b>
<br/><br/><p>If a colour code is not mentioned explicitly, then the system takes the default colour "<b>#808080</b>" (gray) for the tag</p>
{{site.data.alerts.end}}

To specify a colour explicitly for `tags`:

```json
{
   "message": "Error rates higher than usual",
   "description": "HTTP Error rates for srv_90 is above 90 counts/hour",
   "severity": {
      "colour": "#FF0000",
      "value":"backend"
  }
}
```

**Example 2: Adding different tags to an incident**

```json
{
   "message": "Error rates higher than usual",
   "description": "HTTP Error rates for srv_90 is above 90 counts/hour",
   "tags" : {
      "severity": "high",
      "impact_level": 5,
   "classification": {
      "color":"#FF0000",
      "value":"backend"
    }
 	}
 }
```