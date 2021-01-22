---
title: Incident API
tags: [integration, api]
last_updated:
keywords:
summary: "Send events to Squadcast using version 2 of the alerts API (APIv2)"
sidebar: mydoc_sidebar
permalink: docs/apiv2
folder: mydoc
---

You can use the version 2 of our API integration (APIv2) to trigger and resolve incidents in Squadcast through HTTP POST.

## Using APIv2 as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **APIv2** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/apiv2_1.png)

- Use the integration Webhook URL shown to send a HTTP POST request

For example:
<code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important; overflow-wrap: break-word;">https://api.squadcast.com/v2/incidents/api/d3c3208e86b787faf2ec01c154ed024081dc0fda</code>

Please make sure to add a header `Content-Type` with the value `application/json`

The body of the POST request should contains the details of your incidents in the following format:

```json
{
  "message": "This will be the incident message",
  "description": "This will be the incident description",
  "tags" : {
    "tagname1":"Tag value#1",
     "tagname2":"Tag value#2",
     "tagname3": {
       "color": "Valid HTML HEX Colour Notation goes here",
       "value":"Tag value#3"
     }
  },
  "status": "trigger",
  "event_id": "6"
}
```

{{site.data.alerts.blue-note}}
<b>Mandatory Fields: </b>
<br/><br/><p>The <b>message</b> and <b>description</b> fields are mandatory to create an incident. You can choose to add the other details to add more context to the incident.</p>
{{site.data.alerts.end}}

## Event Identification & Resolution

This section will give you an understanding of how one can associate alerts with Squadcast incidents and resolve them with an API call. 

### Typical Incident JSON:

```json
{
  "message": "This will be the incident message",
  "description": "This will be the incident description",
  "status": "trigger",
  "event_id": "6"
}
```

This creates an incident and associates that incident with the `event_id` value . This `event_id` can be used to resolve the above created incident with an API call.

To resolve an incident, the following JSON payload should be sent. 

```json
{
  "status": "resolve",
  "event_id": "6"
}
```

- The `status` field should be `"resolve"` 
- The associated `event_id` should also be sent along with this


{{site.data.alerts.blue-note}}
<b>Resolving an Incident with an API call: </b>
<br/><br/><p>To resolve an incident, <b>message</b> and <b>description</b> fields are not required to be sent.</p>
{{site.data.alerts.end}}

## Add a Tag From Incident JSON

This section will give you an understanding of how you can add tags to an incidents straight from the Incident JSON using our APIv2.

### Typical Incident JSON:

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
}
```

### Example Tagging Rules

Using Tags to Set Severity:

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
<b>Default colour for Tags: </b>
<br/><br/><p>If a colour code isn't explicitly mentioned, then the system takes the default colour "<b>#808080</b>" for the tag</p>
{{site.data.alerts.end}}

Assigning Colours to Tags:

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

Different ways of tagging incident:

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