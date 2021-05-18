---
title: AWS SSO
#tags: [sso, saml 2.0]
keywords:
last_updated:
summary: "Enable Single Sign-On (SSO) for your Organization with AWS SSO"
sidebar: mydoc_sidebar
permalink: docs/aws-sso
folder: mydoc
---

Users can use their AWS SSO credentials to sign in to Squadcast via Single Sign-On (SSO).

This page describes how to add Squadcast in AWS SSO Dashboard and configure SSO with SAML 2.0.

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>1. Only an Account Owner/Administrator can enable and configure SSO for an Organisation in Squadcast.<br/><br/> 2. Once SSO is enabled, only the <b>Account Owner can use email-password based login by default</b>, although it can be configured to allow <b>Administrators to use enable email-password based login</b> as well. </p>
{{site.data.alerts.end}}

## Setup Instructions

**(1)** Navigate to the **Extensions** tab from the sidebar in your Squadcast account

![](images/aws_sso_1_a.png)

Then, click on **Integrate** under **SSO**

![](images/aws_sso_1_b.png)

**(2)** Select the **Custom SAML 2.0** tab and click **Show configuration guide for Custom SAML 2.0**

![](images/aws_sso_2_a.png)

Here, copy the **ACS URL** to use it in your AWS SSO configuration next

![](images/saml_3.png)

**(3)** In your AWS account, navigate to **AWS Single Sign-On**

From the sidebar, select **Applications**

![](images/aws_sso_3.png)

**(4)** Click on **Add a new application**

![](images/aws_sso_4.png)

**(5)** Search for **Squadcast**, select it and click on **Add application**

![](images/aws_sso_5.png)

**(6)** Next:

- In the _Application Details_ section, provide a suitable **Name** and an optional **Description**

![](images/aws_sso_6_a.png)

- In the _Application Metadata_ section, click on **If you do not have a metadata file, you can manually type your metadata values**

![](images/aws_sso_6_b_1.png)

Here, in the placeholders for both **Application ACS URL** and **Application SAML audience**, paste the previously copied ACS URL from Squadcast

![](images/aws_sso_6_b_2.png)

- In the _AWS SSO metadata_ section, copy the **AWS SSO sign-in URL** and download the **AWS SSO certificate**

![](images/aws_sso_6_c.png)

- Click on **Save changes**

![](images/aws_sso_6_d.png)

**(7)** Back in Squadcast, in the previously opened modal:

- Paste the copied **AWS SSO sign-in URL** under **SAML 2.0 Endpoint**
- Copy the contents of the downloaded **AWS SSO certificate** and paste it under **X.509 Certificate**
- Pick the **Default New User Role** that a newly provisioned user in Squadcast should be assigned as by default. This could be either `User`, `Admin` or `Stakeholder`

  **Note:** If required, the `User Role` attribute can be modified manually for users later on from the **Users** page in Squadcast

- If you want the Account Owner and/or Admins to be able to login to Squadcast using email-password aside from SSO, enable the checkboxes accordingly
- Click on **Save**

![](images/aws_sso_7.png)

**(8)** Enable the _toggle_ to activate the SSO integration

![](images/aws_sso_8.png)

**(9)** Finally, in AWS SSO:

- In the **Applications** page, click on **Squadcast**

![](images/aws_sso_9_a.png)

- Switch to **Attribute mappings** tab and create mappings as shown in the screenshot below and click on **Save changes**

  If you can send a custom key, `role` from here, with one of these values `Admin`, `User` or `Stakeholder`, the new user will be added with these roles instead of the default `User Role` configured in Squadcast

![](images/aws_sso_9_b.png)

- Switch to **Assigned users** and add your _users_ in here

![](images/aws_sso_9_c.png)

{{site.data.alerts.note-md}}

For members trying to login to Squadcast through AWS SSO and are not already added as users of Squadcast, will be added to Squadcast by default with `User Role: User`.
{{site.data.alerts.end}}

{{site.data.alerts.note-md}}

By **default**, all new users added to Squadcast via AWS SSO will be added with **`User Role : User`** anyway. You can add an **Attribute Mapping** to provision **all new users** as `Admins` or `Stakeholders`, if you wish to do that. In addition the previous Attribute Mappings, you can add `User Role` as an Attribute Mapping in here, in the same manner and **Save changes**.
- User attribute in the application : role
- Maps to this string value or user attribute in AWS SSO : either `Admin` or `Stakeholder`
- Format : basic


![](images/aws_sso_11.png)
{{site.data.alerts.end}}

**(10)** From the sidebar, now navigate to **Dashboard**. Here, you will be able to see your **User portal URL** that you can use to login to Squadcast

![](images/aws_sso_10.png)

That is it, your AWS SSO configuration with Squadcast is now complete!
