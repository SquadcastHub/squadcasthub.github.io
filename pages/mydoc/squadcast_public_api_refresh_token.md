---
title: Squadcast Public API - Refresh Token
tags: [api]
keywords: 
last_updated: 
summary: "Generate Refresh token to access Squadcast API"
sidebar: mydoc_sidebar
permalink: docs/squadcast-public-api
folder: mydoc
---

This document will walk you through generating an API Refresh token which you can use to call the Squadcast Public API. 

The [Squadcast Public API](https://apidocs.squadcast.com) provides you the ability to access certain Squadcast features within your account, allowing you to configure users, services, grouping incidents and more to help further reduce noise and speed up response times

{{site.data.alerts.yellow-note-i}}
<b>Note: </b>
<br/><br/><p>We have recently changed the flow of generating a refresh token to access the Squadcast API.</p>
{{site.data.alerts.end}}

In order to use the Squadcast API, you will need to first generate a Refresh token from the Squadcast Web App by following the steps below. 

## From Your Profile Page

1.Move over to the `My Profile` page from the top right corner of your screen. 

![](images/squadcast_api_1.png)

2.In the next window, click on the `Generate New Token` button from the `API Refresh Token` section. 

![](images/squadcast_api_2.png)

3.A Refresh token will be generated and displayed. You can use this to generate the Refresh Token and use it to access our public APIs as given in the [Squadcast API documentation](https://apidocs.squadcast.com/).

![](images/squadcast_api_3.png)

You can also Revoke the Refresh token and the associated Access Tokens will also get revoked.

🔒Please keep your Refresh Token as safe as your Password.

For more details regarding how to use the Squadcast Public APIs, please refer the [Squadcast API Documentation](https://apidocs.squadcast.com/).

## Account Owner Controls 

As an Account Owner of a Squadcast organization, you can invoke or revoke refresh tokens for admins and users in your organization. 

1.Move over to `Settings` from the left side navigation panel.

![](images/squadcast_api_4.png){: style="max-width: 30%" }

{{site.data.alerts.blue-note}}
<b>Note: </b>
<br/><br/><p>The API Refresh token is role restricted, that is, an API Refresh token created for a <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">User</code> will only allow User specific controls. <br/><br/>
The API Refresh token created for an <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Admin</code> will only provide Admin specific controls.</p>
{{site.data.alerts.end}}

2.Click on `API Tokens` to view the active API tokens and to create or revoke existing tokens. 

Click on `Assign Token To User` to invoke an API Token for any User or Admin in your organization. 

![](images/squadcast_api_5.png)

3.Pick the User or Admin from the dropdown menu for whom you want to assign an API Token. You can add more by simple clicking on the `Assign Token To User` and following the same process. 

![](images/squadcast_api_6.png)

The assigned token will also be visible to the Users/ Admins on their respective `My Profile` pages.  

![](images/squadcast_api_7.png)

🔒 Please keep your Refresh Token as safe as your Password

Check out the list of available APIs in [Squadcast API Documentation](https://apidocs.squadcast.com)