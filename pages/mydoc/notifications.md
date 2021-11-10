---
title: Notifications
keywords:
last_updated:
summary: "Understanding the available incident notification channels in Squadcast"
sidebar: mydoc_sidebar
permalink: docs/notifications
folder: mydoc
---

Incident notifications represent alert information that is sent to users via the various available channels, which are Push, Email, SMS and Phone calls. 

Notifications are sent out only for the incidents created in Squadcast and they cannot be manually created.

You can also choose to be notified for incidents in Squadcast via [Slack](https://support.squadcast.com/docs/slack) and [Google Hangouts](https://support.squadcast.com/docs/hangouts). 

{{site.data.alerts.yellow-note-i-md}}
**Important:**

**(a)** Only users with [Organization Roles](https://support.squadcast.com/docs/types-of-users) `Account Owner` and `User` receive incident notifications. Users with `Stakeholder` Organization Role will not receive incident notifications. `Stakeholders` can be notified for incidents by using the steps mentioned [here](https://support.squadcast.com/docs/incident-notes#mentioning-users-in-notes)

**(b)** All users in the Organization have to [verify the email address](https://support.squadcast.com/docs/add-and-delete-users#add-users) associated with their Profile in order to start receiving Email and Push notifications for incidents. Also, to receive Push notifications, the latest version of the [Squadcast mobile app](https://support.squadcast.com/docs/using-the-mobile-app) must be downloaded

**(c)** To receive SMS and Phone call notifications for incidents:
- Users have to [OTP-verify the phone number](https://support.squadcast.com/docs/set-up-your-profile#mobile-number-verification) associated with their Profile
- SMS and Phone call notifications must be [enabled](https://support.squadcast.com/docs/billing#3-how-can-i-enable-sms-and-phone-calls-for-my-account) for the Organization
- Ensure that a card is added for your account (for [Essential Plan](https://www.squadcast.com/pricing)) to continue receiving SMS and Phone call notifications for incidents once the [free limits](https://support.squadcast.com/docs/billing#4-how-many-sms-and-calls-do-i-get-for-free-in-the-essential-free-plan) are exhausted
{{site.data.alerts.end}}

## Notification Phone Numbers

Squadcast uses the following numbers to notify you for incidents.

### Phone Call Notifications

**1.** +17076844278

**2.** +17072447799

### SMS Notifications

**1.** +17076844278

**2.** +17072447799

You can either save the above numbers on your devices or download the below vCard to set up a contact for Squadcast automatically.

<a href="/docs/vcf/Squadcast_Incidents.vcf" download="Squadcast vCard" style="text-decoration:none"><br/>
    <span style="padding: 10px;display: inline;border:1px solid #3670fe;border-radius: 4px;background-color: #3670fe;color: white;">
        Download Squadcast vCard
    </span>
</a>

## Notification Details and Logs

Each incident notification can be traced to a source. We are in the process of rolling out a feature for this in the near future. In the meantime, if you wish to receive details or logs of the notifications sent out for an incident, you can reach out to our [Support team](mailto:support@squadcast.com) with the `Incident ID` of the incident.

## Bypass Do Not Disturb (DND) for SMS and Phone Call Notifications

Bypassing Do Not Disturb is a powerful feature to receive Push, SMS, and Phone call notifciations for incidents even when your phone has the Do Not Disturb mode turned on.

Download the Squadcast vCard to create a contact for Squadcast, then follow the instructions below for mobile devices running on either Android or iOS.

### Android

Once the vCard is downloaded, a contact for Squadcast is created like below.

![](images/notifications_android_1.png)

**Star this contact** before proceeding further.

**(1)** Head over to **Settings** and navigate to the section that lets you configure **Apps & Notifications** or **Sounds** (each device has this configuration differently)

![](images/notifications_android_2.png)

![](images/notifications_android_3.png)

**(2)** On the device we are using as an example, we navigated to the **Do Not Disturb** section

![](images/notifications_android_4.png)

**(3)** Here, navigate to **Exceptions** and configure the starred **Squadcast** contact to be allowed to notify even when the Do Not Disturb mode is enabled

Even if your Android mobile device is on Do Not Disturb mode, you will now continue to receive SMS and Phone call incident notifications.

### iOS

Once the vCard is downloaded, a contact for Squadcast is created like below.

![](images/notifications_ios_1.png)

**(1)** Launch the Contacts app, find the Squadcast contact, and tap **Edit**

![](images/notifications_ios_2.png)

**(2)** Scroll down until you see entries for **Ringtone** and **Text Tone**. **Emergency Bypass** can be set for each. Tap either **Ringtone** or **Text Tone**

![](images/notifications_ios_3.png)

**(3)** At the top of the menu, there is an option for **Emergency Bypass**. Toggle it on for each of the desired methods for this contact

![](images/notifications_ios_4.png)

Even if your iOS mobile device is on Do Not Disturb mode, you will now continue to receive SMS and Phone call incident notifications.

## Bypass Do Not Disturb (DND) for Squadcast Mobile App

This feature is under development. We will be rolling this out shortly.

## Phone Calls and SMS Support

We use third party providers to send out SMS and Phone call incident notifications. SMS and Phone call notifications are supported for all the countries across the world except for:

- Cuba
- North Korea

While we do send SMS and Phone call incident notifications to users in **Iran**, we cannot assure its deliverability.








