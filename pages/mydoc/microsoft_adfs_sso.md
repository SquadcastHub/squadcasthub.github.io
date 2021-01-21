---
title: Microsoft ADFS SSO
tags: [sso, microsoft adfs]
keywords: 
last_updated: 
summary: "Enable Microsoft ADFS Single Sign On (SSO) for your Squadcast organisation"
sidebar: mydoc_sidebar
permalink: docs/adfs-sso
folder: mydoc
---

Squadcast supports SAML 2.0 based Single Sign On (SSO) login for Microsoft Active Directory users and you can set it for your organisation by following this integration guide.

### Pre-requisites

1. Account Owner / Administrator account in Squadcast

2. A valid Squadcast subscription ([Pro & Enterprise](https://www.squadcast.com/pricing))

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>1. Only an Administrator / Account owner can enable and configure Microsoft ADFS SSO for an organisation in Squadcast.<br/><br/>
2. Once enabled, only the Account owner can use email-password based login by default although it can be configured to enable email based login for Administrators as well.</p>
{{site.data.alerts.end}}

### Setup Instructions

1.Go to the `Integrations` tab from your Squadcast account sidebar and click on **Integrate** under SSO card.

![](images/adfs_1.png)

2.In the opened modal, select the **Custom SAML 2.0** tab and click **Show configuration guide for Custom SAML 2.0**.

![](images/adfs_2.png)

3.As given in the displayed guide, copy the **ACS** url . Then log in to your server and go to `Server Manager`.

![](images/adfs_3.png)

4.Go to `Tools` -> `ADFS  Management`

![](images/adfs_4.png)

5.Click on `Add Relying Party Trust`.

![](images/adfs_5.png)

6.Select `Claims Aware` and click `Start`.

7.Select `Enter data about the relying party manually` and click `Next`

![](images/adfs_6.png)

8.Enter the `Display name`. Click `Next`.

![](images/adfs_7.png)

9.Select `Configure Certificate` and click `Next`.

![](images/adfs_8.png)

10.Select `Enable Support for the SAML 2.0 Web SSO protocol`. Enter the **ACS** url you copied from Squadcast. Click `Next`.

![](images/adfs_9.png)

11.Paste the **ACS** url in `Relying party trust identifier`. Click `Add`. Then click `Next`.

![](images/adfs_10.png)

12.Select `Access Control Policy`. Click `Next`.

![](images/adfs_11.png)

13.In `Ready to Add Trust`. Click `Next`. Then Click `Close`.

![](images/adfs_12.png)

14.Click `Edit Claim Insurance Policy`.

![](images/adfs_13.png)

15.Click `Add Rule`. 

16.Select `Send LDAP Attributes as Claims`. Click `Next`.

17.Give a name. Select Attribute Store as `Active Directory`. And map **LDAP attributes** to **Outgoing Claim Type** as shown below. Map `E-Mail-Addresses` to `E-Mail Address`, `Given-Name` to `Given Name` and `Surname` to `Surname` Click `Ok`.

![](images/adfs_14.png)

18.Then Click `Add Rule`. Select `Send Claims using Custom Rule`. Click `Next`.

19.Give a `Claim rule name`. And enter the following `Custom rule`. Click `Ok`.

![](images/adfs_15.png)

```
c:[Type == "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname"]
 => issue(Type = "last_name", Issuer = c.Issuer, OriginalIssuer = c.OriginalIssuer, Value = c.Value, ValueType = c.ValueType);
```

20.Repeat the Above step and add two more custom rules. Following are the two rules.

![](images/adfs_16.png)

```
c:[Type == "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname"]
 => issue(Type = "first_name", Issuer = c.Issuer, OriginalIssuer = c.OriginalIssuer, Value = c.Value, ValueType = c.ValueType);
```

![](images/adfs_17.png)

```
c:[Type == "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"]
 => issue(Type = "email", Issuer = c.Issuer, OriginalIssuer = c.OriginalIssuer, Value = c.Value, ValueType = c.ValueType);
```

{{site.data.alerts.blue-note}}
<b>Points to Note: </b>
<br/><br/><p>Make Sure the user accounts to be used for SSO have first name,  last name and email configured.</p>
{{site.data.alerts.end}}

21.Click `Apply`.

22.In your **ADFS** management dashboard.Go to `Services->Certificates`. Select `Token Signing Certificate` and Click `View Certificate`. Go to `Details->Copy to File` and and export the Der encoded binary X.509 certificate.

![](images/adfs_18.png)

![](images/adfs_19.png)

![](images/adfs_20.png)

![](images/adfs_21.png)

![](images/adfs_22.png)

23.Now convert the `.cer` file to a `.pem` file using the following command in Powershell.

```
openssl x509 -inform der -in certificatename.cer -out certificatename.pem
```

24.Open the .pem file in text editor. Copy the contents and paste it in Squadcast under `X.509 Certificate`. Then enter the `Saml 2.0` Endpoint as **https://<Your Domain Name >/adfs/ls**

![](images/adfs_23.png)

25.Enable `SSO` and click `Save`.

26.ADFS SSO is now configured. To test it you can go to **https://<Your Domain Name>/adfs/ls/idpinitiatedsignon**. Select Your application and sign in with your user account. You will be logged in to Squadcast and an user will be created.

![](images/adfs_24.png)

![](images/adfs_25.png)