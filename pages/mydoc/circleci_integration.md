---
title: CircleCI Integration
tags: [integration, circleci]
keywords: 
last_updated: 
summary: "Integrate CircleCI to perform actions directly from Squadcast"
sidebar: mydoc_sidebar
permalink: docs/circleci-integration
folder: mydoc
---

## CircleCI Actions 

[CircleCI](https://circleci.com/) is a modern continuous integration and continuous delivery (CI/CD) platform. CircleCI automates build, test, and deployment of software.

Squadcast’s **Extension** with CircleCI enables you to rebuild projects from within the Squadcast platform. 

This is primarily helpful in a situation where you want to quickly mitigate a *customer experience* issue by rolling back to an older successful build. 
 
### Prerequisite

Only Account Owners and Admins have permission to enable or disable Extensions in Squadcast

### Enabling your CircleCI Extension

**(1)** Navigate to the **Extensions** page from the left navigation sidebar
 
**(2)** Move over to the CircleCI extension and click on **Integrate** 

![](images/circle_ci_actions_1.png)

**(3)** In your CircleCI dashboard, move over to **User Settings** 

![](images/circle_ci_actions_2.png) 

**(4)** Click on **Personal API Tokens** and then, **Create New Token** to create a new API token for Squadcast 

![](images/circle_ci_actions_3.png)

**(5)** Use a meaningful name for the token like “Squadcast” or “Squadcast Incidents”. Click on **Add API Token** to save and view the API Token

![](images/circle_ci_actions_4.png)

![](images/circle_ci_actions_5.png)

**(6)** Copy the API Token shown in the CircleCI screen

![](images/circle_ci_actions_6.png)

**(7)** Paste the copied API Token in the Squadcast CircleCI extension screen and click on **Save** to enable your CircleCI integration

![](images/circle_ci_actions_7.png)

Your CircleCI integration is good to go and you will be able to perform CircleCI actions directly for any incident.

![](images/circle_ci_actions_8.png)

### Using CircleCI Actions 

Now that your CircleCI extension is enabled, follow the steps below to understand how to take CircleCI actions from within Squadcast. 
 
**(1)** Navigate to the [Incident Details](incident-details) page of an incident for which you want to take the CircleCI action. In this example, we’re choosing the incident below to demonstrate. 

**(2)** Click on **Actions** to see a list of allowed/enabled actions for your Organization 

![](images/circle_ci_actions_9.png)

**(3)** Select **CircleCI** from the list of allowed/enabled actions

![](images/circle_ci_actions_10.png)

![](images/circle_ci_actions_11.png)

**(4)** Click on **Rebuild**  from the **Actions** to see a list of projects you can take this action on

![](images/circle_ci_actions_12.png)

**(5)** Click on a **Project** of your choice and the **Build** you want to rollback to

![](images/circle_ci_actions_13.png)

![](images/circle_ci_actions_14.png)

**(6)** Click the **Rebuild** button to trigger the build again and you can see the link to the CircleCI build in the resulting screen.

![](images/circle_ci_actions_15.png)

![](images/circle_ci_actions_16.png)

You will also be able to see the actions performed in the **Incident Activity Timeline** on the right.

![](images/circle_ci_actions_17.png)

The link will take you straight to the CircleCI **Jobs View** screen showing the result of the triggered build action. 

![](images/circle_ci_actions_18.png)