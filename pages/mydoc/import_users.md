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

You can import multiple users to your Organization without having to add them manually, one-by-one.

### Steps to Import Users

**(1)** Click on **Settings** in the sidebar

![](images/add_and_delete_users_1.png)

**(2)** Click on **Users** from the secondary navigation menu

![](images/add_and_delete_users_2.png)

**(3)** Click on **Add Users** on the top right corner

![](images/add_and_delete_users_3.png)

- Now, simply import multiple users' details into the fields using a `.csv` file

- To import your `.csv` file, you can either drag and drop it on the page or click on the `select a file from your computer` on the top of the page

![](images/add_and_delete_users_7.png)

{{site.data.alerts.yellow-note-i-md}}
**Important:**

Your `.csv` file should be of the following format:

```csv
first_name,last_name,email,user_type
Todd,Chavez,todd@squadcast.com,stakeholder
Diane,Nguyen,diane@squadcast.com,user
Princess,Carolyn,carolyn@squadcast.com,user
```
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i-md}}
**Note:**

You can skip the `user_type` field if you wish to fill that field later, post the import. By default, the `user_type` chosen will be `User`.
{{site.data.alerts.end}}

### Things to Remember

- If you have already filled some fields and then choose to merge the `.csv` file data with the existing rows, click on the **Continue** button in the modal for confirmation of the same. Once the import is successful, you will see all the user details populated in the list. Click on the **Send Invites** button, on the bottom left, to invite these newly added users to your Organization.

- The invited user will receive an email for verification. Until the user has been successfully verified, you will notice an icon indicating that `Verification Is Pending` against that User. 

- You can choose to resend the verification email by clicking on the `Verification Is Pending` icon should that be necessary. Please ensure that you check not only your _Inbox_, but also _Spam_ or _Promotions_ folders to ensure the verification email ended up landing there.

- You cannot change or transfer the Account Ownership using this _Add Users_ flow. This needs to be done after the users have been imported.

- If an invalid **User Type** is detected, Squadcast automatically assigns the **User Type** as `User` for that particular user.

- Ensure that there are **no spaces before or after the data in any of the cells, escpecially for the Email addresses of the users**.