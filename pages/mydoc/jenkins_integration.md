---
title: Jenkins Integration
tags: [integration, jenkins]
keywords: 
last_updated: 
summary: "This document shows you how you can integrate Squadcast with the Jenkins build pipeline"
sidebar: mydoc_sidebar
permalink: docs/jenkins
folder: mydoc
---

This documentation will help you integrate Jenkins Build Job with Squadcast. With this, you will be able to bring in your build updates, such as, success and failure statuses as incidents on Squadcast. 

## Integrate with the Jenkins Plugin 

- Log into your Jenkins account

- Install [Post build task plugin](https://wiki.jenkins.io/display/JENKINS/Post+build+task) in Jenkins

- Create a user in Jenkins

{{site.data.alerts.note}}
<br/><br/><p>This user will be used with curl command to fetch the Jenkins job status.</p>
{{site.data.alerts.end}}

- Move over to the relevant service. This service will essentially bring in your build updates from Jenkins, that is, success/ failure and create it as an incident on Squadcast. 

- Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Jenkins** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/jenkins_1.png)

- Add a Post build task and run the following command in Script text box. 

- Replace the API URL here with the API Webhook URL you see on Squadcast for the created service. 

- Replace username and password with your Jenkins username and password.

```
curl https://raw.githubusercontent.com/SquadcastHub/Integration-scripts/master/jenkins/send-data-to-squadcast.py | python3 - --url *EnterSquadcastAPIURLHere* --username *EnterYourJenkinsUsername* --password *TypeYourJenkinsPassword*
```

![](images/jenkins_2.png)

{{site.data.alerts.green-note-check}}
<b>What we recommend: </b>
<br/><br/><p>We highly recommend cloning this repo and using your repo link in the above curl call. This will allow you to customize your incident description.</p>
{{site.data.alerts.end}}

## Sample incident created in Squadcast-App

![](images/jenkins_3.png)