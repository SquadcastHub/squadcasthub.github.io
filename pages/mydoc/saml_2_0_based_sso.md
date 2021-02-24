---
title: SAML 2.0 based SSO
tags: [sso, saml 2.0]
keywords: 
last_updated: 
summary: "Enable Single Sign On (SSO) for your organization with any SAML 2.0 based SSO"
sidebar: mydoc_sidebar
permalink: docs/saml-sso
folder: mydoc
---

Squadcast supports any SAML 2.0 based Single Sign On (SSO) and you can set it for your organisation by following this integration guide.

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>1. Only an Administrator / Account owner can enable and configure SAML SSO for an organisation in Squadcast.<br/><br/>
2. Once enabled, only the Account owner can use email-password based login by default although it can be configured to enable email based login for Administrators as well.</p>
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note for Mobile App Users: </b>
<br/><br/><p>Today, SSO does not work with our mobile applications.</p>
{{site.data.alerts.end}}

### Setup Instructions

1.Go to the Integrations tab from your Squadcast account sidebar and click on **Integrate** under SSO card

![](images/saml_1.png)

2.In the pop-up GUI, select the **Custom SAML 2.0** tab and click **Show configuration guide for Custom SAML 2.0**

![](images/saml_2_new.png)

Now, copy the ACS URL and paste it in your SSO provider system

![](images/saml_3.png)

3.From your SSO dashboard, copy the SAML 2.0 Endpoint and X.509 Certificate and paste it in the relevant fields

![](images/saml_4_new.png)

{{site.data.alerts.note}}
<br/><br/><p>For members trying to log into Squadcast through SSO who aren't already added to the Squadcast platform, will be added to the platform by default as <b>Users</b>.</p>
{{site.data.alerts.end}}

5.You can turn On / Off SSO by toggling the button at the top. Configure other options like the default User role and make sure to check the Provision new users on first login checkbox and click **Save**.

![](images/saml_5.png)

6.By default, the SSO provider will send Firstname, Lastname and Email ID to Squadcast. If you can send a custom key called `role`  with one of these values `Admin`, `User` and `Stakeholder`, the user will be created with these roles instead of the default user role configured in the SSO modal in Squadcast.

Your SSO Integration is good to go and anyone in your organisation can now use SSO to login into Squadcast.

The following SAML 2.0 based SSO logins were officially tested and found to be working either by our team or the SSO providers but it should work with all SAML 2.0 based SSO providers.

- [Okta](https://support.squadcast.com/docs/okta-sso-integration)

- [Google SSO](https://support.squadcast.com/docs/google-sso)

- [AWS SSO](https://docs.aws.amazon.com/singlesignon/latest/userguide/saasapps.html#saasapps-supported)

- [Citrix ADC SAML SSO](https://docs.citrix.com/en-us/citrix-adc/13/aaa-tm/saml-authentication/saml-sign-sign-on.html)

This is the officially tested list but any SAML 2.0 based SSO should work with Squadcast.