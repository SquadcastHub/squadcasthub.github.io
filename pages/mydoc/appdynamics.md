---
title: AppDynamics
tags: [integration, appdynamics]
keywords:
summary: "Get Alerts into Squadcast from AppDynamics"
sidebar: mydoc_sidebar
permalink: docs/appdynamics.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from AppDynamics. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using AppDynamics as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **AppDynamics** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/appdynamics_1.png)

## Create a HTTP Request Template in AppDynamics
In AppDynamics dashboard, click on Alert & Respond menu, then select HTTP Request Templates and click the New button.

![](images/appdynamics_2.png)

In the Create HTTP Request Template box, enter an appropriate Name such as Squadcast Integration Template and then add a Custom Templating Variable named `sc_event_type` and the default value as `triggered`. 

In the Request URL section, select the Method as **POST** and paste the URL you have obtained from the previous section into Raw URL and URL Encoding as **UTF-8** and in the Authentication section, select the Type as **NONE**.

![](images/appdynamics_3.png)

In the Payload section, select the MIME Type as `application/json` and Payload Encoding as `UTF-8` and in the payload body, paste the below JSON.

```json
{    
   "incident_key": "${latestEvent.node.name} - ${latestEvent.application.name}",
   "event_type": "${sc_event_type}",
   "description": "${latestEvent.displayName} on ${latestEvent.node.name}",
   "client": "AppDynamics",
   "client_url": "${controllerUrl}",
   "details": {
 "event_name": "${latestEvent.displayName}",
 "summary": "${latestEvent.summaryMessage}",
 "event_id": "${latestEvent.id}",
 "guid": "${latestEvent.guid}",
 "event_time": "${latestEvent.eventTime}",
 "event_type": "${latestEvent.eventType}",
 "event_type_key": "${latestEvent.eventTypeKey}",
 "application_name": "${latestEvent.application.name}",
 "node_name": "${latestEvent.node.name}",
 "message": "${latestEvent.eventMessage}",
 "severity": "${latestEvent.severity}"
   },
   "contexts":[
 {
   "type": "image",
   "src": "${latestEvent.severityImage.deepLink}",
   "alt": "${latestEvent.severity}"
 },
 {
   "type": "link",
   "href": "${latestEvent.deepLink}",
   "text": "View this transaction in AppDynamics"
 }
   ]
}
```

![](images/appdynamics_4.png)

In the Response Handling Criteria section, click on Add Success Criteria button and select the Status Code as 200 and check the Expect Payload checkbox and select the Content Type as `application / json `

In the Settings section, check the One Request Per Event checkbox and click the **Save** button.

## Create Trigger and Resolve Actions in AppDynamics
Go to Actions and then create a New Action,  and then in the Create Action box, select Make an HTTP Request radio button and select OK.

![](images/appdynamics_5.png)

In the Create HTTP Action box, enter the name as **Squadcast - Triggered** and select the HTTP Request Template which we have saved earlier as Squadcast Integration Template and click the **Save** button.

![](images/appdynamics_6.png)

Create one more action with name as **Squadcast - Resolved** and select the same HTTP Template and change the value of `sc_event_type` to `resolved` and click on the **Save** button.

![](images/appdynamics_7.png)

## Assign Actions to Policies
Now you have to setup policies and assign actions to them such that when those alerts are fired, the corresponding action will be initiated.

Ideally assign the Squadcast - Triggered action to all Critical or Warning events which has started and assign the Squadcast - Resolved action to all Critical or Warning events which was cancelled or ended, so that the incidents can be **Auto-Resolved** in Squadcast when those events end.

![](images/appdynamics_8.png)

That's it! Now you AppDynamics integration is good to go and incidents will be created and resolved in Squadcast based on your AppDynamics policies.