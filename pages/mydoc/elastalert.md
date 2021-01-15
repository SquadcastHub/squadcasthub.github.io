---
title: ElastAlert
tags: [integration, elastalert]
keywords:
last_updated:
summary: "Get alerts from Elastic into Squadcast (using ElastAlert)"
sidebar: mydoc_sidebar
permalink: docs/elastalert.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Elastic.

Squadcast will then process this information to create incidents for this service as per your preferences.

{{site.data.alerts.blue-note}}
<b>Note: </b>
<br/><br/><p>In this document, we'll go through how to get alerts from <b>Elastic</b> to <b>Squadcast</b> using <i>ElastAlert</i>. If you're looking for how to get alerts from Elastic using <i>Watcher</i>, refer <a href="elastic.html">Elastic Watcher Docs - Squadcast</a>.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: </b>
<br/><br/><p>We'll be using _ElastAlert_ for getting alerts from Elastic. To know more about <i>ElastAlert</i>, refer <a href="https://elastalert.readthedocs.io/en/latest/" target=_blank>ElastAlert - Easy & Flexible Alerting With Elasticsearch</a>.</p>
{{site.data.alerts.end}}

## Using ElastAlert as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **ElastAlert** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/elastalert_1.png)

## Setup Squadcast Alerter in ElastAlert

For details about how to configure ElastAlert to send alerts, refer [Running ElastAlert for the First Time](https://elastalert.readthedocs.io/en/latest/running_elastalert.html).

Configuration variables in rules YAML file

```yaml
alert: post
http_post_url: <ElastAlert Webhook URL copied from Squadcast dashboard>
http_post_static_payload:
	Title: <Incident Title>
http_post_all_values: true
```

{{site.data.alerts.yellow-note-i}}
<b>Note: </b>
<br/><br/><p>You can make sure that the 'Incident Title Name' and 'ElastAlert Rule Name' be the same in order to help identify the rule that caused the alert easily. <br/><br/>However, this is not mandatory.</p>
{{site.data.alerts.end}}

![](images/elastalert_2.png)

For more details on **post** alert type, refer [HTTP Post Alert Type - ElastAlert](https://elastalert.readthedocs.io/en/latest/ruletypes.html#http-post).

Now, whenever an alert is triggered by ElastAlert according to the rules defined, it'll automatically create an incident in Squadcast. But, the resolving of incident needs to be done manually by going to Squadcast dashboard.