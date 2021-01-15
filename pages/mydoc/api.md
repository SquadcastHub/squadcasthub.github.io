---
title: API
tags: [integration, api]
keywords:
last_updated:
summary: "Send events to Squadcast using an API"
sidebar: mydoc_sidebar
permalink: docs/api.html
folder: mydoc
---

You can use our API integration to send alerts to Squadcast in HTTP POST format. 

{{site.data.alerts.red-note}}
<b>Notice for API:</b>
<br/><br/><p>APIv2 is the new version of our alert source API. This also carries the option to resolve through the API call.<br/><br/><b>API</b> will soon be deprecated in favour of <b>APIv2</b> but is currently still functional.<br/><br/>Please use APIv2 from the Integration Type dropdown for any new alert source API integrations and not API.  If you are using the old API, please migrate it to the latest API (APIv2) and update your Webhook URLs.<br/><br/>To know more about APIv2, refer to this <a href="apiv2.html">documentation</a>.</p>
{{site.data.alerts.end}}

## Using API as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **API** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/api_1.png)

- Use the Webhook URL to send a HTTP POST request

For example:
<code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important; overflow-wrap: break-word;">https://api.squadcast.com/v1/incidents/create/d3c3208e86b787faf2ec01c154ed024081dc0fda</code>

Please make sure that the request header is "**Content-type**":"**application/json**"

The body of the POST request should contains the details of your incidents in the following format:

```json
{
   "message":"This will be the incident message",
   "description": "This will be the incident description"
}
```

## Add a Tag From Incident JSON

This section will give you an understanding of how you can add tags to an incidents straight from the Incident JSON using our API. 

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
{{site.data.alerts.note}}
<br/><br/><p>If a colour code isn't explicitly mentioned,  then the system takes the default colour "<b>#808080</b>" for the tag</p>
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