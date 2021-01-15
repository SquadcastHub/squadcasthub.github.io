---
title: Instana
tags: [integration, instana]
keywords: 
last_updated: 
summary: "Get alerts from Instana into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/instana.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Instana.

Squadcast will then process this information to create incidents for this service as per your preferences.


## Using Instana as an Alert Source in Squadcast

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Instana** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/instana_1.png)

## Create a Squadcast Webhook in Instana

{{site.data.alerts.blue-note}}
<b>Pre-Requisites: </b>
<br/><br/><p>1. You need have Instana agent setup on your host. Refer <a href="https://docs.instana.io/quick_start/agent_setup/" target=_blank>Agent Setup</a>.<br/>
2. You need to have Alerting configured in Instana as per your requirements. Refer <a href="https://docs.instana.io/quick_start/alerting/" target=_blank>Alerting</a></p>
{{site.data.alerts.end}}

1.Login to your Instana web dashboard and click on **Settings** button on the sidebar.

![](images/instana_2.png)

2.Select the **Team Settings** tab. 

![](images/instana_3.png)

3.Go to **Alert Channels**  in **EVENTS & ALERTS** section. 

![](images/instana_4.png){: style="max-width: 30%;" }

4. Click on **Add Alert Channel**.

![](images/instana_5.png)

5.Select **Webhooks** option.

6.Enter a suitable Name for the webhook and paste the webhook URL copied from the Squadcast dashboard in the **Webhook URLs** field. Then click on **Create**. 

![](images/instana_6.png)

7.Now, go to **Alerts**.

![](images/instana_7.png){: style="max-width: 30%;" }

8.If you have't set up any alerts, refer to the Instana documentation to for [Alerting](https://docs.instana.io/quick_start/alerting/). Once you have an alert setup, click on it.

![](images/instana_8.png)

9.Scroll down to **4. Alerting** section and click on **Add Alert Channels**. 

![](images/instana_9.png)

10.Tick the Squadcast webhook alert channel that you had set up in the earlier steps, and click on **Add Channel**. 

![](images/instana_10.png)

11.Finally, click on the **Save** button.

![](images/instana_11.png)

Now, whenever Instana sends an alert with status **OPENED** on the Squadcast webhook, an Incident gets created in Squadcast.
Similarly, when Instana sends an alert with status **CLOSED** on the Squadcast webhook, the corresponding triggered incident in Squadcast gets resolved.