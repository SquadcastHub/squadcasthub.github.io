---
title: Squadcast Search
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Use the global search bar to look for incidents, documentation or other entities within the platform"
sidebar: mydoc_sidebar
permalink: docs/squadcast-search
folder: mydoc
---

## Basic commands

Search requires some basic commands to work with. 

- Once in search, autocompletes can be provided with `Tab`
- Use `CTRL + SPACE` to view autocomplete
- Access search helps within search by typing in `?:`
- To execute a command use `CMD + ENTER` for Mac and `CTRL + ENTER` for Windows

![](images/search_1.png)

## goto

`goto` enables _instant navigation_ when used along with `profile`.

- Activate the global search bar using `CMD/CTRL + SHIFT + K`
- Type in `goto` and enter
- Type in `profile` and then search for users by their email address
- `CMD/CTRL + Return/Enter` to navigate to the user’s profile

![](images/search_2.png)

![](images/search_3.png)

## Help

Now you can navigate to alert source integration documents directly through the search. Type in `help:` and then the keyword or name of the documentation you want to search for.

![](images/search_4.png)

## Search through Incidents

Search incidents with queries. We support a set of tokens to fine-tune the results. Supported tokens can be viewed in the search help by typing `?:` 

![](images/search_5.png)

## Search through Postmortems

Search postmortems with queries from the **Global  Search Bar**

We support a set of tokens to fine-tune the results. Supported tokens can be viewed in the search help by typing `?:`

![](images/search_6.png)

You can search for **Postmortems** through **Incident Message** and **Description**, **Impacted Service**, **Created After**, **Created Before** and **Postmortem Content**.

{{site.data.alerts.blue-note}}
<b>Note: The <code class='highlighter-rouge' style='color: #c7254e; background-color: #f9f2f4 !important;'>message</code> query</b>
<br/><br/><p>The <code class='highlighter-rouge' style='color: #c7254e; background-color: #f9f2f4 !important;'>message</code> query looks for a string match in the Incident Title and the Postmortem Content.</p>
{{site.data.alerts.end}}

Example Use Case: 

I want to look for a postmortem that contains the string `jira` in its Incident Message. 

- Type in `?:` if you want to look up the query token 
- Type in `in: postmortems message "jira"`
- Hit `Command + Enter`

Your search results that match this query will be populated as shown below

![](images/search_7.png)

Search also provides history of queries. Search history is specific to a user with respect to the Organization.
