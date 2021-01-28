---
title:  Email
tags: [integration, email]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast via Email"
sidebar: mydoc_sidebar
permalink: docs/email
folder: mydoc
---

Route alerts into Squadcast using Email endpoints of Services from platforms that support Email integrations.

## In Squadcast: Using Email as an Alert Source

**(1)** On the **Sidebar**, click on **Services** 

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Email** from the **Alert Source** drop down menu and copy the Email address

![](images/email_1.png)

## In the external platform which you are using: Configure the Email endpoint

Head over to the platform from where you want to route alerts into Squadcast. Navigate to the section where you can *configure the Email endpoint/integration*. Then, paste the copied Email address in the right placeholder and test this integration, if there is a provision to do so, and validate that the integration works. 

That's it, your Email integration is now good to go!

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>The Incident Message will be the subject of the Email and the Incident Description will contain the body of the Email</p>
{{site.data.alerts.end}}

## How-to: Configure the Email Prefix for a new Service

**(1)** On the **Sidebar**, click on **Services** 

![](images/integration_1-1.png)

**(2)** Select **Add service** 

![](images/integration_1-2.png)

**(3)** Add the details in the box as required along with configuring the **Email Prefix**

![](images/email_2.png)

**(4)** Click on **Save** to create the new Service with an Email Prefix of your choice

![](images/email_3.png)

## How-to: Rename the Email Prefix for an existing Service

**(1)** On the **Sidebar**, click on **Services** 

![](images/integration_1-1.png)

**(2)** For the Service for which you want to rename the Email prefix, click on the **Edit** option

![](images/email_4.png)

**(3)** Select **Edit** in the drop-down

![](images/email_5.png)

**(4)** Replace the existing prefix with the prefix of your choice in the placeholder for **Email Prefix**

![](images/email_6.png)

**(5)** Click on **Save**

![](images/email_7.png)

Now, whenever an Email is sent to the Email address of the Service, Squadcast will trigger an incident for it.

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>This integration does not support <b>auto-resolution</b> of incidents. If the platform you are using resolves an alert, you will have to manually resolve the corresponding incident in Squadcast via the <a href="https://www.app.squadcast.com">web app</a> or the <a href="using-the-mobile-app">Squadcast mobile app</a></p>
{{site.data.alerts.end}}