---
title:  Create Incident Manually
summary: "Tigger incidents manually"
tags: [manually creating incident]
last_updated:
sidebar: mydoc_sidebar
permalink: docs/manually-creating-an-incident
folder: mydoc
---

Incidents can be triggered manually either from the **Incident Dashboard** or the **Incident** page.

First, select the **Team** from the team picker on the top.

![](images/incident_1.png)

### Triggering Incidents in the **Incident Dashboard**

Click on **+** right next to the **Actions** dropdown tab 

![](images/manual1.png)

### Triggering Incidents in the **Incidents** page

**(1)** Click on **Create an Incident**

![](images/manual2.png)

**(2)** Add details in the relevant fields:

![](images/manual3.png)

- **Incident Title** - This would be the title/message of the incident being created
- **Incident Description** - This would be the description of the Incident being created. This is an optional field.
- **Service** - Select the relevant **Service** to which this incident would be mapped
- **Assigned To** - Upon choosing the **Service**, the default **Escalation Policy** associated with the **Service** would be auto-filled. You can choose to manually update the **Assigned To** field to a different **Escalation Policy** or a specific **User** or **Squad** in your Team
- **Tags** 

![](images/manual4.png)

- By default, you will have the option to add **Tags** to an incident (either while creating the incident or after the incident is created)
- You can do so by assigning the `tag name (key)` and `tag value` in the text fields provided and you can also change the tag color by clicking on the colour of your choice
- You can select the tags from the dropdown menu of pre-existing tag key and value pairs 
- You can also add multiple tags by clicking on the **+** option
- Adding a **Tag** is optional

![](images/tagging_new_1.png) 

**(3)** Click on **Create new incident** to trigger the incident

### Adding Attachments to Incident Description

You can add a variety of file types as an attachment to your incident's description.

To attach a file, drag and drop the file to the markdown editor. You can also copy-paste the file directly in the markdown editor.

The maximum size for a single single file is 10 MB (for upload). You can upload a maximum of 5 files at a time.

The storage limit for an organization depends on the plan:

- For Free plan - the limit is 50 MB
- For Pro and Enterprise plans - the limit is unlimited

File uploads won’t work if the plan limit has been reached. File once uploaded cannot be deleted.

The supported file types are:

- Images (.png, .jpg, .jpeg)
- Word Processors (.doc, .docx, .odt, pages)
- Spreadsheets (.xls, .xlsx, numbers)
- PDFs (.pdf)
- Presentations (.ppt, .pptx. .odp)
- Miscellaneous (.log, .txt, .odv, .csv, key, json, log)

