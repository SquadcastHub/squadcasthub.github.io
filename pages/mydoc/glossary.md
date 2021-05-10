---
title: Glossary
tags: [getting-started, set-up-your-profile]
keywords: 
last_updated: 
summary: "This guide will walk you through the terminologies and their meanings used in Squadcast."
sidebar: mydoc_sidebar
part: Getting_Started
permalink: docs/glossary
folder: mydoc
---

This glossary is a guide to walk you through all the terminologies used within Squadcast and others relevant to the incident management and SRE space.

### Users 

Users are anyone from your team who are on the Squadcast platform. You can access the list of users in your organization from the **[Users](https://app.squadcast.com/users)** tab on the navigation sidebar on the left. 

Users have various roles within the platform: 

#### Role: Account Owner
An Account Owner has the ability to:

- Access all billing information
- Add new users/ admins/ stakeholder
- Delete users/ admins/ stakeholder
- Create/edit/delete on-call schedules
- Create/edit/delete escalation policies
- Create/edit/delete services
- Create/edit/delete status pages
- Add/edit/delete postmortem templates
- Change the account owner or delete the account

#### Role: Admin
An Admin can:

- Add new users/ admins/ stakeholder
- Delete users/ admins/ stakeholder
- Create/edit/delete on-call schedules
- Create/edit/delete escalation policies
- Create/edit/delete services
- Create/edit/delete status pages
- Add/edit/delete postmortem templates
- Change the account owner or delete the account

Admins cannot change or delete the Account Owner and do not have access to billing information.

#### Role: User
A user can:

- Create/edit/delete on-call schedules
- Create/edit/delete escalation policies
- Create/edit/delete services
- Create/edit/update/delete Status Page

#### Role: Stakeholder 
A stakeholder can:
 
- Access the incident dashboard
- Create incidents from the dashboard and assign it to a user/admin/account owner
- Chat in the war room
- View/update the status page
- Add tags to an incident
- View the analytics page

### Alert Forwarding
Alert Forwarding is used to forward one's alerts to another on-call user for a period of time. It can be accessed from the  **[Users](https://app.squadcast.com/users)** page on the navigation sidebar. Alert Forwarding is typically used if the on-call user is sick, on vacation or had to step away due to an emergency and want another user to fill in for their on-call shift. Alert forwarding is also known as Vacation Mode. 

### My Profile 
**[My profile](set-up-your-profile)** holds the name and contact information such as phone number, SMS number, email address that is associated with a user's profile. My profile page shows the squads, schedules and escalation policies that the user is a part of along with the details of his MTTA, MTTR for that particular organization. 

You can access other users' profiles by clicking on the **User** icon against their name from the **Users** page on the navigation sidebar.

Note: You will only be able to set your notification rules - rules for how you want to be notified and after how long from the time of incident trigger. You will not be able to set the notification rules for any other user. 

### Notification Rules
**[Notification rules](notification-rules)** are rules that determine how an individual user is notified of an incident assigned to them. 
You can set up rules to notify you on any of the following notification channels: 

- Phone Call
- SMS
- Email
- Push Notification from the Squadcast mobile app

You can set up a rule to be notified immediately after an incident trigger or at any time interval (in minutes). You can add as many rules as you want in the rule chain. 

### Dashboard
The **[dashboard page](incident-dashboard)** is the first screen that appears when you log in to your Squadcast account. You can access it from the first option on the navigation sidebar.

The dashboard page has two sections: 
Summary Section: The top of the page holds the incident summary where you will be able to see the number of incidents distributed by their state. 

Incidents Section: The bottom of the page holds all the existing and incoming incidents with all the incident details associated with it. 

The dashboard functionalities: 

- Toggle function: You can use the toggle button to see incidents assigned to just you or the entire organization. The toggle button can be found on the top left corner of the dashboard page
- Incident states: You can see the number of incidents in each of the states - triggered, acknowledged, resolved and suppressed. 
- User metrics: You can use the dashboard toggle function to see your MTTA & MTTR or that of your entire organization.
- Filter incident activity by time: You can filter to see incidents from last week, last month, last year or for a custom date range. This can be done using the **Last Week**, **Last Month**, **Last Year** and **Custom Range** buttons on the top right corner of the dashboard page. 
- Incident Filter: In the incident section, incidents can be filtered via Impacted service (service name(s)), Incident source (alert source), assigned to (name of user, squad or escalation policies). 
- Bulk Actions: You can take actions to bulk acknowledge or resolve incidents from the **Actions** button the incident section from the dashboard page. 

### Alert
An alert is an incoming JSON sent to Squadcast from any alerting tool. Alerts are sent into Squadcast through **[alert source integrations](https://www.squadcast.com/integrations)** that you can find here. Alerts can be of different types - informational, warnings or actionable. You will also be able to send in alerts through our **[API](apiv2)** or **[Email integration](email)**.

### Incident 
An incident can be made up of multiple alerts or can be a standalone incident that is service / customer impacting. An incident is triggered within a service via the alert source integration. This then sets off the notification for the on-call user as per its escalation policy. When an incident is triggered, it will be in the **Triggered** state until the on-call user acknowledges it. 

When an incident is triggered, it comes with the following information: 
- Incident ID: The incident number on Squadcast. Incident number follows the general order with which the incidents are pushed into Squadcast. 
- Incident Name: The name of an incident. This typically describes the nature of the incident. 
- Incident Description: This carries a short summary of the incident and supporting links can be added here to give more context to the incident
- Impact on: The name of the service for which the incident was triggered
- Created Via: Alert source through which the incident was created
- Assigned To: The name of the user/ squad/ escalation policy that the incident was assigned to
- Status: The Incident state: triggered/acknowledged/resolved or suppressed. 
- Tags: Tags are added to an incident to classify them however best fits your incident management process (ex: sev:high or sev:critical; frontend or backend)

### Triggered 
An incident is considered to be in the **triggered** state before any user responds to the incident notification. Once an incident is triggered it will notify the on-call user(s) based on their notification rules. This also means that the incident is in the **open** state. 

### Acknowledged 
An incident is considered to be in the **acknowledged** state when a user has acknowledged an incident and is working on resolving it. 

### Resolved 
An incident considered **resolved** when the user has fixed the issue and they want the incident to be closed. Once an incident is resolved, no additional notifications will be sent and the incident cannot be opened again. This is one of the two final states on the Squadcast platform.

### Suppressed 
All incidents that evaluates to be true to any of the supression rules configured for a service will automatically go into the  **suppressed** state. This, and **resolved** are the two final states on the Squadcast platform.

### MTTA 
Mean Time To Acknowledge is the average time taken to acknowledge incidents. When the dashboard is toggled to **Yours**, the incident summary shows your MTTA and when it is toggled to **All**, the MTTA for the whole organization is shown. 

Note: The MTTA is calculated as a separate metric for every organization that you are a part of on Squadcast.

### MTTR
Mean Time To Resolve is the average time taken to resolve incidents. When the dashboard is toggled to **Yours**, the incident summary shows your MTTR and when it is toggled to **All**, the MTTR for the whole organization is shown. 

Note: The MTTR is calculated as a separate metric for every organization that you are a part of on Squadcast.

### Squad 
**[Squad](squads)** is a group/ team of users configured on the platform. Typically, squads are created to represent your current on-call organization or team structure (ex: backend squad, frontend squad or website monitoring squad, payment portal squad). 
Squads can be added to escalation policies. When an incident is assigned to a squad, the first one in the squad to acknowledge will be the incident owner and the **Assigned to** information for the incident will change to that user's name. You can access squads from the navigation sidebar. 


### Escalation Policies 
An **[escalation policy](escalation-policies)** is the chain of escalations that determine who should be notified first, second and so on, when an incident is triggered. Escalation policies are attached to a specific service. The same escalation policy can be attached to multiple services. You can access escalation policies from the navigation sidebar. 

Escalation policies can have users, multiple users, squads, and schedules. 

You will need to add the below details to create an escalation policy: 
- Policy Name: The name of the escalation policy (Ex: backend escalation)
- Policy Description: The description of the policy (Ex: Incidents triggered for all the backend services should be routed to the backend escalation policy)
- Rules: 
 - User or Squad or Schedule: Add users, squads or schedules to the rule
 - Escalation After: This is the time period after which if an incident is still in the triggered state, is escalated to the next rule in the policy. This time period can be adjusted to any amount of time (in minutes).
  - Escalate if: Incident is not acknowledged. Right now we only support this. Soon, we will be adding capability for escalating if not resolved. 

### Escalation Rule
Multiple escalation rules make an escalation policy. Typically, each escalation rule represents a different level of on-call duty. The first rule in the policy will determine who gets notified first about the triggered incident. This can either be a user, multiple users, squads, and schedules. 

If the incident still remains in the triggered state after the notifications have gone through to the users/squad/schedule and the time period closes from the first escalation rule, then the user/squad/schedule on the second rule on the escalation policy will be notified and so on. 

### Services
**[Services](adding-a-service-1)** are at the core of Squadcast. A service represents an application or component that is crucial for your product or service.  
Services are created with an alert source integration through which incidents are triggered. Services also holds the configuration engine that determines the suppression, tagging and routing rules for incidents triggered for that service. You can also set a service on Maintenance mode to disable incidents and notifications for a period of time that your service will be under maintenance. 

### Alert Source Integrations
An alert source integration is used to integrate with any monitoring, logging or tracing tool. Alert source integrations can be configured for services. You can also choose to send in alerts for a service using the API or email integrations. View our list of alert source integrations **[here](https://www.squadcast.com/integrations)**. Feel free to write to **[support@squadcast.com](mailto:support@squadcast.com)** if you need an integration you don't see in our list. 

### Service Levels 
**[Service levels](service-levels)** are attached to services and connect to the SLO dashboard. Service Levels are Service Level Objectives that you define for each service and can be configured for a service from the service page. 
Today, the configuration is made through our open source SDK, DEX. DEX SDK is available in Golang and NodeJS. 

You can add multiple Service Level Indicators that make up the Service Level Objective for a service. Today you can choose from Latency, Memory and Status Code for Service Level Indicators. 

### DEX SDK

**[Service Levels](service-levels)** are configured with DEX, our open source SDK. 
DEX is available for two languages: 
DEX SDK for Golang: https://github.com/squadcastHQ/dex-go
DEX SDK for NodeJS: https://github.com/squadcastHQ/dex-node

### Service Level Indicator (SLI) 
**[Service Level Indicators](service-levels)** (SLIs) are metrics that can be monitored and can act as quantifiable indicators of the quality of the service you provide to your customers. They are a direct measurement of a service’s behavior and are typically documented in service level agreements (SLAs), as well as in service level objectives (SLOs).
Some examples of SLIs are latency, availability, error rate and system throughput. 
Today, the platform allows for 3 SLIs - Latency, Memory and Status Code but we're working on a new version that will allow you to pull in any metrics from tools of your choice and also allow you to add custom SLIs. 

### Service Level Objective (SLO)
A Service Level Objective (SLO) is a target value or range of values for a service level that is measured by an SLI. SLOs specify a target level for the reliability of your service. Every customer-impacting service must have an SLO which will serve as its quantitative reliability measure.
Some examples of SLOs are: 
Availability: 97% 
Latency: 95% of requests < 500 ms

### Service Level Agreement (SLA)
Service Level Agreement (SLA)  is a promise between you and your customers on the acceptable availability of your system over a certain time period and it outlines business implications and compensation in the event of a breach. Today, this feature is not available on the platform but we are working on bringing the capabilities to measure this. 

### Error Budgets
Error Budgets are the single metric that can be utilized to determine whether the system can take on the additional risk of deploying a new feature or if the team should rather be focussed on making the system more reliable. It is an indication of the amount of headroom you have before an SLA breach. 

Error Budget = (1 - Availability) = Failed Requests / (Total Number of  Requests)

So if an SLO for a service is indicated as an Availability of 99.5%, then this service has an error budget of 0.5% which specifies the amount of total downtime you are allowed. Today, this feature is not available on the platform but we are working on bringing the capabilities to measure this. 

### Toil Budgets
Toil Budgets are a way for an engineer to understand how much time is going into doing work that holds no longer term value that can be automated. Toil is any work that tends to be manual, repetitive, automatable, tactical and devoid of long-term value. Additionally, toil tends to scale linearly as the service grows. Today, this feature is not available on the platform but we are working on bringing the capabilities to measure this. 

### SLO Summary
The **[SLO summary](slo-dashboard)** is a visual representation of your services' health. Note that only the services for which service levels are configured will show up on the SLO dashboard. 

### Maintenance Mode
**[Maintenance mode](maintenance-mode)** is used to temporarily disable notifications for a service for a set period of time. incidents triggered when a service is on maintenance mode will automatically go into the **suppressed** state. No notifications will be sent when a service is under maintenance. 

You can add multiple maintenance windows or schedule a recurring maintenance windows. 

### Tags
**[Incident tags](event-tagging)** are used to add more context to your incident and helps classify incidents. You can configure tags from **Tagging Rules** associated with a service. You can choose to configures rules with an incident JSON to automatically add tags when incidents are triggered. To know more about how to configure this, **[click here](event-tagging)**. 
You can add as many tags and map them with relevant information to add more context to the incident. 

### Routing Rules
**[Alert routing](alert-routing)** allows you to configure rules to ensure that alerts are routed to the right responder with the help of event tags attached to each alert.Routing is a part of the rules engine associated with each service. You can access **routing rules** from a service's options dropdown. 

Note that this rule will override the escalation policy attached to the service. This is typically used in cases where severities are configured via tags and each severity type is to be handle by a different level of on-call user.

### Dependencies 
Dependencies capture the dependant services for each service. This is an indication of what other services can get affected if the main service is impacted. You can add in dependant services for each service from the services page. This defined dependencies is associated with the Status Page. 

### Schedules 
**[Schedules](schedules)** allow you to create time-based rotations to create on-call schedules. An on-call schedule is a rotation that determines who is on-call at a specific time and date.

### Rotation Type
Rotation types determine how schedules function. Rotation types can be set to have users on-call for a day at a time or a week at a time, or the rotation can be customized to any specified number of hours, days, or weeks.

### On-Call Restrictions
Restrictions on an on-call schedule determine what hours during the day, and which days, a user is on-call. You can restrict on-call shifts daily or weekly for a period of time. If an incident is triggered anytime outside of this restriction, no notifications will be triggered. 

### Gaps in Schedule
A gap in the schedule indicates that no one is on-call for a certain amount of time. If there is a gap in the schedule, and no one is on-call. This is typically seen when custom rotations are created. In this case,  a primary on-call rotation is used as a fallback layer for incidents that may occur during the schedule gaps. This would mean that if an incident were to occur in a gap period, this incident would automatically be sent to the user on the primary rotation layer. 

### Rotation Layers
Rotation layers are used to create a fallback layer for when there are gaps in a schedule.

### Extensions (Integrations)
Extensions are deeper integrations with tools where actions can be taken from within the platform to reflect on the tool as well. Within Squadcast, this is called **Integrations** and can be found on the navigation sidebar.  
Typically, extensions augment your incident management process by connecting with other tools where actions are required. Typically, ITSM, Communication, Web conferencing, Version Control, CI/CD, SSO tools would act as extensions.

### Incident Page 
The incident page holds all the details associated with an incident. Each incident will open into an incident page. The page holds 3 main sections: 
- **[Incident details](incident-details)** - Top of the page
- **[Incident Notes](incident-notes)** - Below the incident details section
- **[Incident Timeline](incident-timeline)** - Right vertical section of the page

The **[Incident details](incident-details)** give you context of the incident by holding details such as - the name, description, impacted service, alert source and tag(s) on the top of the page. The page also holds all the actions you can take on the incident: 

- Acknowledge
- Resolve 
- More Actions

Right below is the **[Incident Notes](incident-notes)**, a chat interface where you can call in other users for help to collaboratively resolve an incident. 

The section on the right is the **[incident timeline](incident-timeline)**, that holds all the activity associated with the incident resolution. This is an automated, realtime data chain that can be downloaded in PDF and MD formats. 

### Incident Notes
**[Incident Notes](incident-notes)** is an incident specific chat room where you can call in your peers and collaboratively resolve an incident. Every person involved in the chat will also receive mobile push notifications if he is not online. You will also be able to sync your slack channel to ensure that any message on slack is on Squadcast and vice versa. 
This can also be used when an SME or additional support is needed for some inputs during the resolution process but needn't be an active part of the entire incident resolution. You can add and remove users from the room once their participation comes to an end. 

### Incident Timeline
You can access the **[Incident Timeline](incident-timeline)** by visiting the Incident Details page in the web app and the timeline will be displayed on the right-hand side of the page. The Incident Timeline will display the timeline of the incident in reverse chronological order as to when the incident was first Triggered and Assigned, who Acknowledged it or Re-assigned and who resolved them and when. The incident timeline can be exported in PD and MD formats. 

### Squadcast Actions
**[Squadcast Actions](what-are-squadcast-actions)** lets you take actions directly from Squadcast as a response to incidents by clicking the **More Actions** button from the incident page. Squadcast Actions are typically used as a means to reduce any customer impacting issue as soon as possible. In some cases, this resolves the issue and in others, there is a need for longer term remediation. This is left to the user and team to decide and act on. 

Today the platform has the following Actions: 
- **[Circle CI ](circleci-actions)**
- **[Squadcast Runbooks](squadcast-runbooks)**
- **[JIRA Cloud ](jira-cloud)**
- **[JIRA Server (on premise)](jira-server-on-premise)**

Some simple examples of actions are rebuilding your project, rolling back to the previous build, rebooting a server. You can choose to build a repository of any actions, even more complex ones to take action from Squadcast. 

### Circle CI Actions 
Squadcast supports actions such as Rebuilding **[CircleCI](circleci-actions)** projects directly from the incident page directly by clicking on the **More Actions** button from the incidents page. The link to the project status will be added to the timeline and you should be able to click on the link to view the status from Squadcast. 

### Squadcast Runbooks
**[Squadcast Runbooks](squadcast-runbooks)** are executable scripts that you can create and store within the platform to execute when repetitive incidents are triggered. You can execute Squadcast Runbooks from the **More Actions** button on the . incident page and resolve your incidents quickly and bring down your MTTR significantly. The link to the status of the script execution will be added to the timeline and you should be able to see the status of the same within Squadcast.

### JIRA Cloud & Server 
The **[JIRA Cloud](jira-cloud)** and **[JIRA Server](jira-server-on-premise)** Actions allow you to create tickets in JIRA with the incidents from Squadcast and sync status bidirectionally. You can access this by clicking on the **More Actions** button from the incident page. This is especially helpful if you have some tasks for longer term remediation of a particular incident or project.

### Postmortem
An **[Incident postmortem](postmortems)** is a post-incident review of all the activity pertaining to resolving the incident. Typically, an incident postmortem should contain details of the incident, impacted service, alert source, dependant services, timeline of resolution activity, users involved, corrective & remediation actions and lessons learned. 

You can create an incident postmortem from within an incident page once the incident is resolved from the options icon on the right corner of the incident details section. You can choose from several popularly used postmortem templates or have your admin/ account owner create one for your organization.

### StatusPage
**[StatusPage](statuspage)** helps you communicate the status of your services to your customers or internal teams at all times as opposed to you getting to know the status of your service though support tickets. You can access StatusPage from the navigation sidebar. 

StatusPages can either be public (accessible by everyone) or private (accessible by just your team on Squadcast) on Squadcast. You can also add a subscription option for your public status page so customers are automatically informed of any updates on the StatusPage. 

### Analytics 
The **[Analytics page](analytics)** helps you see how your organisation has performed in a given time period by providing you the hard numbers in easy to understand graphs and charts. You will be able to view the SLO dashboard, number of incidents by the state, MTTA and MTTR analysis. 
You can also filter reports based on the impacted service and the organization for which the incidents were triggered.
