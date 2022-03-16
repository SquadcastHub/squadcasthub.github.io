---
title:  Runbooks
last_updated:
summary: "Create, attach, reference and mark progress for incident resolution using Runbooks"
last_updated:
tags:
sidebar: mydoc_sidebar
permalink: docs/runbooks
folder: mydoc
---

## Understanding Runbooks

A Runbook is a compilation of routine procedures and operations that are documented for reference while working on a critical incident. Sometimes, it can also be referred to as a Playbook.

Typically, organizations store their incident checklists in various places such as Google Docs, Notion, Confluence etc., and sometimes even stored in a physical notebook. Valuable time is lost in searching for these different checklists and following up on the list items while working on critical incidents.

In order to avoid delays, scrambling between multiple tools and tabs to find the right checklist, Squadcast brings to you Runbooks. This feature will help you access the relevant Runbook, associate it with incidents and assign tasks to relevant users.

## Types of Runbooks

Runbooks are differentiated mainly into two categories, Simple Runbooks or Executable Runbooks. 

### Simple Runbooks

Simple Runbooks are a checklist of tasks that need to be performed manually for an incident. These could either be procedures that need to be performed during the occurrence of a Sev1 incident, or technical/functional instructions to debug and fix a certain issue, along with the code that needs to be manually executed.

Simple Runbooks is what the v1 of Runbooks in Squadcast has to offer. One can easily create Runbooks and use it as a reference once it is attached to an incident. Additionally, one can mark the progress against each step in the Runbook.

{{site.data.alerts.yellow-note-i-md}}
**Note:**

Simple Runbooks will be available for accounts in the [Pro and Enterprise plans](https://squadcast.com/pricing).
{{site.data.alerts.end}}

### Executable Runbooks

Executable Runbooks perform operations within your environment on your behalf, such as executing a script, restarting a remote server, etc. This feature would be available in the next version of Runbooks.
