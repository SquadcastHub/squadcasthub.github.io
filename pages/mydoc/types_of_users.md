---
title: Types of Users
tags:
keywords:
last_updated:
summary: "Understanding the different User Types supported in Squadcast - Account Owners, Users and Stakeholders"
sidebar: mydoc_sidebar
permalink: docs/types-of-users
folder: mydoc
---

Squadcast has **three different types of users**:

### Account Owner

Squadcast allows only one Account Owner per Organization. An Account Owner has all the privileges in that Organization and by default will also be responsible for the billing of the account.

{{site.data.alerts.yellow-note-i-md}}
**Note:**

The user that first signs-up for the account & creates an Organization is by _default_ the `Account Owner`. 
Learn about transferring ownership of the account to another user, [here](transfer-ownership).
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i-md}}
**Important:**

Each Squadcast Organization can have only **one** `Account Owner` type of user.
{{site.data.alerts.end}}

### User

Users, by default, have the ability to customize their Profile, Notification Rules, Respond to, and Resolve incidents. Typically, Users are the Engineers, SREs, Systems Engineers or anyone in your team that handles incident management & on-call.

### Stakeholder

As the name implies, these are typically other participants from the Organization who may have an interest in the incident management process. They could be Product Managers, Customer Support Representatives, CxOs, and so on.

Stakeholders have **view-only access** of all incidents. This means that Stakeholders are **not notified by default** for any of the incidents created in Squadcast. If Stakeholders need to be notified of incidents, [this](https://support.squadcast.com/docs/incident-notes#mentioning-users-in-notes) is how it can be done.

Stakeholders also have the ability to create manual incidents should they notice something wrong and want to notify the on-call team of it.

{{site.data.alerts.yellow-note-i-md}}
**Important:**

- Stakeholders will not receive SMS/Phone call notifications for incidents in Squadcast.
- Stakeholders cannot be added to Schedules or Escalation Policies.
{{site.data.alerts.end}}