# 1.PEAS-Descriptors-of-Task-Environment
Implementation of PEAS Descriptors of Task Environment using a Vacuum Cleaner Intelligent Agent in Prolog.

Vacuum Cleaner Intelligent Agent using Prolog

This project demonstrates the PEAS framework (Performance Measure, Environment, Actuators, and Sensors) using a Vacuum Cleaner Intelligent Agent. The agent is implemented in Prolog and executed using SWI-Prolog/SWISH.

1. Problem Statement

To study and demonstrate the PEAS descriptors of a task environment using a Vacuum Cleaner Intelligent Agent and to implement its basic functionality using SWI-Prolog/SWISH.

2. Objectives
To understand the concept of an intelligent agent.
To understand the PEAS framework.
To identify the Performance Measure, Environment, Actuators, and Sensors of a Vacuum Cleaner Agent.
To implement a simple Vacuum Cleaner Agent using Prolog.
To observe how the agent perceives the environment and performs appropriate actions.
To verify the working of the agent using Prolog queries.
3. PEAS Framework

PEAS is used to describe the task environment of an intelligent agent.

Performance Measure

The performance of the Vacuum Cleaner Agent is evaluated based on its ability to:

Clean all dirty rooms.
Minimize unnecessary movement.
Minimize time and energy consumption.
Stop when all rooms are clean.
Environment

The Vacuum Cleaner operates in an environment containing three rooms:

Room A
Room B
Room C

Initial environment:

Room A: Dirty
Room B: Clean
Room C: Dirty
Vacuum Cleaner: Initially located in Room A

The rooms are connected as:

A → B → C

Actuators

The Vacuum Cleaner Agent uses the following actuators:

Cleaning mechanism
Movement mechanism
Stopping mechanism
Sensors

The Vacuum Cleaner Agent uses:

Dirt sensor to detect whether a room is dirty.
Location sensor to determine the current location of the vacuum cleaner.
4. Agent Actions

The Vacuum Cleaner Agent can perform three basic actions:

1. Clean

If the current room is dirty, the vacuum cleaner cleans the room.

2. Move

If the current room is clean and another dirty room exists, the vacuum cleaner moves to the next room.

3. Stop

If there are no dirty rooms remaining, the vacuum cleaner stops.

5. Working of the Agent

The Vacuum Cleaner starts in Room A.

The sequence of operation is as follows:

The agent detects that Room A is dirty and cleans it.
The agent moves from Room A to Room B.
The agent finds Room B clean and moves to Room C.
The agent detects that Room C is dirty and cleans it.
The agent checks the environment and determines that no dirty rooms remain.
The agent stops execution.

Thus, the Vacuum Cleaner Agent successfully cleans all dirty rooms and stops when the task is completed.

6. Technology Used
Programming Language: Prolog
Platform: SWI-Prolog / SWISH
Libraries: Built-in Prolog predicates
AI Concept: Intelligent Agent and PEAS Framework
7. Files in This Repository
vacuum_cleaner.pl – Prolog source code for the Vacuum Cleaner Intelligent Agent.
README.md – Project documentation.
screenshots/ – Contains screenshots of program execution and output, if included.
8. Sample Prolog Queries
Query 1: Display All Rooms
?- room(X).

Expected Output:

X = a ;
X = b ;
X = c.
Query 2: Check Vacuum Cleaner Location
?- vacuum_location(X).

Expected Output:

X = a.
Query 3: Start the Vacuum Cleaner Agent
?- start.

Expected Output:

Vacuum cleaned room a.
Vacuum moved from room a to room b.
Vacuum moved from room b to room c.
Vacuum cleaned room c.
All rooms are clean. Stopping...
true.
9. Result

The Vacuum Cleaner Intelligent Agent was successfully implemented using Prolog and executed using SWI-Prolog/SWISH.

The agent successfully:

Identified the dirty rooms.
Cleaned Room A.
Moved from Room A to Room B.
Moved from Room B to Room C.
Cleaned Room C.
Determined that no dirty rooms remained.
Stopped successfully.

The execution results confirm that the agent correctly follows the defined rules and performs appropriate actions according to the state of the environment.

10. Conclusion

The PEAS framework was successfully demonstrated using a Vacuum Cleaner Intelligent Agent. This practical demonstrates how an intelligent agent perceives its environment through sensors, selects suitable actions, and uses actuators to achieve its goal.

The Prolog implementation successfully detected dirty rooms, cleaned them, moved between rooms when required, and stopped after all rooms became clean. Thus, the project successfully demonstrates the PEAS descriptors of a task environment and the basic working of a Vacuum Cleaner Intelligent Agent.
