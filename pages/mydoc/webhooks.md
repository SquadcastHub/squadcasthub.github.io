---
title: Outgoing Webhooks
tags:
keywords:
last_updated:
summary: "Receive alerts from squadcast in your service"
sidebar: mydoc_sidebar
permalink: docs/webhooks
folder: mydoc
---

A webhook allows you to connect a platform you manage (either an API you create yourself, or a third party service) to a stream of future _events_.

Setting up a webhook on Squadcast enables you to receive information (referred to as _events_) from Squadcast, as they happen. This can help you avoid polling the API or manually checking the Squadcast web application for desired information.

The rest of this document will detail how to set up a webhook as well as the shape of events that will be sent to your webhook destination.

**Note:** The webhooks feature on Squadcast is currently in beta; documentation and features may change or be added to.

## Prerequisites

- Only the Account Owner and Users with the `Manage Webhook` permission will be able to enable, disable and manage webhooks in Squadcast

If you don’t have access to the Webhooks feature, please contact your administrator to give you webhook permissions.

![](images/webhooks_0.png)

## Setting up a webhook

Go to **Settings > Webhooks**

**(1)** Click on the **+** icon

![](images/webhooks_1.png)

**(2)** Enter a suitable name and click on **Create**

![](images/webhooks_2.png)

## Supported events

The following events are supported at the moment, if you need more events to be added, please reach out to our support team with your use case.

- Incident Triggered
- Incident Acknowledged
- Incident Reassigned
- Incident Resolved

![](images/webhooks_3.png)

You can choose multiple triggers, a new event is sent for the provided URLs if any of the trigger matches.

## Communication protocol with webhooks

A webhook is sent whenever the configured events occur on the Squadcast platform.

A webhook is sent using an HTTP POST to the URL(s) that was registered when the webhook was created, with a body encoded using JSON.

Squadcast expects that the server that responds to a webhook will return a 2xx response code. If a non-2xx response is received, squadcast will retry the request for a maximum of 3 times. The exact details of the retry policy are not currently documented, and are subject to change during the beta period.

## URLs and headers

We support multiple URLs, with POST, PUT and PATCH methods, any alert generated will be sent to all the URLs, you can also configure additional headers and the header will get attached to all the webhooks that will be sent based on this configuration. 

![](images/webhooks_4.png)

## Filters

You can filter events from services and alert sources, either by individual expression or a combination of expression and expression groups

![](images/webhooks_5.png)

## Logs

Once the webhook has been sent, you can view the logs in the **Logs** tab, 

![](images/webhooks_6.png)

Click on the expand icon on any logs to view the payload 

![](images/webhooks_7.png)

## Settings

Configure name description and Failure notification email in the settings tab

![](images/webhooks_8.png)

## Use cases for webhooks

Webhooks can be leveraged for various purposes. Some possible use cases for webhooks might include:

- Building a custom dashboard to visualize or analyze incidents.
- Sending data to ticketing tools, such as Zendesk, Freshdesk, Shortcut, Asana etc.
- Sending events to communication apps, such as Slack, MS Teams etc,.
- Alerting when a workflow is cancelled, then using the API to rerun the workflow.
- Triggering internal notification systems to alert people when incidents are created / resolved.
- Building your own automation plugins and tools.

We will be coming up with Squadcast webhook connectors soon to show how webhooks can be connected to other well known 3rd party applications. If you need help with integrating into a 3rd party application, please contact our support team and we’ll help you set it up.

## Sample webhook payloads
### Incident Triggered

```json
{
   "event_type":"incident_triggered",
   "id":"619cba1e749fd801ea1cd439",
   "organization_id":"604592dabc35ea0008bb0584",
   "service_id":"617411eac6991e7406f95ec6",
   "service":{
      "id":"617411eac6991e7406f95ec6",
      "name":"Team 2 Service 1",
      "slug":"team-2-service-1"
   },
   "alert_source_id":"6077f7225fdc7075e371685f",
   "alert_source":{
      "id":"6077f7225fdc7075e371685f",
      "type":"Squadcast UI",
      "short_name":"squadcastui"
   },
   "message":"Sample incident for testing webhooks",
   "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
   "status":"triggered",
   "time_of_creation":"2021-11-23T09:53:34.626Z",
   "assigned_to":[
      {
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy",
         "time_of_assignment":"2021-11-23T09:53:34.626Z"
      }
   ],
   "tags":null,
   "timeline":[
      {
         "action":"triggered",
         "assigned_to":"escalationpolicy",
         "id":"617411dcc6991e7406f95ec5",
         "time":"2021-11-23T09:53:34.318Z"
      }
   ],
   "analytics":{
      
   },
   "created_by":"5ecf49257bae6c0008a7ae66",
   "event_count":1,
   "incident_payload":null,
   "owner":{
      "id":"617411a8c6991e7406f95ec0",
      "type":"team"
   }
}
```

### Incident Reassigned

```json
{
   "event_type":"incident_reassigned",
   "id":"619cba1e749fd801ea1cd439",
   "organization_id":"604592dabc35ea0008bb0584",
   "service_id":"617411eac6991e7406f95ec6",
   "service":{
      "id":"617411eac6991e7406f95ec6",
      "name":"Team 2 Service 1",
      "slug":"team-2-service-1"
   },
   "alert_source_id":"6077f7225fdc7075e371685f",
   "alert_source":{
      "id":"6077f7225fdc7075e371685f",
      "type":"Squadcast UI",
      "short_name":"squadcastui"
   },
   "message":"Sample incident for testing webhooks",
   "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
   "status":"triggered",
   "time_of_creation":"2021-11-23T09:53:34.626Z",
   "assigned_to":[
      {
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy",
         "time_of_assignment":"2021-11-23T09:53:34.626Z"
      },
      {
         "id":"5e1c2309342445001180f9c2",
         "type":"user",
         "time_of_assignment":"2021-11-23T09:55:50.634Z"
      }
   ],
   "tags":null,
   "timeline":[
      {
         "action":"triggered",
         "assigned_to":"escalationpolicy",
         "id":"617411dcc6991e7406f95ec5",
         "time":"2021-11-23T09:53:34.318Z"
      },
      {
         "action":"reassigned",
         "assigned_to":"user",
         "id":"5e1c2309342445001180f9c2",
         "time":"2021-11-23T09:55:50.634Z"
      }
   ],
   "analytics":{
      
   },
   "created_by":"5ecf49257bae6c0008a7ae66",
   "event_count":1,
   "incident_payload":{
      "assignee":{
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy"
      },
      "created_by":"5ecf49257bae6c0008a7ae66",
      "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
      "message":"Sample incident for testing webhooks",
      "tags":{
         "incident-type":{
            "color":"#00A96B",
            "value":"demo-incident"
         }
      }
   },
   "owner":{
      "id":"617411a8c6991e7406f95ec0",
      "type":"team"
   }
}
```

### Incident Acknowledged

```json
{
   "event_type":"incident_acknowledged",
   "id":"619cba1e749fd801ea1cd439",
   "organization_id":"604592dabc35ea0008bb0584",
   "service_id":"617411eac6991e7406f95ec6",
   "service":{
      "id":"617411eac6991e7406f95ec6",
      "name":"Team 2 Service 1",
      "slug":"team-2-service-1"
   },
   "alert_source_id":"6077f7225fdc7075e371685f",
   "alert_source":{
      "id":"6077f7225fdc7075e371685f",
      "type":"Squadcast UI",
      "short_name":"squadcastui"
   },
   "message":"Sample incident for testing webhooks",
   "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
   "status":"acknowledged",
   "time_of_creation":"2021-11-23T09:53:34.626Z",
   "assigned_to":[
      {
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy",
         "time_of_assignment":"2021-11-23T09:53:34.626Z"
      },
      {
         "id":"5e1c2309342445001180f9c2",
         "type":"user",
         "time_of_assignment":"2021-11-23T09:55:50.634Z"
      },
      {
         "id":"5ecf49257bae6c0008a7ae66",
         "type":"user",
         "time_of_assignment":"2021-11-23T09:56:54.582Z"
      }
   ],
   "tags":null,
   "timeline":[
      {
         "action":"triggered",
         "assigned_to":"escalationpolicy",
         "id":"617411dcc6991e7406f95ec5",
         "time":"2021-11-23T09:53:34.318Z"
      },
      {
         "action":"reassigned",
         "assigned_to":"user",
         "id":"5e1c2309342445001180f9c2",
         "time":"2021-11-23T09:55:50.634Z"
      },
      {
         "action":"acknowledged",
         "assigned_to":"user",
         "id":"5ecf49257bae6c0008a7ae66",
         "time":"2021-11-23T09:56:54.582Z"
      }
   ],
   "analytics":{
      "tta":{
         "time":200264,
         "user_id":"5ecf49257bae6c0008a7ae66",
         "escalation_policy_id":"617411dcc6991e7406f95ec5"
      }
   },
   "created_by":"5ecf49257bae6c0008a7ae66",
   "event_count":1,
   "incident_payload":{
      "assignee":{
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy"
      },
      "created_by":"5ecf49257bae6c0008a7ae66",
      "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
      "message":"Sample incident for testing webhooks",
      "tags":{
         "incident-type":{
            "color":"#00A96B",
            "value":"demo-incident"
         }
      }
   },
   "owner":{
      "id":"617411a8c6991e7406f95ec0",
      "type":"team"
   }
}
```

### Incident Resolved

```json
{
   "event_type":"incident_resolved",
   "id":"619cba1e749fd801ea1cd439",
   "organization_id":"604592dabc35ea0008bb0584",
   "service_id":"617411eac6991e7406f95ec6",
   "service":{
      "id":"617411eac6991e7406f95ec6",
      "name":"Team 2 Service 1",
      "slug":"team-2-service-1"
   },
   "alert_source_id":"6077f7225fdc7075e371685f",
   "alert_source":{
      "id":"6077f7225fdc7075e371685f",
      "type":"Squadcast UI",
      "short_name":"squadcastui"
   },
   "message":"Sample incident for testing webhooks",
   "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
   "status":"resolved",
   "time_of_creation":"2021-11-23T09:53:34.626Z",
   "assigned_to":[
      {
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy",
         "time_of_assignment":"2021-11-23T09:53:34.626Z"
      },
      {
         "id":"5e1c2309342445001180f9c2",
         "type":"user",
         "time_of_assignment":"2021-11-23T09:55:50.634Z"
      },
      {
         "id":"5ecf49257bae6c0008a7ae66",
         "type":"user",
         "time_of_assignment":"2021-11-23T09:56:54.582Z"
      }
   ],
   "tags":null,
   "timeline":[
      {
         "action":"triggered",
         "assigned_to":"escalationpolicy",
         "id":"617411dcc6991e7406f95ec5",
         "time":"2021-11-23T09:53:34.318Z"
      },
      {
         "action":"reassigned",
         "assigned_to":"user",
         "id":"5e1c2309342445001180f9c2",
         "time":"2021-11-23T09:55:50.634Z"
      },
      {
         "action":"acknowledged",
         "assigned_to":"user",
         "id":"5ecf49257bae6c0008a7ae66",
         "time":"2021-11-23T09:56:54.582Z"
      },
      {
         "action":"resolved",
         "assigned_to":"user",
         "id":"5ecf49257bae6c0008a7ae66",
         "time":"2021-11-23T09:57:39.769Z"
      }
   ],
   "analytics":{
      "tta":{
         "time":200264,
         "user_id":"5ecf49257bae6c0008a7ae66",
         "escalation_policy_id":"617411dcc6991e7406f95ec5"
      },
      "ttr":{
         "time":245451,
         "user_id":"5ecf49257bae6c0008a7ae66",
         "escalation_policy_id":"617411dcc6991e7406f95ec5"
      }
   },
   "created_by":"5ecf49257bae6c0008a7ae66",
   "event_count":1,
   "incident_payload":{
      "assignee":{
         "id":"617411dcc6991e7406f95ec5",
         "type":"escalationpolicy"
      },
      "created_by":"5ecf49257bae6c0008a7ae66",
      "description":"This is a sample incident created for testing outgoing webhooks feature in Squadcast using the Squadcast web UI.\nThe payload might differ slightly for other alert sources.",
      "message":"Sample incident for testing webhooks",
      "tags":{
         "incident-type":{
            "color":"#00A96B",
            "value":"demo-incident"
         }
      }
   },
   "owner":{
      "id":"617411a8c6991e7406f95ec0",
      "type":"team"
   }
}
```