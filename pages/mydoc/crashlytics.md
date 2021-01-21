---
title: Crashlytics
keywords: 
tags: [integration, crashlytics]
summary: "Send issues to Squadcast from Crashlytics (Fabric SDK)"
sidebar: mydoc_sidebar
permalink: docs/crashlytics
---

Follow the steps below to configure a service so as to get alerts from Crashlytics. Squadcast will then process the incidents for the service as per the users preferences.
 
## Using Crashlytics as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Crashlytics** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/crashlytics_1.png)

## Create a Squadcast Webhook in Crashlytics 

Now login to your Crashlytics (Fabric) account and go to the App Settings Page. 

Select an application for which you want to integrate crashlytics for. 

Under the **Service Hooks** tab, click on **WebHook**. Paste the URL that was generated earlier in the input box and click on the Verify button to check whether the service is validated.  

![](images/crashlytics_2.png)

Once verified, the Crashlytics alerts will be sent to Squadcast automatically.