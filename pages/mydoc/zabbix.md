---
title: Zabbix
tags: [integration, zabbix]
keywords: 
last_updated: 
summary: "Send events to Squadcast from Zabbix"
sidebar: mydoc_sidebar
permalink: docs/zabbix-integration-guide
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Zabbix.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Zabbix as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Zabbix** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/zabbix_1.png)

Go to the your Zabbix’s `AlertScriptsPath` directory. This is usually `/etc/zabbix/alert.d` or `/usr/local/share/zabbix/alertscripts` but it can be changed. Check your `zabbix_server.conf` file to see how this option is configured.

Once inside the directory run the following command:

```
sudo wget https://raw.githubusercontent.com/squadcastHub/squadcast-zabbix-script/master/sq-zabbix.py
```

Once the file is downloaded please make sure that the file has execute permissions for your Zabbix user. If not then please provide the same using the following command:

```
chmod +x sq-zabbix.py
```

{{site.data.alerts.yellow-note-i}}
<b>Note: </b>
<br/><br/><p>The Squadcast script for Zabbix requires Python 3 to be installed on the machine running Zabbix.</p>
{{site.data.alerts.end}}

Go to "**Administration**" tab and then click on "**Media types**". Click on "**Create Media type**" and create a new media type with the following configuration.

```
Name: Squadcast 
AlertType: Script
Script Name: sq-zabbix.py
Script Parameters:
    {ALERT.SENDTO}
    {ALERT.SUBJECT}
    {ALERT.MESSAGE}
```

![](images/zabbix_2.png)

Before clicking "**Add**" make sure that the media type is enabled.

Now you can add this media type to any user you want. For example, click on "**Users**" tab under the "**Administration**" tab and select the user you want to add this media type to.

Under "**Media**" tab click on "**Add**" and enter the following details:

```
Type: Squadcast Alert
Send To: The Webhook URL you obtained above
```

![](images/zabbix_3.png)

Finally click on "**Add**" to save the media for the user and make sure you click on "**Update**" button on the "**Media**" page to save the details.

![](images/zabbix_4.png)

Now go to the "**Configuration**" tab and click on "**Actions**" tab. Click on "**Create Action**" to create a new action.

Enter the name as "**Squadcast Notifications**".

![](images/zabbix_5.png)

Click on "**Operations**" tab and configure it as per your requirements. In the Default Message field enter the following:

```yaml
name:{TRIGGER.NAME}
id:{TRIGGER.ID}
status:{TRIGGER.STATUS}
hostname:{HOSTNAME}
ip:{IPADDRESS}
value:{TRIGGER.VALUE}
event_id:{EVENT.ID}
severity:{TRIGGER.SEVERITY}
url:{TRIGGER.URL}
```

![](images/zabbix_6.png)

Similarly configure the "**Recovery operations**". Make sure that you enter the following in the Default Message field:

```yaml
name:{TRIGGER.NAME}
id:{TRIGGER.ID}
status:{TRIGGER.STATUS}
hostname:{HOSTNAME}
ip:{IPADDRESS}
value:{TRIGGER.VALUE}
event_id:{EVENT.ID}
severity:{TRIGGER.SEVERITY}
url:{TRIGGER.URL}
```

![](images/zabbix_7.png)

Finally click on "**Add**" to save "**Squadcast Notifications**".  

That's it! Your Zabbix integration is now good to go.

<style>.btttn:hover{box-shadow: 0 10px 20px 0 rgba(15,97,221,.25); transform: translate(0,-2px);}</style><div style="height: 100%;width: 100%;display: flex;margin-top: 40px;"><div style="margin: auto;"><div style="height: 100%;width: 100%;display: flex;padding: 20px;border: 1px solid #e7e9ed;border-radius: 8px;"><div style="margin: auto;"><div style="text-align: center;padding-bottom: 20px;font-size: 18px;line-height: 24px;font-family: Metropolis, sans-serif;color: #0d2149;">Ready to try Squadcast?</div><a href="https://app.squadcast.com/register" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #0f61dd;font-family: Metropolis,sans-serif;color: #fff;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #fff;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Start Now For Free!</a>   <a href="https://calendly.com/amiya-squadcast/website?month=2019-08&amp;back=1" class="btttn" target="_blank" style="margin-right: 0;text-decoration: none;border-radius: 6px;background-color: #fff;font-family: Metropolis,sans-serif;color: #0f61dd;padding-top: 0;padding-bottom: 0;border-bottom: 1px solid transparent;-webkit-transition: all .1s ease-in-out;font-family: Metropolis,sans-serif;font-size: 13px;color: #0d2149;line-height: 22px;font-weight: 500;display: inline-block;color: #0f61dd;padding: 15px;text-align: left;margin-left: auto;margin-right: auto;max-width: 1200px;border: 1px solid #0f61dd;margin-left: 20px;transition: all .2s ease-in-out;" rel="noreferrer noopener">Schedule a Demo</a></div></div></div></div>