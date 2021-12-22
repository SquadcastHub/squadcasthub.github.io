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
  "id": "61c075f78589dca75fdb2f44",
  "event_type": "incident_triggered",
  "organization": {
    "id": "609b8e9978d2770008db8638",
    "name": "My Org"
  },
  "service": {
    "id": "61518af788792704697f3da0",
    "name": "email trigger",
    "slug": "email-trigger"
  },
  "alert_source": {
    "id": "5fae6d03ef87d3896aa92ad1",
    "type": "Squadcast UI",
    "short_name": "squadcastui"
  },
  "message": "CPU Throttling: Over 90% of cpu is being utilized",
  "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
  "status": "triggered",
  "created_at": "2021-12-20T12:24:23.11Z",
  "assigned_to": {
    "id": "609b8e9e78d2770008db8639",
    "name": "SRE and Devops Escalation Policy",
    "type": "escalationpolicy"
  },
  "tags": {
    "severity": {
      "value": "critical",
      "color": "#FF0A49"
    }
  },
  "timeline": [
    {
      "action": "triggered",
      "assigned_to": "escalationpolicy",
      "name": "SRE and Devops Escalation Policy",
      "time": "2021-12-20T12:24:23.077Z"
    }
  ],
  "analytics": {},
  "event_count": 1,
  "event_payload": {
    "assignee": {
      "id": "609b8e9e78d2770008db8639",
      "type": "escalationpolicy"
    },
    "created_by": "603360ce3aeae4de2b6edec1",
    "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
    "message": "CPU Throttling: Over 90% of cpu is being utilized",
    "tags": {
      "severity": {
        "color": "#FF0A49",
        "value": "critical"
      }
    }
  },
  "owner": {
    "id": "6129ac09518568defa927536",
    "name": "Default Team",
    "type": "team",
    "is_default_team": true,
    "team_description": "Default team"
  },
  "manually_created_by": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "David Brent",
    "email": "david@myorg.com"
  }
}
```

### Incident Reassigned

```json
{
  "id": "61c075f78589dca75fdb2f44",
  "event_type": "incident_reassigned",
  "organization": {
    "id": "609b8e9978d2770008db8638",
    "name": "My Org"
  },
  "service": {
    "id": "61518af788792704697f3da0",
    "name": "email trigger",
    "slug": "email-trigger"
  },
  "alert_source": {
    "id": "5fae6d03ef87d3896aa92ad1",
    "type": "Squadcast UI",
    "short_name": "squadcastui"
  },
  "message": "CPU Throttling: Over 90% of cpu is being utilized",
  "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
  "status": "triggered",
  "created_at": "2021-12-20T12:24:23.11Z",
  "assigned_to": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "Micheal Scott",
    "type": "user"
  },
  "tags": {
    "severity": {
      "value": "critical",
      "color": "#FF0A49"
    }
  },
  "timeline": [
    {
      "action": "triggered",
      "assigned_to": "escalationpolicy",
      "name": "SRE and Devops Escalation Policy",
      "time": "2021-12-20T12:24:23.077Z"
    },
    {
      "action": "reassigned",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T04:59:18.173Z"
    }
  ],
  "analytics": {
    "tta": {
      "time": 11475,
      "user_id": "603360ce3aeae4de2b6edec1",
      "escalation_policy_id": "609b8e9e78d2770008db8639"
    }
  },
  "event_count": 1,
  "event_payload": {
    "assignee": {
      "id": "609b8e9e78d2770008db8639",
      "type": "escalationpolicy"
    },
    "created_by": "603360ce3aeae4de2b6edec1",
    "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
    "message": "CPU Throttling: Over 90% of cpu is being utilized",
    "tags": {
      "severity": {
        "color": "#FF0A49",
        "value": "critical"
      }
    }
  },
  "owner": {
    "id": "6129ac09518568defa927536",
    "name": "Default Team",
    "type": "team",
    "is_default_team": true,
    "team_description": "Default team"
  },
  "manually_created_by": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "David Brent",
    "email": "david@myorg.com"
  }
}
```

### Incident Acknowledged

```json
{
  "id": "61c075f78589dca75fdb2f44",
  "event_type": "incident_acknowledged",
  "organization": {
    "id": "609b8e9978d2770008db8638",
    "name": "My Org"
  },
  "service": {
    "id": "61518af788792704697f3da0",
    "name": "email trigger",
    "slug": "email-trigger"
  },
  "alert_source": {
    "id": "5fae6d03ef87d3896aa92ad1",
    "type": "Squadcast UI",
    "short_name": "squadcastui"
  },
  "message": "CPU Throttling: Over 90% of cpu is being utilized",
  "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
  "status": "acknowledged",
  "created_at": "2021-12-20T12:24:23.11Z",
  "assigned_to": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "Micheal Scott",
    "type": "user"
  },
  "tags": {
    "severity": {
      "value": "critical",
      "color": "#FF0A49"
    }
  },
  "timeline": [
    {
      "action": "triggered",
      "assigned_to": "escalationpolicy",
      "name": "SRE and Devops Escalation Policy",
      "time": "2021-12-20T12:24:23.077Z"
    },
    {
      "action": "reassigned",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T04:59:18.173Z"
    },
    {
      "action": "acknowledged",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T05:05:23.129Z"
    }
  ],
  "analytics": {
    "tta": {
      "time": 11475,
      "user_id": "603360ce3aeae4de2b6edec1",
      "escalation_policy_id": "609b8e9e78d2770008db8639"
    }
  },
  "event_count": 1,
  "event_payload": {
    "assignee": {
      "id": "609b8e9e78d2770008db8639",
      "type": "escalationpolicy"
    },
    "created_by": "603360ce3aeae4de2b6edec1",
    "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
    "message": "CPU Throttling: Over 90% of cpu is being utilized",
    "tags": {
      "severity": {
        "color": "#FF0A49",
        "value": "critical"
      }
    }
  },
  "owner": {
    "id": "6129ac09518568defa927536",
    "name": "Default Team",
    "type": "team",
    "is_default_team": true,
    "team_description": "Default team"
  },
  "manually_created_by": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "David Brent",
    "email": "david@myorg.com"
  }
}
```

### Incident Resolved

```json
{
  "id": "61c075f78589dca75fdb2f44",
  "event_type": "incident_resolved",
  "organization": {
    "id": "609b8e9978d2770008db8638",
    "name": "My Org"
  },
  "service": {
    "id": "61518af788792704697f3da0",
    "name": "email trigger",
    "slug": "email-trigger"
  },
  "alert_source": {
    "id": "5fae6d03ef87d3896aa92ad1",
    "type": "Squadcast UI",
    "short_name": "squadcastui"
  },
  "message": "CPU Throttling: Over 90% of cpu is being utilized",
  "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
  "status": "resolved",
  "created_at": "2021-12-20T12:24:23.11Z",
  "assigned_to": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "Micheal Scott",
    "type": "user"
  },
  "tags": {
    "severity": {
      "value": "critical",
      "color": "#FF0A49"
    }
  },
  "timeline": [
    {
      "action": "triggered",
      "assigned_to": "escalationpolicy",
      "name": "SRE and Devops Escalation Policy",
      "time": "2021-12-20T12:24:23.077Z"
    },
    {
      "action": "reassigned",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T04:59:18.173Z"
    },
    {
      "action": "acknowledged",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T05:05:23.129Z"
    },
    {
      "action": "resolved",
      "assigned_to": "user",
      "name": "Micheal Scott",
      "time": "2021-12-21T05:11:34.219Z"
    }
  ],
  "analytics": {
    "tta": {
      "time": 11475,
      "user_id": "603360ce3aeae4de2b6edec1",
      "escalation_policy_id": "609b8e9e78d2770008db8639"
    },
    "ttr": {
      "time": 60431142,
      "user_id": "603360ce3aeae4de2b6edec1",
      "escalation_policy_id": "609b8e9e78d2770008db8639"
    }
  },
  "event_count": 1,
  "event_payload": {
    "assignee": {
      "id": "609b8e9e78d2770008db8639",
      "type": "escalationpolicy"
    },
    "created_by": "603360ce3aeae4de2b6edec1",
    "description": "Over 90% of cpu is being utilized from past 2 hours which is a drastic increase from before. Please checkout the metrics.",
    "message": "CPU Throttling: Over 90% of cpu is being utilized",
    "tags": {
      "severity": {
        "color": "#FF0A49",
        "value": "critical"
      }
    }
  },
  "owner": {
    "id": "6129ac09518568defa927536",
    "name": "Default Team",
    "type": "team",
    "is_default_team": true,
    "team_description": "Default team"
  },
  "manually_created_by": {
    "id": "603360ce3aeae4de2b6edec1",
    "name": "David Brent",
    "email": "david@myorg.com"
  }
}
```