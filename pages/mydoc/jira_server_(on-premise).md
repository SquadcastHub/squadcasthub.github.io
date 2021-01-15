---
title: Jira Server (On-Premise)
tags: [integration, jira server]
keywords: 
last_updated: 
summary: "Create issues in JIRA with the incidents from Squadcast and vice versa and also sync the status bidirectionally."
sidebar: mydoc_sidebar
permalink: docs/jira-server-on-premise.html
folder: mydoc
---

You can use this integration guide to install and configure the Squadcast extension in JIRA Server (On-Premise) in order to automatically create issues in JIRA projects from Squadcast and vice versa. The status of the issues on JIRA and incidents in Squadcast will automatically be in sync. 

## Pre-requisites

1. A valid Squadcast cloud / On-Premise subscription on **Pro Plan**

2. You should have JIRA Server (On-Premise) version installed on your machine with a publicly accessible URL

3. A user account in JIRA Server with Administrator privileges

4. Base URL must be set in JIRA settings and it must be publicly accessible as mentioned above

5. Install the Squadcast Plugin from the [Atlassian App Store](https://marketplace.atlassian.com/apps/1221739/squadcast-for-jira-server?hosting=server&tab=overview)

## Integration Steps

1.Move over to the **Integrations** from the sidebar and choose to **Integrate** with JIRA Server. 

![](images/jira_server_squadcast_1.png)

2.Now click on **Configure** to receive a **token**

![](images/jira_server_squadcast_2.png)

3.Copy the displayed **token**. 

4.Go to **Manage Apps** page on your JIRA Server Account from the **Settings** dropdown. 

![](images/jira_server_squadcast_3.png)

5.Select the Squadcast Plugin from the **User-installed apps**. Click **Configure**.

![](images/jira_server_squadcast_4.png)

6.In the configuration page, paste the Squadcast token in the **JIRA Integration Key** text box. Then click **Integrate**.

![](images/jira_server_squadcast_5.png)

7.Move over to Squadcast and click on **Test Connection**. You will then receive a success message right below the text box. Post this, click on **Next**

![](images/jira_server_squadcast_6.png)

8.Select the Jira project in which issue needs to be created and select the issue type and click **Next**.

![](images/jira_server_squadcast_7.png)

![](images/jira_server_squadcast_8.png)

![](images/jira_server_squadcast_9.png)

9.Then map the Jira issue status to the available Squadcast statuses and click **Next**.

![](images/jira_server_squadcast_10.png)

10. Then select the mode in which you want to add an incident to Jira: **Manually** or **Automatically**.

Now, there are 2 sections:

 * Add Services to Jira

 * JQL - Service Mapping

![](images/jira_server_squadcast_11.png)

**Add Services to Jira:** If an incident is created for any service selected in this section, a corresponding Jira ticket would be created in the configured _project_ having the configured _issueType_.

**JQL - Service Mapping:** If a ticket is created in Jira, then the mappings defined in this section would be iterated one-by-one and incident would be created for the service corresponding to the first JQL that evaluated to be true for that Jira ticket. If none of the JQL matched, then no incident would be created in Squadcast.

{{site.data.alerts.note}}
<br/><br/><p>The issue must be in the same Jira project and be the same Jira Issue type. If you are using Jira Service Desk, incidents are created from JQL before <a href="https://confluence.atlassian.com/servicedeskserver041/automating-your-service-desk-969530933.html" target=_blank>automation rules</a> are applied.</p>
{{site.data.alerts.end}}

So, to summarize, 

**Add Services to Jira:** Handles Jira ticket creation corresponding to incident creation in Squadcast.

**JQL - Service Mapping:** Handles Squadcast incident creation corresponding to ticket creation in Jira.

That's it! Your JIRA Server Integration is good to go.

The statuses of the Squadcast Incident and JIRA Issue will be automatically synced as per the mapping configured.

{{site.data.alerts.note}}
<br/><br/><p>If the Squadcast incident reaches either <b>Resolved</b> or <b>Suppressed</b> status, the bidirectional status syncing will stop even if the issue is re-opened in JIRA, as these both are end states in Squadcast.</p>
{{site.data.alerts.end}}

## Usage of the Automatic and Manual Modes

### Automatic mode

If you have chosen the Automatic mode while configuring Jira Server then you need not do anything. Any incident triggered for the selected service will automatically create an issue in the selected Jira project with the configured issue type.

### Manual mode

If the chosen mode is Manual, follow the below steps to create a issue in Jira.

1.Open the incident in Squadcast and click on **More Actions** button.

![](images/jira_server_squadcast_12.png)

2.Select **Jira Server** action and click on **Create a issue in Jira** button.

![](images/jira_server_squadcast_13.png)

An issue will be created in the selected Jira project with the configured issue type and this action will be recorded in the incident timeline with a hyperlink to the created Jira issue.

![](images/jira_server_squadcast_14.png)

