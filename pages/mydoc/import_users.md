---
title: Import Users
tags: [Add-Users, Transfer-Ownership]
keywords:
last_updated:
summary: "Import users into Squadcast using a .csv file"
sidebar: mydoc_sidebar
permalink: docs/import-users
folder: mydoc
---

You can import multiple users to your organization.

You can access the page by clicking on the Users tab from the sidebar and pressing the Add Users button on the top right side of the page.

![](images/add_users_1.png)

![](images/add_users_2.png)

- You can import multiple users into the fields using a CSV file rather than typing them out. 

- Your CSV file should be of the following format:

```csv
first_name,last_name,email,user_type
Todd,Chavez,todd@squadcast.com,stakeholder
Diane,Nguyen,diane@squadcast.com,admin
Princess,Carolyn,carolyn@squadcast.com,admin
```

- You can skip the `user_type`  field if you wish to fill that field later, post import. By default, the `user_type` chosen will be `User`. 

- To import your CSV file you can either drag and drop it on the page or click on the `select a file from your computer` link, on the top of the page.

![](images/import_users_1.png)

- If you already have filled fields and choose to merge the CSV file data with existing rows, click on the Continue button in the modal for confirmation.

![](images/import_users_2.png)

- Once the import is successful, you will see all the user details populated in the list.  Click on the `Send Invites` button, on the bottom left, to invite them to your organization. 

- The invited user will receive an email for verification. Until the user has been successfully verified, you will notice an icon indicating that `Verification Is Pending` against that User on the `User Page`. 
You can also choose to resend the verification email by clicking on the `Verification Is Pending`  icon should that be necessary.

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><p><ul><li>You cannot change an <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Account Owner</code> using the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Import Users</code> flow.</li>
<li>If an invalid <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> is detected, the system automatically changes the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> to <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">User</code></li></ul></p>
{{site.data.alerts.end}}