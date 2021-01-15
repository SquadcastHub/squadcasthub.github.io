---
title: Incident Details
tags: [incident]
keywords:
last_updated:
summary: "Get more details about the incident"
sidebar: mydoc_sidebar
permalink: docs/incident-details.html
folder: mydoc
---

By clicking on any incident, you will be taken to its dedicated incident page which shows all the details of the incident.

The incident message and number are at the top of the page. It also shows the current status, the incident description, opened time when it got first triggered, to whom it is currently assigned, at what time it got assigned to that Squad or Schedule or any individual user and the service impacted due to the incident. 

It will also have War Room at the bottom and Incident Timeline at the right.

![](images/incident_1.png)

### Status of the incident

There are four types of states an Incident can have:

#### **Triggered**
When an incident is open, it will be in the triggered state. Concerned users will get notified when an incident is in triggered state. It will remain in this state until someone acknowledges it.

#### **Acknowledged**
Incident shifts from Triggered to Acknowledged state when any user acknowledges it. The user can now look into the incident and try to solve it. If the incident is reassigned or escalated to another user, it will go back to a triggered state, until the new user takes responsibility for it and acknowledged the incident.

#### **Resolved**
Incidents can be marked as Resolved to close them.

#### **Suppressed**
Sometimes, the incidents can be in a suppressed state - this happens when the alert notification was not meant to go out for some reason like the service was under maintenance. 

{{site.data.alerts.blue-note}}
<b>Important Note: </b>
<br/><br/><p>Squadcast allows a maximum of 10 notifications every 15 minutes for an organization.</p>
{{site.data.alerts.end}}