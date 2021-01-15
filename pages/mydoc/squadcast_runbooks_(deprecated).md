---
title: Squadcast Runbooks (Deprecated)
tags: [runbooks]
keywords: 
last_updated: 
summary: "Execute Squadcast Runbooks on your servers directly from an incident"
sidebar: mydoc_sidebar
permalink: docs/squadcast-runbooks.html
folder: mydoc
---

You can execute Squadcast Runbooks as one of the Squadcast Actions and resolve your incidents quickly and bring down your MTTR significantly.

{{site.data.alerts.red-note}}
<b>Feature Depricated</b>
<br/><br/><p>This feature has been deprecated for public access and is currently available in private beta</p>
{{site.data.alerts.end}}

## Setup Squadcast Runbooks

In order to execute Squadcast Runbooks as part of Squadcast actions, you need to perform the Squadcast Runbooks integration as described below.

### Get your Squadcast Runbooks API key

Follow the below steps to get your Squadcast Runbooks API key.

Go to **Sidebar** → **Integrations** and click on the **Integrate** button under **Squadcast Runbooks**.

![](images/squadcast_runbooks_1.png)

Copy the Integration API key from the display box by clicking the **copy** button. This will activate the Runbooks tab in the sidebar, if you are not able to see the Runbooks tab, please reload your page.

![](images/squadcast_runbooks_2.png)

### Download and configure Squadcast Agent with the API key

1. Download the Squadcast Agent for your OS platform

 -  [Linux](https://squadcast-agent.s3.amazonaws.com/squadcast-agent-linux-amd64.tar.gz)

 -  [Mac OS](https://squadcast-agent.s3.amazonaws.com/squadcast-agent-macOS-amd64.tar.gz)

2. Set it up as a service in the following format by supplying your API key in the system where you want to execute your Squadcast Runbooks.

```
squadcast-agent -key YOUR-API-KEY-HERE
```

You can configure as many agents in as many systems as you want using the same API key. Each agent will be identified using their unique hostname.

Now your Squadcast Runbooks Integration is good to go. You can setup Squadcast Runbooks and execute them as part of [Squadcast Actions](squadcast-actions.html).

## Create Runbooks

Follow the below steps to create Runbooks.

1.Go to the **Runbooks** tab from the sidebar and click on **Add New Runbook** button.

![](images/squadcast_runbooks_3.png)

2.Enter a **Name** and **Description** for the runbook and click on the **Create New** button.

![](images/squadcast_runbooks_4.png)

3.In the next page, you can add code snippets which needs to be executed as well as textual description and steps. You can add a name for the Snippet, define the description and add code snippets.

{{site.data.alerts.blue-note}}
<b>Markdown Supported</b>
<br/><br/><p>The Runbook Snippets description supports markdown and you can use it to describe the runbook clearly.</p>
{{site.data.alerts.end}}

![](images/squadcast_runbooks_5.png)

{{site.data.alerts.green-note-check}}
<b>Markdown Supported</b>
<br/><br/><p>Currently, Squadcast Runbooks supports the below languages...<br/><br/>
 <input type="checkbox" disabled checked> Shell script <br/>
 <input type="checkbox" disabled checked> Lua script <br/>
 <input type="checkbox" disabled checked> Python3 script <br/>
 <input type="checkbox" disabled checked> NodeJS script <br/>
 <input type="checkbox" disabled checked> Ansible configuration</p>
{{site.data.alerts.end}}

You can choose to use a single snippet or add as many as you want based on need and click on **Save Runbook** button.

## Execute Squadcast Runbooks as Squadcast Actions

Go to the Incident for which you want to execute the Squadcast Runbook.

![](images/squadcast_runbooks_6.png)

Click on the **More Actions** button and click on **Squadcast Runbooks** and select the **Run** action.

![](images/squadcast_runbooks_7.png)

Then **Select an Agent** of the system on which you want to execute the Runbook, then **select the Runbook** which you want to execute and choose the snippets which you want to execute in order and click the **Run** button.

![](images/squadcast_runbooks_8.png)

The Runbook will start running on your system and you can go to the Runbook execution page by following the link in the dialog box or by clicking the link on the Incident timeline.

![](images/squadcast_runbooks_9.png)

Here you can watch the Squadcast Runbooks being executed and the logs being streamed live.

![](images/squadcast_runbooks_10.png)

![](images/squadcast_runbooks_11.png)

You can also watch the logs of old runs for that particular runbook.

![](images/squadcast_runbooks_12.png)

All these Squadcast Runbooks executions are captured in the Incident Timeline as part of Actions and can be referenced anytime.

![](images/squadcast_runbooks_13.png)