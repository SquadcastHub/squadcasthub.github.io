---
title:  Postmortems
last_updated:
summary: "Postmortems are a way to summarize the resolution for an incident once it is resolved"
last_updated:
tags: [postmortems]
sidebar: mydoc_sidebar
permalink: docs/postmortems
folder: mydoc
---

Postmortems are a way to summarize the resolution for an incident once it is resolved. Postmortems are a way for you to create a knowledge-base of failures and fixes that can be shared across your organization to help build a culture of shared learning and learning from your failures. 

In this documentation, we'll be going through the following  :- 

* Postmortem Templates
* Creating a Postmortem

### Postmortem Templates

* Each organization gets a few pre-defined postmortem templates from **Squadcast**. You can choose to create new templates / modify existing ones, based on how you do postmortems within your organization. To do so, click on the organization settings button as shown in the image below.

![](images/postmortem_1.png){: style="max-width: 40%;" }

* This will take you to organization settings page. Go the **Postmortem Settings** tab. 

![](images/postmortem_2.png)

Here you'll find postmortem templates for the organization.

![](images/postmortem_3.png)

* You also get the feature of to inherit existing templates from the dropdown while creating a new template.

![](images/postmortem_4.png)

* You can mark one of the existing templates as **default** so that this template would automatically be the default template, as the name suggests, the next time a postmortem is created.

* There is a set of `incident-variables`, which one can make use of while creating postmortem templates. These `incident-variables` will dynamically get populated with the incident's data for which the postmortem is being created. You can see all the available `incident-variables` on the right-half while creating templates. The variables need to be specified using [MustacheJS syntax](https://github.com/janl/mustache.js/). Refer to the pre-defined templates for the templating syntax.

![](images/postmortem_5.png)

{{site.data.alerts.blue-note}}
<b>Access Control For Template Creation:</b>
<br/><br/><p>Only <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">account-owner/admin</code> of an organization has the access to modify the templates</p>
{{site.data.alerts.end}}

### How-to-video: Creating a Postmortem Template

<iframe width="560" height="315" src="https://www.youtube.com/embed/Qr3Rz0J3VHE?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Creating a Postmortem

* Note: Apart from **Stakeholder**, all other roles have write access to postmortems. **Stakeholder** will have a read access only. 
* The postmortem feature is enabled for an incident only after it has been resolved.
* To create a postmortem for a resolved incident, go into the **Incident Details Page**, click on the **More Options** icon (3 dots), click on **Start Postmortem**. 

![](images/postmortem_6.png)

* You can select one of the postmortem templates from the dropdown for your organization and start documenting the postmortem. 

**Note**: Only `account-owner/admin` of an organization has the access to modify the templates and/or create new templates for the organization.

**Note**: The incident variables will get auto-populated as per the data of that particular incident. Remaining details need to be manually filled by the user.

* Apart from the markdown body, in a postmortem, you can also create a check-list of follow-ups that can be used to keep track of further actions that need to be done for that incident.
* Once a postmortem is created, all the users (including Stakeholders) can view the postmortem and download it in MD and PDF formats.

<iframe width="560" height="315" src="https://www.youtube.com/embed/j2pF-ow_uQ0?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>