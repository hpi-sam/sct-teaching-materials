# Vehicles and Traffic Lights Environment

Our second example environment features vehicles diving along straight horizontal and vertical roads, with traffic lights at each intersection.
The vehicles need to dive ahead and stop for vehicles directly in front of them and for red traffic lights. Consequently, the responsibility for avoiding crashes at crossroads lies
with the traffic lights


## Specific Learning Objectives

Since there are two different interactive entities, it is possible to design student assignments where
either one or both statecharts need to be modeled. Both entities are intuitively understood by students, but require different kinds of statecharts behavior. The vehicles require a reactive model based on inputs from local sensors, while the traffic light’s statecharts should be controlled by time events in order to allow passage for vehicles from all directions in regular intervals.

The traffic light statechart also has access to interfaces that can determine whether vehicles are waiting in front of the traffic light and which indicator lights they are flashing. With these additional information, it is possible to turn the modeling task into a throughput optimization challenge. 

Note that the traffic light tasks might be considered annoying by students since many parts of the statechart must be modeled or refactored repeatedly per direction. However, this might also serve as a lesson in efficient modeling.

For both entities, we provide fictional software designs for the respective embedded systems. Using elements from these designs, it is possible to create tasks where besides statecharts for behavior, object or class diagrams for a system’s structure or sequence diagrams for the interactions between objects must be modeled. With such tasks, students can study the interaction between software components in reactive systems as well as understand which perspectives different diagram types offer on the same system.


## Teaching Materials

The teaching materials related to this exercise are composed only of one assignment document that leads students through a series of small to medium modeling tasks. Any subset of these might be picked to compose new assignments. 

We start with the vehicle’s software system, for which we provide a sketch of the environment and a class diagram of the software with a schematic textual description of all interfaces. In the first warmup task, students must model an object diagram as a snapshot of the class diagram, with details such as quantities needing to be derived from the prior text. After that follows the main task, which is to model the actual state chart. Finally, students have to model a sequence diagram of their statechart interacting with its neighbors. 

The second part of the assignment features the traffic light’s software system. For this system, only an abstract description of the environment is provided. The students must derive the actual interface methods from a sequence diagram and summarize them in a class diagram as first task. The methods themselves are self-explanatory, so that no further specification needs to be provided. In the second task, the statechart itself has to be modeled, with the basic goal to guarantee equal throughput from all directions. In the final task, which in our materials is marked as a bonus task, the additional statechart interfaces are explained and students are challenged to design a high-throughput traffic light software.


**Note that as of now, the teachig materials for this environment are available in German language only.**

**We provide both a PDF version of the document (as example) and the LaTeX sourcecode (for customization).**