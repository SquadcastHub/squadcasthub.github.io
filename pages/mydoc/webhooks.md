---
title: Outgoing Webhooks
tags:
keywords:
last_updated:
summary: "Use outbound webhooks to send incident information from Squadcast into other systems"
sidebar: mydoc_sidebar
permalink: docs/outgoing-webhooks
folder: mydoc
---

## Outgoing Webhooks

Webhooks allow you to connect a platform that you manage (either an API that you create by yourself, or a third party service) to a stream of future *events*.

Setting up a webhook on Squadcast enables you to receive information (referred to as *events*) from Squadcast as they happen. This can help you avoid continuously polling Squadcast's REST APIs or manually checking the Squadcast web/mobile application for desired information.

The rest of this document will explain how you can set up these webhooks, as well as list the events that can be sent to your webhook destinations.

{{site.data.alerts.yellow-note-i-md}}
**Note:**

This new feature is currently in `Beta` and is accessible in all of our [plans](https://squadcast.com/pricing). We will be enhancing the feature from time to time and the documentation around it is hence, subject to change. 

If you have queries or suggestions, please feel free to reach out to our [Support team](mailto:support@squadcast.com).

{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i-md}}
**Note:**

We also support generic incoming webhooks for incident creation. You can find detailed information on how to use those [here](https://support.squadcast.com/docs/apiv2).
{{site.data.alerts.end}}

## Prerequisites

Only the **Account Owner** and **Users** with the `Manage Webhook` permission will be able to *enable*, *disable* and *manage* webhooks in Squadcast.

If you do not have access to this feature, please contact your administrator to give you the right permissions for it.

Navigate to **Settings** > **Permissions** and enable the checkbox under **Webhooks** for the desired users.

![](images/webhooks_0.png)

## Setup a Webhook

**(1)** Navigate to **Settings > Webhooks**. Click on the **+** icon

![](images/webhooks_1.png)

**(2)** Enter a suitable name and click on **Create**

![](images/webhooks_2.png)

You can now proceed to configuring the newly created webhook.

## Supported Events

The webhook that you have configured can be triggered for certain events occurring in Squadcast. At the moment, the following incident-related events are supported:

- [Incident `triggered`](outgoing-webhooks#incident-triggered)
- [Incident `reassigned`](outgoing-webhooks#incident-reassigned)
- [Incident `acknowledged`](outgoing-webhooks#incident-acknowledged)
- [Incident `resolved`](outgoing-webhooks#incident-resolved)

![](images/webhooks_3.png)

You can choose multiple triggers for a webhook. Information is sent to the provided URLs if any of the triggers match.

If your use-case requires more Squadcast events to be supported, please reach out to our [Support team](mailto:support@squadcast.com) with details of the same.

## Communication Protocol for Webhooks

A webhook is called whenever the configured events occur in Squadcast.

A webhook call is made using the `HTTP POST` method to the URL(s) that were added when the webhook was configured, with a body that is encoded using `JSON`.

Squadcast expects that the server that responds to the webhook to return a `2xx` response code upon success. If a non-2xx response is received, **Squadcast will retry the request for a maximum of 3 times**. 

{{site.data.alerts.yellow-note-i-md}}
**Note:**

The exact details of the retry policy are currently not being tracked. This is subject to change during the Beta period.

{{site.data.alerts.end}}

## URLs and Headers

We support the addition of multiple URL endpoints, with `POST`, `PUT` and `PATCH` methods. Incident payloads will be sent to all the URL endpoints that are added. You can also configure *additional headers*. These headers will get attached to all the webhook calls that will be made based on this configuration. 

![](images/webhooks_4.png)

## Filters

You can filter on top of events from the **Services** and **Alert Sources** drop-downs, either by having an individual expression or a combination of expressions/expression groups.

![](images/webhooks_5.png)

## Logs

Once the webhook call has been made, you can view the logs for it in the **Logs** tab.

![](images/webhooks_6.png)

Click on the expand icon on any of the individual logs to view the payload that has been sent across.

![](images/webhooks_7.png)

## Additional Settings

Configure the **Name**, **Description** and **Failure Notification email** in the **Settings** tab. This is particularly helpful when you (or an administrator) would want to be notified for webhook-related failures.

![](images/webhooks_8.png)

## Use-cases for Webhooks

Webhooks can be leveraged in various scenarios. We have put together some common use-cases. 

They are:
- Building internal custom dashboards to visualize or analyze incidents
- Sending data to ticketing tools, such as Zendesk, Freshdesk, Shortcut, Asana, etc.
- Sending events to communication apps, such as Slack, MS Teams, etc.
- Alerting when a workflow is disrupted- then use the API to re-run the workflow
- Triggering internal notification systems to alert people when incidents are created/resolved
- Building your own automation plug-ins and tools

{{site.data.alerts.yellow-note-i-md}}
**Note:**

We will be coming up with *Webhook Connectors* soon, to show how our webhooks can be easily connected to other well known third party applications. 

If you need help with integrating your Squadcast account to a third party application using webhooks, please contact our [Support team](mailto:support@squadcast.com).

{{site.data.alerts.end}}

## Sample Webhook Payloads

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