---
title: Azure Active Directory SSO
tags: [sso, azure active directory]
keywords:
last_updated:
summary: "Enable Azure Active Directory Single Sign-On (SSO) for your Squadcast Organisation"
sidebar: mydoc_sidebar
permalink: docs/azure-active-directory-sso
folder: mydoc
---

Squadcast supports SAML 2.0 based Single Sign-On (SSO) login for Azure Active Directory users. You can integrate your Squadcast Organization with your Azure Active Directory SSO by following this integration guide.

### Pre-requisites

1. Account Owner / Administrator account in Squadcast

2. A valid Squadcast subscription in either ([Pro or Enterprise plans](https://www.squadcast.com/pricing))

{{site.data.alerts.blue-note}}
<b>Point to Note: </b>
<br/><br/><p>1. Only an Account owner or a User with Extension permission can enable and configure Microsoft ADFS SSO for an organisation in Squadcast.<br/><br/> 2. Once enabled, only the Account Owner can use email-password based login <b>by default</b> although, it can be configured to enable email-password based login for Administrators as well.</p>
{{site.data.alerts.end}}

### Setup Guide

**(1)** Login to `app.squadcast.com` and navigate to the **Settings** > **Extensions**. Click the **Configure** button under SSO.

![](images/sso_new_button.png)

**(2)** Select the **Azure AD** from the dropdown and click **Show configuration guide for Custom SAML 2.0**

![](images/azure_sso_new_1.png)

As given in the displayed guide, copy the **ACS URL** being shown in point 1

![](images/azure_sso_new_2.png)

**(3)** Then, go to your Azure Active Directory dashboard and click on **Enterprise applications** from the left navigation

![](images/azure_squadcast_4.png)

**(4)** Click on **New Application** to create an application for Squadcast

![](images/azure_squadcast_5.png)

**(5)** Select **Non-gallery Application**, give a name for the application (such as, _Squadcast_) and click on **Add**

![](images/azure_squadcast_6.png)

**(6)** For the newly created app, in the left pane under **Manage**, select **Users and groups**

![](images/azure_squadcast_7.png)

Now, click on **Add User**

![](images/azure_squadcast_8.png)

**(7)** Find and add the users you want to, along with the appropriate **Role**

![](images/azure_squadcast_9.png)

**(8)** In the left pane under **Manage**, click **Single sign-on** and select **SAML**

![](images/azure_squadcast_10.png)

**(9)** Edit the **Basic SAML Configuration** section

In both, the **Identifier (Entity ID)** and **Reply URL (Assertion Consumer Service URL)** placeholders, paste the **ACS URL** you copied previously from Squadcast in here

![](images/azure_squadcast_11.png)

**(10)** Next, edit the **User and Attributes Claims** section

![](images/azure_squadcast_12.png)

Remove the _namespace_ and use:
- `first_name` for source attribute `user.givenname`
- `email` for `user.mail`
- `last_name` for `user.surname`

![](images/azure_squadcast_13.png)

![](images/azure_squadcast_14.png)

![](images/azure_squadcast_15.png)

**(11)** Click on the **Edit** icon in the **SAML Signing Certificate** section

![](images/azure_squadcast_20.png)

Here, **download the PEM certificate**

![](images/azure_squadcast_16.png)

**(12)** From under the **Set up Squadcast** section, copy the **Login URL**

![](images/azure_squadcast_17.png)

**(13)** Back in Squadcast, in the previously opened modal:

- Paste the copied **Login URL** in the placeholder for **SAML 2.0 Endpoint** 
- Copy the contents of the **PEM Certificate** in the placeholder for **X.509 Certificate**
- Enter the domain name of your Organization

{{site.data.alerts.note-md}}
Make sure to add the **Domain Name** of your Organization, for SSO login to work
{{site.data.alerts.end}}

- Provisioning new users can be defaulted to a particular `User Role` from the drop-down
- You can allow `Account Owners` and `Admins` to also login using their email credentials in addition to SSO. This can be done by checking the boxes for those options
- You can simply _provision new users on their first login_ by enabling the checkbox for the same

Once all of this have been configured based on your requirements, click on **Save**

![](images/azure_sso_new_3.png)

**(14)** That's it, your configuration is now complete!

For testing this SSO integration and if its working as expected, go back to the Azure Active Directory SSO portal, and click on **Test** 

Then, click **Sign in as current user** to verify your login to Squadcast!

![](images/azure_squadcast_19.png)

**(15)** Activate this SSO integration by _enabling the toggle_

![](images/azure_sso_new_4.png)

**(16)** To login to Squadcast via Azure Active Directory SSO from here on, **within your Office 365 account, click on App Launcher,  click on All Apps and you will be able to see Squadcast** there. Unless you have enabled email-password based login for your User Role, you will not be able to login to Squadcast using email-password from our [webapp login page](https://app.squadcast.com).

{{site.data.alerts.blue-note-md}}
**Logging in from the Squadcast mobile app when Azure AD SSO is enabled:**

The user needs to first access and login to [myapplications.microsoft.com](myapplications.microsoft.com) in the mobile browser. Here, they will be able to see the configured SSO (for Squadcast, as shown in the screenshot below). They can simply click on the icon to login.

![](images/azure_squadcast_22.png)
{{site.data.alerts.end}}

{{site.data.alerts.blue-note-md}}
**Important:**

**(1)** We do not support provisioning and syncing of **Groups** from Azure AD SSO into Squadcast. We support this only for **Users**.

**(2)** To login to the Squadcast web app when Azure AD SSO is enabled, users can use **My Apps Secure Sign-in Extension** for an easy login.
{{site.data.alerts.end}}