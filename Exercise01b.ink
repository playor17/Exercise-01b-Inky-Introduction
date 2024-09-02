/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth


== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup: There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east_tunnel] -> east_tunnel
+ [Take the west_tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup


== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. There are two doors.
+ [Open a right door and go in] -> RightDoor
+ [Open a left door and go in] -> LeftDoor
+ [Go Back] -> cave_mouth
-> END

== RightDoor ==
{not Get_a_Sword: There is a monster. You are killed by the monster -> END}
{Get_a_Sword: You kill a monster with the sword.}
+ [Light Torch] -> Further_Inside
+ [Go Back]
-> END

== Further_Inside ==
You found the gold piled up and a way out of the cave.
+ [Exit the cave] -> Exit_the_Cave
+ [Go Back]
-> END

== LeftDoor ==
It is very dark, you can't see anything.
+ {torch_pickup} [Light Torch] -> Get_a_Sword
+ [Go Back] -> west_tunnel
-> END

=== Get_a_Sword ===
You get a sword. Now you can protect yourself with the sword.
+ [Go Back] -> west_tunnel
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off the thousands of coins in the room.
-> END

=== Exit_the_Cave ===
Now you came out of the cave.
-> END