---
title: Suppression Rules
tags: [alert suppression]
keywords:
last_updated:
summary: "Avoid Alert Fatigue with Suppression Rules"
sidebar: mydoc_sidebar
permalink: docs/suppression-rules
toc:
folder: mydoc
---

Now you can enable Suppression Rules for any service and choose to ignore or notify alerts based on the text that the incident contains or doesn't contain. You can configure it the way you want.

To get started with Suppression Rules, log in to [Squadcast](https://app.squadcast.com) and click on the Services from the sidebar and click on the edit (3 dots) button on the service in which you want to suppress alerts and select Suppression Rules.

![](images/suppression_1.png)

Then you can proceed to add the suppression rule based on the text that the Incident Message or Description, contains or doesn't contain and you can choose to suppress the incident.

![](images/suppression_2.png)

{{site.data.alerts.note}}
<p><ul><li>Suppression and Resolved are final states in Squadcast. You will not be able to take any action on alerts in these states. </li><li>Incident information will be available on the Squadcast platform even if they are suppressed.</li></ul></p>
{{site.data.alerts.end}}

You can add as many suppression rules as you want and save it and Squadcast will suppress the incidents that matches these rules. The Incidents will go into Suppressed state and you won't get any notifications for those incidents.