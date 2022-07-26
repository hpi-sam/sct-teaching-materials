# Warehouse with Autonomous Robots Environment

Our first example is a robot-based delivery system, where autonomous robots are loaded with freight from a conveyor belt and have to deliver it to a drop-off location in a grid-structured warehouse. The environment was inspired by an [online video](https://www.youtube.com/watch?v=X_VLR7vU-8c) of a similar real-world system.

We assume that the robots have to drive autonomously based on local sensor inputs only, and consider the warehouse’s grid structure to be roads and crossroads, so that the robots have to follow certain traffic rules to avoid collisions and deadlocks.


## Specific Learning Objectives

In this example theautonomous robots are the only kind of interactive entity, with the intended challenge being for students to design a single but complex statechart. Besides the general challenge to effectively arrange a statechart that handels different driving modes in one diagram, there are specific challenges for the behavior at crossroads. The students have to translate intuitive traffic priority rules into state-based behavior while also implementing strategies to avoid deadlocks on longer running scenarios, based on autonomous local decision-making. For eager students, this turns the modeling assignment into an advanced traffic optimization challenge.

Besides the modeling and behavior optimization, this example can be used to have students practice the understanding of complex software systems. There are more than 20 different inputs, outputs, and operations that can be used by the statechart. Our teaching materials provide diagrams that define these to be methods of different classes of a software system and provide detailed specifications for each method, so that students can learn interpreting complex diagrams and working with low-level interface specifications.

## Teaching Materials

The related teaching materials are split in a straightforward assignment text and an accompanying design document. The latter document presents the design of an object oriented software system to control an autonomous robot. At its center is an active class `DriveSystem`, whose behavior is to be modeled with a statechart. It contains diagrams of the software systemas well as complete specifications for all methods of `DriveSystem` (which serve as inputs for modeling the statechart) and of it’s related classes (which serve as outputs or operations).


**Note that as of now, the teachig materials for this environment are available in German language only.**

**We provide both a PDF version of the documents (as example) and the LaTeX sourcecode (for customization).**