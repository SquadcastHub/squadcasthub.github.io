---
title: Okta SSO
tags: [sso, okta]
keywords: 
last_updated: 
summary: "Enable Okta Single Sign On (SSO) for your Squadcast organisation"
sidebar: mydoc_sidebar
permalink: docs/okta-sso-integration
folder: mydoc
---

Squadcast supports SAML 2.0 based Okta Single Sign On (SSO) login and you can set it for your organisation by following this integration guide.

### Pre-requisites

1. Valid Okta SSO account & subscription

2. Account Owner / Administrator account in Squadcast

3. A valid Squadcast subscription ([Pro & Enterprise](https://www.squadcast.com/pricing))

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>1. Only an Administrator / Account owner can enable and configure Okta SSO for an organisation in Squadcast.<br/><br/>
2. Once enabled, only the Account owner can use email-password based login by default although it can be configured to enable email based login for Administrators as well.</p>
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note for Mobile App Users: </b>
<br/><br/><p>Today, SSO does not work with our mobile applications.</p>
{{site.data.alerts.end}}

### Setup Instructions

1.Go to the Integrations tab from your Squadcast account sidebar and click on **Integrate** under SSO card.

![](images/okta_1.png)

2.In the opened modal, select the **Okta** tab and click **Show configuration guide for Okta**.

![](images/okta_2.png)

![](images/okta_3.png)

3.As given in the displayed guide, go to your Okta dashboard and click on **Add Application** 

![](images/okta_4.png)

{{site.data.alerts.note}}
<br/><br/><p>For members trying to log into Squadcast through SSO who aren't already added to the Squadcast platform, will be added to the platform by default as <b>Users</b>.</p>
{{site.data.alerts.end}}

4.Search for **Squadcast** application and click **Add** to add it to your Okta account.

![](images/okta_5.png)

![](images/okta_6.png)

5.You can turn On / Off Okta SSO by toggling the button at the top. Configure other options like the default User role and make sure to check the Provision new users on first login checkbox and click Save.

![](images/okta_7.png)

6.Your Okta SSO Integration is good to go and anyone in your organisation can now use Okta SSO to login into Squadcast.

7.By default, the SSO provider will send Firstname, Lastname and Email ID to Squadcast. If you can send a optional custom key called `role`  with one of these values `Admin`, `User` and `Stakeholder`, the user will be created with these roles instead of the default user role configured in the SSO modal in Squadcast.