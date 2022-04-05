---
title: Jira Server (On-Premise)
tags: [integration, jira server]
keywords: 
last_updated: 
summary: "Create issues in JIRA with the incidents from Squadcast and vice versa and also sync the status bidirectionally."
sidebar: mydoc_sidebar
permalink: docs/jira-server-on-premise
folder: mydoc
---

You can use this extension guide to install and configure the Squadcast extension in JIRA Server (On-Premise) in order to automatically create issues in JIRA projects from Squadcast and vice versa. The status of the issues on JIRA and incidents in Squadcast will automatically be in sync. 

{{site.data.alerts.red-note-md}}
**Important:**

Jira Server extension will not be supported in the EU data center.
{{site.data.alerts.end}}

## Prerequisites

**(1)** A valid Squadcast cloud subscription or a trial account (in either the Pro or Enterprise [plans](https://squadcast.com/pricing))

**(2)** You should have JIRA Server (On-Premise) version installed on your machine with a publicly accessible URL

**(3)** A user account in JIRA Server with `Administrator` privileges

**(4)** Base URL must be set in JIRA settings and it must be publicly accessible as mentioned above

**(5)** Only the Account Owner and Users with the `Manage Extensions` permission will be able to enable, disable and manage Extensions in Squadcast

**(6)** Install the Squadcast Plugin from the [Atlassian App Store](https://marketplace.atlassian.com/apps/1221739/squadcast-for-jira-server?hosting=server&tab=overview)

## Configuring the Extension

**(1)** In Squadcast, navigate to **Settings** and select the **Extensions** tab from the left navigation sidebar. Move over to the JIRA Cloud extension and click on **Integrate**

![](images/jira_server_squadcast_1.png)

**(2)** Now click on **Configure** to receive a **token**

![](images/jira_server_squadcast_2.png)

**(3)** Copy the displayed **token**

**(4)** Go to **Manage Apps** page on your JIRA Server Account from the **Settings** drop-down

![](images/jira_server_squadcast_3.png)

**(5)** Select the Squadcast Plugin from the **User-installed apps** and Click **Configure**

![](images/jira_server_squadcast_4.png)

**(6)** In the configuration page, paste the Squadcast token in the **JIRA Integration Key** text box. Then click **Integrate**

![](images/jira_server_squadcast_5.png)

**(7)** Move over to Squadcast and click on **Test Connection**. You will then receive a success message right below the text box. Post this, click on **Next**

![](images/jira_server_squadcast_6.png)

**(8)** Select the Jira project in which issue needs to be created and select the issue type and click **Next**

![](images/jira_server_squadcast_7.png)

![](images/jira_server_squadcast_8.png)

![](images/jira_server_squadcast_9.png)

**(9)** Then map the Jira issue status to the available Squadcast statuses and click **Next**

![](images/jira_server_squadcast_10.png)

**(10)** Then select the mode in which you want to add an incident to Jira: **Manually** or **Automatically**
Now, there are 2 sections:

*  Add Services to Jira

* JQL - Service Mapping

![](images/jira_server_squadcast_11.png)

**Add Services to Jira:** If an incident is created for any service selected in this section, a corresponding Jira ticket would be created in the configured _project_ having the configured _issueType_.

**JQL - Service Mapping:** If a ticket is created in Jira, then the mappings defined in this section would be iterated one-by-one and incident would be created for the service corresponding to the first JQL that evaluated to be true for that Jira ticket. If none of the JQL matched, then no incident would be created in Squadcast.


{{site.data.alerts.note}}
<br/><br/><p>The issue must be in the same Jira project and be the same Jira Issue type. If you are using Jira Service Desk, incidents are created from JQL before <a href="https://confluence.atlassian.com/servicedeskserver041/automating-your-service-desk-969530933.html" target="_blank">automation rules</a> are applied.</p>

<br/><p>Make sure that the <b>issue priority</b> is enabled for issues in Jira in order to create incidents in Squadcast.</p>

{{site.data.alerts.end}}

So, to summarize:

**Add Services to Jira:** Handles Jira ticket creation corresponding to incident creation in Squadcast.

**JQL - Service Mapping:** Handles Squadcast incident creation corresponding to ticket creation in Jira.

That's it! Your JIRA Server Integration is good to go.

The statuses of the Squadcast Incident and JIRA Issue will be automatically synced as per the mapping configured.

{{site.data.alerts.note}}

<br/><br/><p>Incidents in Squadcast created for issues in Jira using the Jira plugin will not have a status sync.</p>

{{site.data.alerts.end}}

{{site.data.alerts.note}}
<br/><br/><p>If the Squadcast incident reaches either <b>Resolved</b> or <b>Suppressed</b> status, the bidirectional status syncing will stop even if the issue is re-opened in JIRA, as these both are end states in Squadcast.</p>
{{site.data.alerts.end}}

{{site.data.alerts.note}}
<br/><br/><p>The default directory for user creation should be <b>Jira Internal Directory</b>. If the <b>squadcast user</b> gets created in any other directory apart from <b>Jira Internal Directory</b>, you will have to move the user to the <b>Jira Internal Directory</b> by following the steps below:</p>
<b>1.</b> Delete the <b>squadcast user</b> that was created post the integration.
<br/><b>2.</b> Then, add a new user. The username should be <b>squadcast</b> and password should be the <b>token</b> that is available <a href="https://support.squadcast.com/docs/jira-server-on-premise#integration-steps">in step 2 here.</a>
<br/><b>3.</b> Kindly ensure that you have selected <b>Jira Internal Directory</b> from the dropdown while creating the user.

{{site.data.alerts.end}}

## Usage of the Automatic and Manual Modes

### Automatic mode

If you have chosen the Automatic mode while configuring Jira Server then you need not do anything. Any incident triggered for the selected service will automatically create an issue in the selected Jira project with the configured issue type.

### Manual mode

If the chosen mode is Manual, follow the below steps to create a issue in Jira.

**(1)** Open the incident in Squadcast and click on **More Actions** button

![](images/jira_server_squadcast_12.png)

**(2)** Select **Jira Server** action and click on **Create a issue in Jira** button

![](images/jira_server_squadcast_13.png)

An issue will be created in the selected Jira project with the configured issue type and this action will be recorded in the incident timeline with a hyperlink to the created Jira issue.

![](images/jira_server_squadcast_14.png)

Similarly, if there was an error in creating a ticket in Jira, it will be reflected in the Incident Timeline.

![](images/jira_server_squadcast_15.png)

{{site.data.alerts.green-note-check}}
<b>Note</b><br/><br/>
<p>Ensure to check the permissions associated with Squadcast user. To do this, go to System > Admin Helper > Permission Helper. Choose Squadcast in the User drop down and validate if permissions - Browse Project, Create Issue, Transition Issue, Resolve Issue  exist. If not, then add these permissions to the user group that Squadcast user is a part of. This information can be checked under System > User Management.</p>
{{site.data.alerts.end}}

## Using Tags to configure Jira Project and Issue Priority

{{site.data.alerts.red-note}}
<b>Note</b><br/><br/>
<p>Currently to use multiple Jira projects your status mappings need to be the same for all your Jira projects. We will be using the status mapping you configured in the `Map Status` section of the configuration.</p>
{{site.data.alerts.end}}

You can use [Tagging Rules](event-tagging) to map your issue priority and project by following the steps below :  

**(1)** Create a tagging rule that helps you set the priority and configure Jira project for an incident in Squadcast by using the tags:

- `priority`- `Jira Priority`
- `issuetype` - `Issue Type Name`
- `project`- `Project Key`

Now the Jira ticket will be created based on the tag values 

{{site.data.alerts.yellow-note-i}}
<b>Tags are Case Sensitive</b><br/><br/>
<p>The values of all the tags are case sensitive. Use the same case which has been used in Jira.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/>
<p><ul>
<li>The <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">project</code> and <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">issuetype</code> tags configured for a service in Squadcast will override your default <a href="jira-server-on-premise#integration-steps">Jira configurations</a> for the same.</li>
<li>Make sure to use both <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">project</code> and <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">issuetype</code> tags for creating your issue in a project different from the mapped one. If both tags are not configured then it will use your default <a href="jira-server-on-premise#integration-steps">Jira configuration</a></li>
</ul></p>
{{site.data.alerts.end}}

### Example of configuring the Tags using Tagging Rules

![](images/jira_server_squadcast_16.png)

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/>
<p>Setting <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">project</code> and <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">issuetype</code> for your configured service will override your mapped project and issuetype configuration for that particular service. <br/>
Also make sure to use both <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">project</code> and <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">issuetype</code> tags for creating your issue in a project different from the mapped one.</p>
{{site.data.alerts.end}}