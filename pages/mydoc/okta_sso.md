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

## Pre-requisites

1. Valid Okta SSO account & subscription
2. Account Owner / Administrator account in Squadcast
3. A valid Squadcast subscription ([Enterprise](https://www.squadcast.com/pricing))

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>1. Only an Administrator / Account owner can enable and configure Okta SSO for an organisation in Squadcast.<br/><br/> 2. Once enabled, only the Account owner can use email-password based login by default although it can be configured to enable email based login for Administrators as well.</p>
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note for Mobile App Users: </b>
<br/><br/><p>Check out this <a href="using-the-mobile-app#section-sso-login-support-for-mobile-apps">documentation</a> to login to your Squadcast Mobile application.</p>
{{site.data.alerts.end}}

## Setting up Okta SSO

**(1)** Login to `app.squadcast.com` and navigate to the **Settings** > **Extensions**. Click the **Configure** button under SSO.

![](images/sso_new_button.png)

**(2)** In the opened modal, select the **Okta** tab and click **Show configuration guide for Okta**.

![](images/okta_sso_new_1.png)

**(3)** Copy the ID highlighted in the instructions.

![](images/okta_sso_new_2.png)

**(4)** Move to your Okta Dashboard and navigate to **Applications**

![](images/okta_4.png)

**(5)** Search for **Squadcast** application and click **Add** to add it to your Okta account.

![](images/okta_5.png)

**(6)** Under the `Sign-On` tab, navigate to the `Advanced Sign-On Settings` and paste the Customer ID that was copied in Step 3 in the `Customer ID` field.

![](images/okta_5_1.png)

**(7)** Now click on `View Setup Instructions` to view the SAML 2.0 Endpoint and X.509 Certificate.

![](images/okta_6.png)

**(8)** Paste the SAML 2.0 Endpoint and X.509 Certificates in the respective fields in Squadcast. Also, add the Domain name of the Organization. 

{{site.data.alerts.note-md}}
Make sure to add the **Domain Name** of your Organization, for SSO login to work
{{site.data.alerts.end}}


![](images/okta_7_new.png)

![](images/okta_sso_new_3.png)

**(9)** In Squadcast, enable the toggle above within the modal and click on `Save` to enable Okta SSO for your Squadcast Account.

![](images/okta_sso_new_4.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b><br/><br/>

<p>You can turn On / Off Okta SSO by toggling the button at the top. Configure other options like the default User role and click Save.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/>

<p>For members trying to log into Squadcast through SSO who aren't already added to the Squadcast platform, will be added to the platform by default as <b>Users</b>.</p>
{{site.data.alerts.end}}

**(10)** The Okta-Squadcast integration also supports user provisioning. To enable that, you can navigate to the `Assignments` tab, assign this to `people` or `groups` (based on your requirement) to enable access to Squadcast.

![](images/okta_10.png)

In this example, we have chosen `Assign to People` and added a user as shown below.

![](images/okta_11.png)

**(11)** By default, the SSO provider will send Firstname, Lastname and Email ID to Squadcast. If you can send an optional custom key called `role` with one of these values `Admin`, `User` and `Stakeholder`, the user will be created with these roles instead of the default user role configured in the SSO modal in Squadcast.

Your Okta SSO Integration is good to go and anyone in your organisation can now use Okta SSO to login into Squadcast.

## Logging into Squadcast via Okta

**(1)** You can login to Squadcast by navigating to `My Apps` in your Okta Dashboard.

![](images/okta_12.png)

**(2)** Find `Squadcast` in this list of saved applications and just click on the `Squadcast` card and you will be automatically directed into your Squadcast account.

![](images/okta_13.png)
