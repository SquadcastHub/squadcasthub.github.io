---
title: Create Smart Squads
tags: [smart squads]
keywords:
last_updated:
summary: "Smart Squads allow you to dynamically add users to a Squad by integrating with your Version Control Tool"
sidebar: mydoc_sidebar
permalink: docs/create-smart-squads.html
folder: mydoc
---

## What are Smart Squads? 

Smart Squad allows you to dynamically add users to a Squad by integrating with the SCM tool that you use. Smart Squads are especially useful in cases where several people are working on the same team and helps get to the right responder immediately. 

## How do Smart Squads work?

The integration with your SCM tooling allows Squadcast to look at just the **Meta Data** to add users who have worked on the code recently, based on the engineering velocity rules you have set. 

## Using Smart Squads

- You can also create a Smart Squad by adding a code repository to the Squad. This is only possible after integrating SCM tools like GitHub under the `Integrations` tab from the navigation sidebar.

![](images/smart_squads_1.png)

- The list of available repositories will appear in the drop-down with a GitHub icon. 

- Our system tracks everybody who is committing code to that repository based on your preferences and engineering velocity (you can currently choose commits in last 'n' days or last 'n' commits). 

- Then, the relevant users are dynamically added to that squad based on user selection.

![](images/smart_squads_2.png)

![](images/smart_squads_3.png)

## Differentiating Smart Squads 

Normal Squads and Smart Squads are differentiated by a glowing light bulb symbol which appears only for Smart Squads and also by the GitHub repo tag in the Squad cards.

![](images/smart_squads_4.png)