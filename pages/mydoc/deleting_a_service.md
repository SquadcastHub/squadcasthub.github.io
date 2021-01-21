---
title: Deleting a Service
tags: [deleting service, deleting, service]
keywords:
last_updated:
summary: "Deleting a Service"
sidebar: mydoc_sidebar
permalink: docs/deleting-a-service
folder: mydoc
---

You can delete a service by following the steps below. 

1) Move over to the `Services` tab from the navigation sidebar. You will now be able to see the list of services configured for your organization. 

![](images/deleting_service_1.png)

2) Move over to the service that you wish to delete. Click on the `More Options` icon and select `Delete` from the dropdown. 

![](images/deleting_service_2.png)

3) You will then see a confirmation pop-up and you can click on `Delete` to delete the service forever. 

![](images/deleting_service_3.png)

## Unable to delete Service and an error message is thrown

In cases where there are open (Triggered / Acknowledged) incidents for a service, the system will not allow you to delete the service without resolving these incidents. 

You will be able to see a similar error message in cases like these. 

![](images/deleting_service_4.png)

You will have to resolve all the open incidents and then follow the same process stated above to delete the service. 

To resolve multiple incidents at one shot, check out the [Take Bulk Actions](https://dash.readme.com/project/squadcast/v1.0/docs/take-bulk-actions) documentation.