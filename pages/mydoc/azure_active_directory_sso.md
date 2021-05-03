---
title: Azure Active Directory SSO
tags: [sso, azure active directory]
keywords:
last_updated:
summary: "Enable Azure Active Directory Single Sign On (SSO) for your Squadcast organisation"
sidebar: mydoc_sidebar
permalink: docs/azure-active-directory-sso
folder: mydoc
---

Squadcast supports SAML 2.0 based Single Sign On (SSO) login for Azure Active Directory users and you can set it for your organisation by following this integration guide.

### Pre-requisites

1. Account Owner / Administrator account in Squadcast

2. A valid Squadcast subscription ([Pro & Enterprise](https://www.squadcast.com/pricing))

{{site.data.alerts.blue-note}}
<b>Point to Note: </b>
<br/><br/><p>1. Only an Administrator / Account owner can enable and configure Azure Active Directory SSO for an organisation in Squadcast.<br/><br/> 2. Once enabled, only the Account owner can use email-password based login by default although it can be configured to enable email based login for Administrators as well.</p>
{{site.data.alerts.end}}

### Setup Instructions

1.Go to the Integrations tab from your Squadcast account sidebar and click on **Integrate** under SSO card.

![](images/azure_squadcast_1.png)

2.In the opened modal, select the **Custom SAML 2.0** tab and click **Show configuration guide for Custom SAML 2.0**.

![](images/azure_squadcast_2.png)

![](images/saml_3.png)

3.As given in the displayed guide, copy the **ACS URL** .Then go to your Azure Active Directory dashboard and click on **Enterprise applications** .

![](images/azure_squadcast_4.png)

4.Click **New Application** .

![](images/azure_squadcast_5.png)

5.Select Non Gallery Application , give a name for the application and click **Add** .

![](images/azure_squadcast_6.png)

6.In the left pane under **Manage** select **Users and groups**.

![](images/azure_squadcast_7.png)

![](images/azure_squadcast_8.png)

7.Click **Add User**. Add the users you want along with the appropriate role.

![](images/azure_squadcast_9.png)

8.Click **Single sign-on** and select **SAML**.

![](images/azure_squadcast_10.png)

9.Edit the Basic SAML configuration section and in **Reply URL (Assertion Consumer Service URL)
** paste the ACS URl you copied from Squadcast.

![](images/azure_squadcast_11.png)

10.Edit the User and Attributes Claims Section. Remove the namespace and use **first_name** for source attribute **user.givenname** , **email** for **user.email** and **last_name** for **user.lastname**

![](images/azure_squadcast_12.png)

![](images/azure_squadcast_13.png)

![](images/azure_squadcast_14.png)

![](images/azure_squadcast_15.png)

11.Click Edit icon on the Saml Signing Certificate section and download the PEM certificate.

![](images/azure_squadcast_16.png)

12.Under Setup up section copy the Login Url.

![](images/azure_squadcast_17.png)

13.Paste both Login Url in Saml 2.0 EndPoint and the contents of the pem. file in the X.509. certificate section.Then click Save.

![](images/azure_squadcast_18.png)

14.That's it. For testing SSO go back to the azure portal sso page and click Test Sign In. Then Click sign in as current user

![](images/azure_squadcast_19.png)
