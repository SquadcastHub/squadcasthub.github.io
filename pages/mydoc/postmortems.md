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

Postmortems are a way to summarize the resolution for an incident once it is resolved. It is also a way for you to create a knowledge-base of failures and fixes that can be shared across your team to help build a culture of shared learning and learning from failures. 

In this documentation, we'll be going through how to create Postmortems.

### Prerequisites

- Ensure that the users of the Team have the right Roles (with the right permissions associated with the Postmortem entity) to be able to create and manage Postmortems

- The Postmortem feature is enabled for an incident only after it has been **resolved**. Hence, an incident first needs to be **resolved**

![](images/postmortem_new_2.png)

### Creating a Postmortem

To create a Postmortem for a **resolved incident**:

**(1)** Navigate to the **Incident Details** page for the incident and click on **Start Postmortem**

![](images/postmortem_6.png)

**(2)** You can select one of the Postmortem Templates from the drop-down and start documenting the Postmortem 

**Note**: The `incident-variables` will get auto-populated as per the data available for that particular incident. Remaining details need to be manually filled by the user by **Editing** the Postmortem.

![](images/postmortem_7.png){: style="max-width: 30%" }

**(3)** Apart from the Markdown body in a Postmortem, you can also create a **check-list of follow-ups** that can be used to keep track of further actions that need to be done for that incident

![](images/postmortem_8.png){: style="max-width: 30%" }

**(4)** Click on **Create** to save the Postmortem

**(5)** Once a Postmortem is created, any member of the Team with the right permissions can view and manage the Postmortem

**Note:** Once the Postmortem is created (and updated), it can be downloaded offline in either `Markdown (MD)` or `PDF` format.

![](images/postmortem_9.png){: style="max-width: 30%" }

### Updating a Postmortem

We understand that conducting Postmortems and documenting it is an iterative process in some cases. In Squadcast, once a Postmortem is created, users with the right permissions can update the Postmortems as well.

There are 2 ways to do this:

**(1)** For an incident, head over to its **Incident Details** page and click on **Update Postmortem**. Switch to the **Edit** mode. Then, make the necessary modifications and click on **Update**

![](images/postmortem_new_3.png)

**(2)** Head over to **Postmortems** from the navigation on the left, scroll to the applicable Postmortem in the list. Click on the **Edit** icon, make the necessary changes and click on **Update**

![](images/postmortem_new_4.png)