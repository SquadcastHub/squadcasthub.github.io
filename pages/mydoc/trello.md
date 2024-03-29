---
title: Trello
keywords: 
last_updated: 
summary: "Send events to Squadcast from Trello"
sidebar: mydoc_sidebar
permalink: docs/trello
folder: mydoc
published: true
---

This document will help you integrate Trello with Squadcast.

[Trello](https://trello.com/) is a web-based, Kanban-style, list-making application and is developed by Trello Enterprise, a subsidiary of Atlassian.

Route detailed events from Trello to the right users in Squadcast.

## How to integrate Trello with Squadcast

### In Squadcast: Using Trello as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Trello** from the Alert Source drop-down and copy the Webhook URL 

![](images/trello_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

### In Trello: Create a Squadcast Webhook

You can configure a webhook for either a Group or a Project in Trello. 

**Note**: To set up the Squadcast webhook URL, there is no GUI interface in Trello. You can do this by using either of the 2 approaches mentioned below.

### Approach 1:

You can trigger the webhook by calling it from any application that interacts with HTTP(S) APIs, such as [Postman](https://www.postman.com/), [Insomnia](https://docs.insomnia.rest/insomnia/get-started), etc.

We have considered setting up the webhook by using Postman. Here:

![](images/trello_2.png)

- Select request type as `POST`

- Paste the URL below in the placeholder for URL
```
https://api.trello.com/1/webhooks?key=YOUR_KEY&token=YOUR_TOKEN&callbackURL=PREVIOUSLY_COPIED_WEBHOOK_URL&idModel=YOUR_idList
```

- For the fields `key`, `token` and `idList`, paste the values as applicable

    - Find your `key` and `token` [here](https://trello.com/app-key)

    - To see your `idList`, open any **card** > click on **Share** > click on **Export JSON** > Find `idList` from the JSON

    ![](images/trello_3.png)

- `callbackURl` - paste the previously copied Squadcast webhook URL

**NOTE:** After the `POST` request is made, please ensure that the **status** of the request should return `200 OK`.

![](images/trello_4.png)

### Approach 2:

Run below `curl` command after replacing the `YOUR_KEY`, `YOUR_TOKEN`, `PREVIOUSLY_COPIED_WEBHOOK_URL` and `YOUR_idList` fields with `key`, `token`, `callbackURL` and `idList` (as mentioned in the previous approach)

```
curl --request POST 'https://api.trello.com/1/webhooks?key=YOUR_KEY&token=YOUR_TOKEN&callbackURL=PREVIOUSLY_COPIED_WEBHOOK_URL&idModel=YOUR_idList'
```

**NOTE:** After the `curl` request is made, if the request was not successful, you will see this as your response:
```
{"message":"URL (https://webhook.site/df59081f-1ba5-4f4d-b93d-ad4b8efbacbac) did not return 200 status code, got 404","error":"ERROR"}
```

{{site.data.alerts.yellow-note-i-md}}
**Important:**

Understanding how the integration works:

Since Trello allows users to create and define new lists/columns within each board, the integration considers and works only as per the available defaults. When a user creates a new board, there are 3 columns by default - **To Do**, **Doing** and **Done**.

- Trigger a new incident:

When a new card is added under the **To Do** list, an incident is triggered in Squadcast for it

- Resolve an existing incident:

When a card is moved to the **Done** list, the corresponding incident will get automatically resolved in Squadcast

In case of any queries, please feel free to reach out to our [Support team](mailto:support@squadcast.com).

{{site.data.alerts.end}}

That is it, you are good to go! Everytime a card is created in Trello, an incident for it would be triggered in Squadcast. When the card is marked as done in Trello, the corresponding incident for it will be automatically resolved in Squadcast.