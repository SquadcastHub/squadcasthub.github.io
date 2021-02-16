---
title: Checkly
#tags: [Logstash, ManageEngine-Opmanager]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Checkly"
sidebar: mydoc_sidebar
permalink: docs/checkly
folder: mydoc
---

This document will help you integrate Checkly with Squadcast.
 
[Checkly](https://checklyhq.com/) is an API monitoring and synthetic monitoring solution aimed at development and operations teams, giving teams a broad, deep and exact control over how APIs and web apps should be monitored.
Route detailed monitoring alerts from Checkly to the right users in Squadcast.

## How to integrate Checkly with Squadcast

### In Squadcast: Using Checkly as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Checkly** from  the **Alert Source** drop down menu and copy the webhook 

![](images/checkly_1.png)

### In Checkly: Create a Squadcast Webhook

**(1)** In the app, navigate to **Alert Settings** on the sidebar

![](images/checkly_2.png)

**(2)** Click on **Add more channels** to add the Webhook. Additionally, configure other Alert Settings that are available on this page based on your requirements

![](images/checkly_3.png)

**(3)** Select **Add channel** for **Webhook**

![](images/checkly_4.png)

**(4)** Fill in the details as indicated below:

  **(a)** Give it a meaningful name, such as *Squadcast Webhook*
  
  
  **(b)** Choose **POST** from the **Method** drop-down and paste the Webhook URL copied from Squadcast in the **URL** placeholder
  
  **(c)** Copy and paste the below template in **Body**
{% raw %}
```json
{
    "check_name": "{{CHECK_NAME}}",
    "check_id": "{{CHECK_ID}}",
    "check_type": "{{CHECK_TYPE}}",
    "message": "{{ALERT_TITLE}}",
    "alert_type": "{{ALERT_TYPE}}",
    "check_result_id": "{{CHECK_RESULT_ID}}",
    "response_time": "{{RESPONSE_TIME}}",
    "api_check_response_status_code": "{{API_CHECK_RESPONSE_STATUS_CODE}}",
    "api_check_response_status_text": "{{API_CHECK_RESPONSE_STATUS_TEXT}}",
    "run_location": "{{RUN_LOCATION}}",
    "link": "{{RESULT_LINK}}",
    "ssl_days_remaining": "{{SSL_DAYS_REMAINING}}",
    "ssl_check_domain": "{{SSL_CHECK_DOMAIN}}",
    "started_at": "{{STARTED_AT}}",
    "tags": [{{#each TAGS}} "{{this}}" {{#unless @last}},{{/unless}} {{/each}}],
    "region": "{{REGION}}",
    "uuid": "{{$UUID}}",
    "random_number": "{{$RANDOM_NUMBER}}"
}
```
{% endraw %}
  **(d)** Now, you can verify if the integration works fine by clicking on **Test webhook** which will create an incident in Squadcast
  
  **(e)** In the **Send when** section, choose **`a check fails`**, **`a check recovers`** without fail. The other two options, **`a check degrades`** and **`an SSL certificate is due to expire in a few days`** are optional, based on your requirement
  
  **(f)** Select the `checks` and `groups` that you want to add to this webhook channel as **Subscribers**
  
  **(g)** **Save webhook** configuration

![](images/checkly_5.png)

That is it, you are now good to go! Whenever an alert is triggered in Checkly, an incident will be created automatically in Squadcast. When an alert is resolved in Checkly, the corresponding incident will get **auto-resolved in Squadcast.**