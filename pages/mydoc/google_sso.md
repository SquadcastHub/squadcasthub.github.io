---
title: Google SSO
tags: [sso, google]
keywords:
last_updated:
summary: "Use G Suite credentials to sign in to Squadcast via Single Sign-On (SSO)."
sidebar: mydoc_sidebar
permalink: docs/google-sso
folder: mydoc
---

Users can use their G Suite credentials to sign in to Squadcast via Single Sign-On (SSO).

This page describes how to add Squadcast to G Suite and configure SSO-support with SAML 2.0.

## Connecting Squadcast to G Suite

**(1)** Log in to your admin.google.com account with your G Suite account.

**(2)** Select Apps on the main page.

![](images/google_1.png)

**(3)** Select SAML apps

![](images/google_2.png)

**(4)** Create a new application by clicking the "**+**" button and then select **SETUP MY OWN CUSTOM APP**

![](images/google_3.png)

**(5)** **Download** Certificate, copy **SSO URL** and keep them safe and click **NEXT**

![](images/google_4.png)

**(6)** Enter the Application name as **Squadcast** and optionally provide a description and upload the logo and click **NEXT**

![](images/google_5.png)

**(7)** Login to `app.squadcast.com` and go to the **Integrations** tab and click the **Integrate** button under SSO and select the Google tab

![](images/google_6.png)

![](images/google_7_new.png)

**(8)** Click **Show configuration guide for Google** and copy the ACS URL displayed

![](images/google_8.png)

**(9)** Go back to the Google custom app and in the Service Provider Details page and paste the copied **ACS URL** in both the **ACS URL** and **Entity ID** fields. Also select **Name ID** as **Basic Information** and **Primary Email** and **Name ID Format** as **EMAIL** and click **Next**.

![](images/google_9.png)

**(10)** In the Attribute Mapping page, click the **ADD NEW MAPPING** button and add the following attributes and click **Finish** and **OK** in the next popup

```
Required

first_name |  Basic Information  | First Name
last_name  |  Basic Information  | Last Name
email      |  Basic Information  | Primary Email

Optional - For overwriting the default configured role (choose 1)

role | Custom Attribute | Admin
role | Custom Attribute | User
role | Custom Attribute | Stakeholder

```

By default Squadcast lets you create a user via SSO with a configured default Role ( Admin / User / Stakeholder) in the SSO screen as shown below but it can be overwritten by sending an optional custom field `role` and it's value along with the above attribute.

{{site.data.alerts.note}}
<br/><br/><p>For members trying to log into Squadcast through SSO who aren't already added to the Squadcast platform, will be added to the platform by default as <b>Users</b>.</p>
{{site.data.alerts.end}}

![](images/google_10.png)

![](images/google_11.png)

**(11)** Enable Squadcast application for all users.

![](images/google_12.png)

**(12)** Go back to the Squadcast Google SSO page and paste the SSO URL we have obtained from Step 5 above in the **SAML 2.0 Endpoint** text box and the certificate details in the **X.509 Certificate** field. Configure other options like the default User role and click Save.

![](images/google_13_new.png)

**(13)** You can allow Account owners and Admins to also login using their email credentials in addition to SSO. This can be done by checking the box as shown in the screenshot below.

![](images/google_14.png)

**(14)** You can enable the toggle button on the top to Enable Google SSO for Squadcast and you are good to go and your users will be able to use Google SSO to log in to Squadcast without needing a password.

**(15)** Your users can access SSO from the Google Board.

![](images/google_15.png)

{{site.data.alerts.blue-note-md}}
**Note:**

**(1)** After enabling SSO (step 14), if you are facing an issue to login using SSO, we advise you to do the following: on the webpage (depending on the browser that is being used), navigate to Inspect -> Application -> Storage -> click **Clear site data**

**(2)** After enabling SSO (step 14), if you see the error `403: no_saml_app` on the browser, we advise you to do the following: on the webpage (depending on the browser that is being used), navigate to Inspect -> Application -> Storage -> click **Clear site data**
{{site.data.alerts.end}}