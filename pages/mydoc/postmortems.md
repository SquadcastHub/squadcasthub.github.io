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

Postmortems are a way to summarize the resolution for an incident once it is resolved. It is also a way for you to create a knowledge-base of failures and fixes that can be shared across your organization to help build a culture of shared learning and learning from failures. 

In this documentation, we'll be going through the following:

- Postmortem Templates
- Creating a Postmortem

### Postmortem Templates

Each organization has a few predefined **Postmortem Templates** from **Squadcast**. You can choose to create new templates/modify existing ones, based on how you do postmortems within your organization.

You can follow the steps below to create a new Postmortem Template in Squadcast:

**(1)** Click on **Settings** on the sidebar

![](images/postmortem_1.png)

**(2)** Click on **Postmortem Settings**. Here you'll find the list of pre-defined templates

![](images/postmortem_2.png)

**(3)** You can either make use of the existing templates or add new templates for the rest of your Organization to use

![](images/postmortem_3.png)

**(4)** There is a set of `incident-variables`, which can be used while creating **Postmortem Templates**. These `incident-variables` will dynamically get populated with the incident's data for which the Postmortem is being created. You can see all the available `incident-variables` on the right-half while creating templates. The variables need to be specified using [MustacheJS syntax](https://github.com/janl/mustache.js/). Refer to the pre-defined templates for the templating syntax.

![](images/postmortem_4.png)

**(5)** A template can be marked **Default**. While filling a Postmortem report for an incident, the default template would pop up automatically when a user **Starts a Postmortem**.

![](images/postmortem_5.png)

Click on **Add** to save the new template or **Update** to save the changes in an existing template

### How-to-video: Creating a Postmortem Template

<div class="wistia_responsive_padding" style="padding:53.75% 0 0 0;position:relative;"><div class="wistia_responsive_wrapper" style="height:100%;left:0;position:absolute;top:0;width:100%;"><iframe src="https://fast.wistia.net/embed/iframe/yz4mmxhi31?videoFoam=true" title="Create Postmortem Template Video" allow="autoplay; fullscreen" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen msallowfullscreen width="100%" height="100%"></iframe></div></div>
<script src="https://fast.wistia.net/assets/external/E-v1.js" async></script>

### Creating a Postmortem

#### Prerequisites:

The Postmortem feature is enabled for an incident only after it has been resolved. Hence, an incident first needs to be **Resolved**
Only the **Account Owner**/**Admin** of an Organization has the access to modify the templates and/or create new templates for the Organization

**(1)** To create a Postmortem for a resolved incident, go into the **Incident Details Page** and Click on **Start Postmortem**

![](images/postmortem_6.png)

**(2)** You can select one of the Postmortem Templates from the drop-down and start documenting the Postmortem 

**Note**: The `incident-variables` will get auto-populated as per the data available for that particular incident. Remaining details need to be manually filled by the user by **Editing** the Postmortem.

![](images/postmortem_7.png){: style="max-width: 30%" }

**(3)** Apart from the Markdown body, in a Postmortem, you can also create a check-list of follow-ups that can be used to keep track of further actions that need to be done for that incident

![](images/postmortem_8.png){: style="max-width: 30%" }

**(4)** Click on **Create** to save the Postmortem

**(5)** Once a Postmortem is created, all the users (including Stakeholders) can view the Postmortem and download it in Markdown (MD) and PDF formats

![](images/postmortem_9.png){: style="max-width: 30%" }

### FAQs

**Q:** Who can create Postmortem Templates?

**A:** Only **Account Owner** and **Admins** of an organization have the access to modify or create the templates.

**Q:** Can Stakeholders create Postmortem Templates?

**A:** No, **Stakeholders** cannot create Postmortem Templates.

**Q:** When can Postmortems be created?

**A:** The Postmortem feature is enabled for an incident only after the incident has been resolved.