---
title: LibreNMS
#tags: [New-Relic, OverOps]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from LibreNMS"
sidebar: mydoc_sidebar
permalink: docs/librenms
folder: mydoc
---

This document will help you integrate LibreNMS with Squadcast.

[LibreNMS](https://librenms.org/) is an auto-discovering PHP/MySQL-based network monitoring system.

Route detailed monitoring alerts from LibreNMS to the right users in Squadcast.

## How to integrate LibreNMS with Squadcast

### In Squadcast: Using LibreNMS as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **LibreNMS** from  the **Alert Source** drop down menu and copy the Webhook URL

![](images/librenms_1.png)

### In LibreNMS: Add a Squadcast Webhook

**(1)** From the home page, click on the **Alerts** tab on the top

![](images/librenms_2.png)

**(2)** Select **Alert Transports**

![](images/librenms_3.png)

**(3)** Click on **Create alert transport**

![](images/librenms_4.png)

**(4)** Next:

- Give the Alert Transport a **Name**
- Choose **Transport type** as `Api`
- **Default alert** is toggled to `ON`
- Choose **API Method** as `POST`
- In the placeholder for **API URL**, paste the copied Webhook from Squadcast
- In **Options**, add the template below **as is**:

{% raw %}
```json
device_id={{ $device_id }}
hostname= {{ $hostname }}
sysName={{ $sysName }}
sysDescr={{ $sysDescr }}
sysContact={{ $sysContact }}
os={{ $os }}
type={{ $type }}
ip={{ $ip }}
hardware={{ $hardware }}
version={{ $version }}
features={{ $features }}
serial={{ $serial }}
location={{ $location }}
uptime={{ $uptime }}
uptime_short={{ $uptime_short }}
uptime_long={{ $uptime_long }}
description={{ $description }}
notes={{ $notes }}
alert_notes={{ $alert_notes }}
ping_timestamp={{ $ping_timestamp }}
ping_loss={{ $ping_loss }}
ping_min={{ $ping_min }}
ping_max={{ $ping_max }}
ping_avg={{ $ping_avg }}
title={{ $title }}
elapsed={{ $elapsed }}
builder={{ $builder }}
id={{ $id }}
uid={{ $uid }}
state={{ $state }}
severity={{ $severity }}
rule={{ $rule }}
name={{ $name }} 
proc={{ $proc }} 
timestamp={{ $timestamp }} 
transport={{ $transport }} 
transport_name={{ $transport_name }}
```
{% endraw %}

- Click on **Save Transport**

![](images/librenms_5.png)

**(5)** Once your Alert Transport has been created, click on the **Alerts** tab on the top and select **Alert Rules**

![](images/librenms_6.png)

**(6)** You can either **Add alert rule** or modify an existing one. Choose the **Alert Rule** for which Squadcast Webhook should be triggered.

Here, in **Transports**:
- Select the **Squadcast Webhook** that was previously created 
- Enable the toggle for **Recovery Alerts** to `ON`
- Click on **Save Rule**

![](images/librenms_7.png)

**(7)** Back in the **Alert Rule** dashboard, you can verify the rules for which **Squadcast Webhook** is added as a **Transport**

![](images/librenms_8.png)

That is it, your integration with LibreNMS is complete and you are good to go!

Now, every time there is an alert in LibreNMS, the alert will be sent to Squadcast and an incident will be triggered, notifying the right people. Similarly, when the alert gets resolved in LibreNMS, the corresponding incident will get **auto-resolved** in Squadcast as well.