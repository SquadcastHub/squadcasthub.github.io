---
title: Add Users
tags: [import-users, transfer-ownership]
keywords:
last_updated:
summary: "Adding multiple Users to your organization"
sidebar: mydoc_sidebar
permalink: docs/add-users
folder: mydoc
---

### Follow the steps below to add users

**(1)** Click on **Users** on the sidebar

![](images/add_users_1.png)

**(2)** Click on **Add Users**

![](images/add_users_2.png)

**(3)**  Fill in the First Name, Last Name, Email ID and User Type of the [users](managing-all-users) whom you wish to invite into your Organization

![](images/add_users_3.png)

New rows will auto-populate as you start filling the fields.

**(4)** To import multiple users to your organization, you can simply drag and drop a `.csv file` or click on **select a file from your computer** on the top of the page to bulk import users

![](images/add_users_4.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p><ul><li>Before you import make sure your CSV file is in the following format:</li></ul><br/>
<table>
    <tr>
        <th>first_name</th>
        <th>last_name</th>
        <th>email</th>
        <th>user_type</th>
    </tr>
    <tr>
        <td>Todd</td>
        <td>Chavez</td>
        <td>todd@squadcast.com</td>
        <td>stakeholder</td>
    </tr>
    <tr>
        <td>Diane</td>
        <td>Nguyen</td>
        <td>diane@squadcast.com</td>
        <td>admin</td>
    </tr>
    <tr>
        <td>Princess</td>
        <td>Carolyn</td>
        <td>carolyn@squadcast.com</td>
        <td>admin</td>
    </tr>
</table>
<ul>
    <li>You can skip the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> field if you wish to fill that field later, post import. By default, the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> chosen will be <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">User</code>.</li>
    <li>If you already have filled fields and choose to merge the CSV file data with existing rows, click on the Continue button in the modal for confirmation.</li>
    <li>Once the import is successful, you will see all the user details populated in the list</li>
    <li>You cannot change an <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Account Owner</code> using the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Import Users</code> flow.  If an invalid <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> is detected, the system automatically changes the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">user_type</code> to <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">User</code></li>
    <li>Ensure that there are no <i>spaces</i> before/after the data in the cells, especially the mail addresses of the users</li>
</ul></p>
{{site.data.alerts.end}}

**(5)** You can delete a row by clicking on the `Trash` icon on the right side of the row

![](images/add_users_5.png)

**(6)** If you have deleted a row by accident, click on the `Undo` button, that pops up at the bottom, to restore the deleted row

![](images/add_users_6.png)

**(7)** Click on `Send Invite(s)`, to invite the users to your Organization. The invited user will receive an email for verification

![](images/add_users_7.png)

**(8)** Until the user has been successfully verified, you will notice a message that says `Email is not verified` against that user on the **User Page**. You can also choose to resend the verification email by clicking on the **Resend Invite** icon should that be necessary

![](images/add_users_8.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>You will not be able to transfer <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Account Ownership</code> with the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Add User</code> flow.</p>
{{site.data.alerts.end}}

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/>
In order to use mobile app, make sure you have verified your email address. You can do that by opening the verification link sent in your email in a browser.
{{site.data.alerts.end}}

### FAQs

**Q**: Can I add more than one Account Owner?
<p style="margin-top: -10px;"><b>A</b>: No, there can be only one Account Owner per account</p>

**Q**: How can I transfer ownership?
<p style="margin-top: -10px;"><b>A</b>: Click on Transfer Ownership beside the name of the current owner to make the changes.</p>

![](images/add_users_9.png)