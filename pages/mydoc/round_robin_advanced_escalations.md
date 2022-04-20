---
title: Round Robin & Advanced Escalations
keywords:
last_updated:
summary: "Round Robin & Advanced Escalations help users configure more granular and customised escalation rules"
sidebar: mydoc_sidebar
permalink: /docs/round-robin-advanced-escalations
folder: mydoc
---
## Round Robin & Advanced Escalations

Round Robin & Advanced Escalations allow users to set up round robin rotations, granular escalation levels with sub-escalations, individual escalation level repetitions with timeouts, and much more.

{{site.data.alerts.blue-note-md}}
**Note:**

These features are available in the Pro and Enterprise [plans](https://www.squadcast.com/pricing).
{{site.data.alerts.end}}

## Round Robin Escalations

Round Robin Escalation is an incident assignment strategy where users are placed in a ring and assigned to incidents sequentially. This strategy can help ensure that incidents are equitably distributed. It can also lower incident response time if a service experiences concurrent incidents, since the incidents will not all be assigned to the same responder.

### Understanding Round Robin Escalation

#### Assignment Ring

Users, Squads and Schedules are placed in an order in which they are assigned to an incident, within an Assignment Ring. This order is followed to reach out to assignees when an incident is triggered, with the start pointer then pointing to the one next in-line in the assignment ring.

**Note:** The starting point of the ring is determined by the assignee order when the Escalation Policy is created.

#### Start Pointer

While the Round Robin rotation is enabled, you will see a green arrow pointer next to the User, Squad or Schedule who is next in line for incident assignment. The pointer visually indicates who will be notified next in the Assignment Ring for an incident. By default, when an Escalation Policy with Round Robin rotation is created and configured, it will point to the first User, Squad or Schedule of the Assignment Ring.

{{site.data.alerts.blue-note-md}}
**Note:**

Round Robin and Advanced Escalations would work as configured even when an Escalation Policy is called as part of incident reassignment or via Tagging & Routing Rules.
{{site.data.alerts.end}}

### Enabling Round Robin Escalation for a Policy

Create an Escalation Policy as desired. For each of the levels, Round Robin rotation can be enabled.

**(1)** To enable simple Round Robin rotation, check the option that says **Enable Round Robin assignment for this layer**

**(2)** To enable rotation through the entire Assignment Ring and then jump to the next escalation level, check the option that says **Enable rotation within the Assignment Ring**

**(3)** Additionally, you can also specify after what time (in minutes) should the next person in the Assignment Ring be notified.

When an incident is triggered that uses this Escalation Policy, the incident will be assigned in a sequential order to the Users, Squads or Schedules participating in the Round Robin rotation.

![](images/round_robin_1.png)

### Enabling Round Robin for an Existing Escalation Policy

**(1)** Navigate to **Escalation Policies**. For an Escalation Policy, click on the top right icon and select **Edit**

![](images/round_robin_4.png)

**(2)** In the level(s) where you would like to enable Round Robin, check the option **Enable Round Robin assignment for this layer**.

Add additional Users, Squads or Schedules if not added already. In case of a Schedule, whoever is on-call at the time, will be notified for the incident. Then, click **Save**

![](images/round_robin_5.png)

You can further enable and configure other options as needed even for existing Escalation Policies.

## Advanced Escalations

Escalation Policies can be configured granularly to further suit custom requirements within organizations. In addition to the basic Escalation Policy and Round Robin Escalations, users can configure:
- Each of the individual escalation levels to repeat with a repetition timeout

![](images/round_robin_2.png)

- The entire Escalation Policy to repeat with a repetition timeout

![](images/round_robin_3.png)

## FAQs

**(1)** When a Squad is added in the escalation level and Round Robin Escalation is enabled, how would it work?

Every user within the Squad would be notified when the Squad is added to the Assignment Ring for Round Robin rotation. Round Robin rotation is applicable to the entities in the Assignment Ring - Users, Squads and Schedules. Round Robin rotation is not applied to users present within Squads and Schedules.

**(2)** When a Schedule is added in the escalation level and Round Robin Escalation is enabled, how would it work?

Every on-call User/Squad within the Schedule would be notified when the Schedule is added to the Assignment Ring for Round Robin rotation. Round Robin rotation is applicable to the entities in the Assignment Ring - Users, Squads and Schedules. Round Robin rotation is not applied to users present within Squads and Schedules.

**(3)** How are coverage gaps in Schedules handled when the Schedule is part of a Round Robin escalation?

When a Schedule is due for assignment next, it is assigned to whoever is currently on-call in that Schedule. In case no one is on-call due to a coverage gap, it will skip the assignment to either the next entity in the Assignment Ring or escalate to the next level of the Escalation Policy (depending on how the rules are configured). This ensures that the coverage gap in the Schedule does not cause any incident to be missed.

**(4)** What happens to the Round Robin Escalation when Users, Squads, Schedules are added or removed?

Any Users, Squads, Schedules removed from the Assignment Ring, the Start Pointer is reset and points to the first User, Squad or Schedule again. One can easily drag and drop to rearrange the order of placement of the User, Squad, Schedule within the Assignment Ring. Note that the position of the Start Pointer will reset to the first User, Squad or Schedule upon rearrangement (drag & drop) as well.

**(5)** Which of the time inputs added are absolute versus relative?

- The **Escalate After** input field for each escalation level is **absolute** (this time is calculated from the time of incident trigger)
- The input for repetition of the entire Escalation Policy field is **absolute** (the input at the bottom of the Escalation Policy)
- Every other time input within the Escalation Policy would be calculated **relative** to the **Escalate After** time for that level

**(6)** How can I understand if Round Robin rotation is enabled for an Escalation Policy or not?

In the Escalation Policies page, due to the indication you can easily view which of the levels within an Escalation Policy have Round Robin rotation enabled.

![](images/round_robin_6.png)

**(7)** Scenario: There are 2 users - user 1 and user 2 in the first level of the Escalation Policy. Round Robin rotation is enabled for this layer. The second level has 2 users - user 3 and user 4. The entire policy is set to repeat an additional 2 times (after 0 mins timeout) if the incident remains unacknowledged. How would this work?

The notifications to be sent out would be scheduled in this way:
- Iteration 1:

    Level 1: user 1 is notified

    Level 2: user 3 and user 4 are notified

- Iteration 2: (first round of repetition of the entire policy)

    Level 1: user 1 is notified

    Level 2: user 3 and user 4 are notified

- Iteration 3: (second round of repetition of the entire policy)

    Level 1: user 1 is notified

    Level 2: user 3 and user 4 are notified

At this point, the start pointer is now pointing to user 2 (the next user to be notified in the Assignment Ring for the following incident).

**(8)** I have enabled rotation within the Assignment Ring of Round Robin within an escalation level. What happens if the **Escalate After** timeout occurs before every member of the Assignment Ring could be notified for the current incident?

Assume there are 10 users in the first level of the policy (with **Escalate After** time of 0 minutes), who are set to be notified with a gap of 1 minute before the next member is notified. Also, assume the second level is set to be called after an **Escalate After** time of 5 minutes. 

Now, the notifications to be sent out would be scheduled in this way (assume, incident triggered at time T=0 minutes):

T=0 minutes: Notify user 1 (level 1)

T=1 minutes: Notify user 2 (level 1)

T=2 minutes: Notify user 3 (level 1)

T=4 minutes: Notify user 4 (level 1)

**T=5 minutes: Notify user 5 (level 1)**

**T=5 minutes: Notify user 6 (level 2)**

**(9)** When does the Start Pointer increment to point to the next assignee (User, Squad or Schedule) in the Assignment Ring?

The Start Pointer aims to visually indicate *starting from which assignee (User, Squad, Schedule) in the Assignment Ring would the notifications for the newly triggered incident be sent out for*

The Start Pointer *increments* when:

- The Escalation Policy is called for a newly triggered incident (including when the Escalation Policy is called as part of *incident reassignment*)

**Note:** The Start Pointer *does not increment* across repetitions, when the entire Escalation Policy is set to repeat (i.e., between 1 and 3 times)

**(10)** Where can I check what notifications went out (when Round Robin rotation is enabled, or otherwise)?

Every incident has [Notification Logs](https://support.squadcast.com/docs/notifications#notification-details-and-logs) within its Details page. What notifications where scheduled and to whom, how many of them were attempted - the status, notification channels and timestamp information would be included in these logs.

**(11)** How does individual rule/level rotation and repetition work?

When Round Robin Assignment is enabled, you can enable rotation within the Assignment Ring and specify the time gap between each of the assignees being notified.

![](images/round_robin_7.png)

**Note:** You cannot make a Round Robin Assignment enabled layer repeat more than once.

When Round Robin Assignment is disabled, you can specify how many times the particular layer needs to be executed, along with the timeout between each repetition.

![](images/round_robin_8.png)