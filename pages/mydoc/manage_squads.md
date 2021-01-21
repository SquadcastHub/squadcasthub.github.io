---
title: Manage Squads
tags: [squads]
keywords: 
last_updated: 
summary: "Everything you need to know about Squads"
sidebar: mydoc_sidebar
permalink: docs/squads
folder: mydoc
---

## What are Squads?

A Squad is a group of users that can refer to a team or a project. Squads are handy when you need to notify the whole group together. For instance, when coordinated response is required for high-urgency high-complexity incidents, or at the end of an escalation policy when nobody has acknowledged.

![](images/manage_squads_1.png)

## Add or Remove a Squad Member

User can create a Squads under **Squads (Sidebar) → Add Squad**.

Type in a Squad name and add or remove users as needed and Click **Save**. 

![](images/manage_squads_2.png)

## Using Smart Squads

You can also create a Smart Squad by adding a code repository to the Squad. This is only possible after integrating SCM tools like GitHub under the Integrations tab.

![](images/manage_squads_3.png)

The list of available repositories will appear in the drop-down with a GitHub icon. 

Smart Squads are useful to escape configuration hell for products that several different people work on at different times. 

Our system tracks everybody who is committing code to that repository based on your preferences and engineering velocity (you can currently choose commits in last 'n' days or last 'n' commits). Then, the relevant users are dynamically added to that squad based on user selection.

![](images/manage_squads_4.png)

Normal Squads and Smart Squads can be differentiated by a glowing light bulb symbol which appears only for Smart Squads and also by the GitHub repo tag in the Squad cards.