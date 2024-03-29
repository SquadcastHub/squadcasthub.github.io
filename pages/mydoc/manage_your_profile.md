---
title: Manage Your Profile
tags: [Notification-Rules, Managing-all-Users]
keywords:
last_updated:
summary: "Edit your account details and set up notification preferences"
sidebar: mydoc_sidebar
permalink: docs/set-up-your-profile
folder: mydoc
---

## Profile Page

**(1)** Click on the user icon in the upper right corner and select **Profile**

![](images/profile_new_3.png)

**(2)** On your **Profile** page, you can:

(a) Edit your _First Name_ and _Last Name_

(b) _Change Password_

(c) _Change Phone Number_

(d) [Update Personal Notification Rules](notification-rules). Additionally, if your Squadcast Organization is integrated with Slack/Google Hangouts, the same will be indicated here as well

(e) [Update On-Call reminder Notification Rules](oncall-reminder-rules).

(f) View the Escalation Policies, Squads and Schedules you are a part of

(g) [Generate and view existing API Refresh Tokens](squadcast-public-api)

(h) For the past week, view the number of incidents Acknowledged and Resolved by you, along with MTTA and MTTR

### Edit Profile

**(1)** Click on **More Options** icon, and select **Edit**

**(2)** Fill out the details and click **Save**

## Change Password

**(1)** Click on **More Options Icon**, and select **Change Password**

**(2)** Fill out _Current Password_, _New Password_ and _Re-enter New Password_

**(3)** Click on **Save**

## Change Mobile Number

**(1)** Click on **More Options Icon**, and select **Change Phone Number**

**(2)** Select your country _Dial Code_ and fill in the _Mobile Number_

**(3)** Click on **Verify**

![](images/manage_account_11.png)

**(4)** An OTP will be sent to you, fill in the OTP and click **Submit**

![](images/manage_account_12.png)

**(5)** If you did not receive an OTP, you can click on **Send again** to get a new OTP.
**Send again** will only be enabled after 1 minute has passed everytime an OTP is sent.
You can also click on **Skip and verify later** to verify the _Mobile Number_ later

![](images/manage_account_13.png)

## Mobile Number Verification

{{site.data.alerts.yellow-note-i}}
<b>Disclaimer: </b>

<p><br/> (1) For existing users of Squadcast, they will continue receiving Phone and SMS notifications as usual until <b>September 1st, 2021</b>. Post this, unless their Mobile Number is verified, they will not receive Phone and SMS notifications</p>
<p><br />(2) For new users of Squadcast, please verify your Mobile Number in order to start receiving Phone and SMS notifications post signing up</p>
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note: </b>

<p><br/>  (1) In order to receive Phone and SMS notifications, ensure a valid Mobile Number is entered</p>
<p><br/>  (2) Phone and SMS notifications will be disabled if the Mobile Number is not verified</p>
<p><br/>  (3) Everytime you change your Mobile Number, you have to verify the new Mobile Number to continue receiving Phone and SMS notifications</p>
{{site.data.alerts.end}}

## Change Timezone and Date Format

**(1)** Click on **More Options Icon**, and select **Edit**

**(2)** Select your country _Timezone_ and the _Date Format_

**(3)** Click on **Save**

![](images/profile_new_2.png)

{{site.data.alerts.yellow-note-i}}
Note: 
<br>

Places where your Timezone will still reflect UTC: 
<br>
- Incident Exports<br>
- Analytics Panel Exports<br>
- Status Page Incidents <br>
<br>
Postmortem Download and Activity Timeline Download will be in the User selected Timezone. 
{{site.data.alerts.end}}

### While Onboarding

**(1)** Enter the details, _Mobile Number_ is **optional**. You can add a _Mobile Number_ later in your **Profile** page

![](images/manage_account_4.png)

**(2)** If _Mobile Number_ is provided, a One-time Password (OTP) will be sent to you through SMS and
you will be taken to the OTP verification screen

(a) Fill in the OTP and click on **Verify** to verify your _Mobile Number_

(b) If you did not receive an OTP, you can click on **Send again** to get a new OTP.
**Send again** will only be enabled after 1 minute has passed everytime an OTP is sent

(c) If you want to verify your _Mobile Number_ later, you can select **Skip and verify later**. _Mobile Number_ can be verified in the [**Profile page**](https://support.squadcast.com/docs/set-up-your-profile)

(d) You will then be logged in, irrespective of whether you choose to verify instantly or at a later point in time

![](images/manage_account_5.png)

### In Profile Page

To verify _Mobile Number_

**(1)** Click on **Verify Phone Number**

![](images/profile_new_5.png)

**(2)** An OTP will be sent to your _Mobile Number_. Fill in the OTP and **Submit**

![](images/manage_account_7.png)

**(3)** If you did not receive an OTP, you can click on **Send again** to get a new OTP.
**Send again** will only be enabled after 1 minute has passed everytime an OTP is sent.
You can also click on **Skip and verify later** to verify the _Mobile Number_ later

![](images/manage_account_13.png)

**(4)** After verification is complete, the warning message will disappear and you will receive Phone & SMS notifications for incidents

![](images/manage_account_8.png)

{{site.data.alerts.yellow-note-i-md}}
**Note:**

If the Mobile Number is not verified via OTP, the same will be indicated in the web app as well as the mobile app.

**In the web app:**

![](images/manage_account_14.png)

**In the mobile app:**

Navigate to **My Profile**:

![](images/manage_account_15.png)
{{site.data.alerts.end}}
