---
title: Event Tagging
audience:
tags: [event tagging]
keywords:
summary: "Event tagging can help you add relevant information to incoming incidents to make it more context-rich for the user"
last_updated:
sidebar: mydoc_sidebar
permalink: docs/event-tagging
folder: mydoc
---

Event tagging can help you add relevant information to incoming incidents to make it more context-rich for the user. 

## Auto Tagging Events

For each service, you can define your rule for event tagging.

You can set this up by going to app.squadcast.com. 
 - Go to the relevant service
 - Click on the options dropdown 
 - Choose Tagging Rules 

![](images/tagging_1.png)

 - Choose Alert Source from the Dropdown

![](images/tagging_2.png)

You can add your tagging rule expression in the field "Tagging rule" and then add the tag key value pairs. You can select a colour of your choice for a tag key value by clicking on the circular colour button at the start of the map row. You can add as many tags by clicking on the "Add new mapping" button. 

You can also add as many rules and configure as many key value mappings for each of these rules. 

![](images/tagging_3.png)

{{site.data.alerts.blue-note}}
<b>UPDATE: Multiple Alert Source:</b>
<br/><br/><p>We can see alert payloads of past events from different alert sources for the service by selecting the respective alert source from the dropdown in the right-half side.<br/><br/>
Now you can have tagging rules for a service specific to an alert source by making use of the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source</code> field which lets you know the alert source that triggered the incoming event.<br/><br/>
For example, if you want to have a tagging rule for a service, only for alerts coming for <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">jira-plugin</code> alert source, then the corresponding rule would look something like: <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">source == 'jira-plugin' && (&lt;your_tagging_rule&gt;)</code></p>
{{site.data.alerts.end}}

The tags will be visible against an incident in the incident dashboard and the incident details page.

![](images/tagging_4.png)

![](images/tagging_5.png)

{{site.data.alerts.blue-note}}
<b>Rule Evaluation Method:</b>
<br/><br/><p>Every rule will be evaluated and all the tags of the matching rules will be attached to the incident.</p>
{{site.data.alerts.end}}

## Syntax for rules

The rule engine supports expressions with parameters, arithmetic, logical, and string operations.
 - Basic expression: `10 > 0`, `1+2`, `100/3`
 - Parameterized expression: `payload.metric == "disk"`
    The available parameters are `payload`
      + `payload` : This parameter contains the JSON payload of an incident which will be the same as the JSON payload format for the future events. 
 - Regular expression: `re(payload.metric, "disk.*")`
     This can be used to check if a particular JSON payload field matches a regular expression.
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
  "source": "jira-plugin"
}
```

**Use Case: Setting Severity as a Tag** 

Assuming a case where disk usage events need to be prioritised: 

When the disk usage is greater than 90% - `critical` and `state` tag is `alerting`
When the disk usage is between 60 - 90% - `high`
When the disk usage is less than 60% - `low`


Create 3 rules with the following configuration

**Rules**

Critical: `payload.value  > 90 && jsonPath(payload.tags, "state") == "alerting"` 
High: `payload.value > 60 && payload.value < 90`
Low: `payload.value < 60`

## Manual Tagging

### Adding Tags to a Manually Triggered Incident 

When you create an incident manually via the **+** button, by default, you will have the option to add **Tags** to an incident. You can do so by assigning the `tag name` and `tag value` in the text fields provided and you can also change the tag color by clicking on the blue circle. You can also add multiple tags by clicking on the **Add Tag** option provided on the screen.

![](images/tagging_6.png)

### Updating Tags to an Existing Incident

You can choose to update tags for an existing incidents as well. 

In order to do this, go to the Incident details page and click on the **More Icon** (three dots) against the Incident Message space of the page and click on **Update Tags**. 

![](images/tagging_7.png)

You can then assign the `tag name` and `tag value` in the text fields provided and you can also change the tag color by clicking on the color circle. You can also add multiple tags by clicking on the **Add Tag** option provided on the screen. 

![](images/tagging_8.png)

The updated tags will now reflect on the Incident Details page. 

![](images/tagging_9.png)

### Add a Tag From Incident JSON

This section will give you an understanding of how you can add tags to an incidents straight from the Incident JSON using our API. 

**Typical Incident JSON:**

```
{
   "message":"This will be the incident message",
   "description": "This will be the incident description"
   "tags": {
     "tagname1":"Tag value#1"
     "tagname2":"Tag value#2"
     "tagname3": {
       "color": "Valid HTML HEX Colour Notation goes here"
       "value":"Tag value#3"
   }
}
```

**Example Tagging Rules**

Using Tags to Set Severity:

```
{
   "message": "Error rates higher than usual",
   "description": "HTTP Error rates for srv_90 is above 90 counts/hour",
   "tags": {
      "severity": "high"
    }
}
```

{{site.data.alerts.blue-note}}
<b>Note:</b>
<br/><br/><p>If a colour code isn't explicitly mentioned,  then the system takes the default colour "<b>#808080</b>" for the tag</p>
{{site.data.alerts.end}}

Assigning Colours to Tags:

```
{
   "message": "Error rates higher than usual",
   "description": "HTTP Error rates for srv_90 is above 90 counts/hour",
   "severity": {
      "colour": "#FF0000",
      "value":"backend"
  }
}
```

Different ways of tagging incident:

```
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

## How-to-Video: Update Tags Manually

<iframe width="560" height="315" src="https://www.youtube.com/embed/xsvaIHqyjjQ?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>