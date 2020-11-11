"Titanic - A Survival Game" by Adithya, Karan, Meghana, Varsha


When play begins:
    now the left hand status line is
        "Turns remaining before the crash: [51 - turn count]";

Every turn when the player does not carry the map  and the remainder after dividing the turn count by 3 is 0: say "This is like a maze! Only if I had a way to know where what is - a floor plan may be?"

The carrying capacity of the player is 6.
    
Jack's cabin is a room. "Finally you have woken up from your hangover after the party at the discotheque last night. Weren't the lights on when you went to sleep? Why is the only light shining in your room - the moon through the window? You can see the silhouette of the dresser across the floor. The files you were examining before attending the party last night still lie open on your writing desk. How you wished you owned this writing desk with a simplistic design - a [Jack's drawer], sterdy and made of the finest quality of rosewood. To the North of your room is the first corridor."

Every turn when the remainder after dividing the turn count by 50 is 0:
	say line break;
	say "***Da dum dussshhhhh** You dead bruh, the ship has crashed into iceberg!";
	end the story finally;

The cabin's door is south of the First Corridor.
The cabin's door is north of the Jack's Cabin.
The cabin's door is a door.
The cabin's door is closed. 

First Corridor is north.

The desk, the dresser, window are scenery in Jack's cabin.

The description of desk is "Desk description"

The description of dresser is "Dresser description"

The description of window is "Window description" 

Jack's drawer is a container in Jack's cabin. Jack's drawer is fixed in place  and closed. Jack's drawer is openable. The description of Jack's drawer is "[if open]In the drawer you see a [photo] of your partner. There is a [Flashlight] lying in one of the corners [otherwise] The drawer is closed"

After opening Jack's drawer, say "In the drawer you see a [photo] of your partner. There is a [Flashlight] lying in one of the corners"

Photo is a thing in Jack's drawer.

Flashlight is a device in Jack's drawer.

First Corridor is a dark room. "Everything is a mess. Things have fallen down and spread out everywhere. To the north you see Fabrizio's room, to the west you see the Lifeboat storage room, to the east you the second corridor, to the south you see your cabin to the south."

After switching on the flashlight, now the flashlight is lit.

The Second Corridor is east of the First Corridor.

Fabrizio's room is north of the First Corridor.

The Lifeboat door is west of the First Corridor.
The Lifeboat door is east of the Lifeboat storage.
The Lifeboat door is a door.
The Lifeboat door is locked. 

The description of the Lifeboat door is "This door needs a passcode to enter. There is a [security terminal] on the door."

The security terminal is a thing in the First Corridor.

The description of the security terminal is "Can you provide the passcode to enter?".

After examining the security terminal:
	now the command prompt is "Please enter the passcode now. >";
	continue the action

After reading a command when the command prompt is "Please enter the passcode now. >":
	if the player's command matches "1234":
		now the Lifeboat door is unlocked;
		say "**BUZZ**  You have unlocked the Lifeboat door.";
		now the command prompt is ">";
	otherwise:
		say "The Lifeboat door remains closed.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.

After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the passcode now. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.

Fabrizio's room is a room. "This was the room your friend Fabrizio was in. The room is submerged in water with everything floating around. To the south there is the First Corridor."

The Second Corridor is a room . "Everything is a mess. Things have fallen down and spread out everywhere. To the north you see a Discotheque, to the south you see Rose's cabin, to the east you see the First Corridor."

Rose's cabin is south of the Second Corridor.

The Discotheque is north of the Second Corridor.

The Discotheque is a room. "This is the discotheque you were at yesterday. The chandelier from the roof has fallen down and there are glass shards all over the floor. There is a [registration desk] at the beginning of the room. To the south there is Second Corridor."

The registration desk is scenery in the Discotheque. "On the registration desk is a [map] which can be helpful in navigating across the ship."

The map is a thing on the registration desk. 

Figure of map is the file "Map.jpg".

After taking the map:
	Display the Figure of map;
	continue the action;
	
After examining the map:
	Display the Figure of map;
	continue the action;

[Every turn when the player does not carry the map : say "Only if there was a guide to navigate across the ship".]

Staircase lower is east of second corridor. Up from staircase lower is Staircase upper.

The description of staircase upper is "To the west of the staircase, you see a corridor."

Third corridor is west of staircase upper. "To the north there Captain's room, to the south there is janitor's room and to the west there is continuation of the corridor . You see from the window that you are headed towards an iceberg."

Janitor's room is south of third corridor. "You enter a janitor's room and see mops thrown around, you see some [life jacket] on the wall, and a [tool box]."

life jacket is a thing in the Janitor's room.

tool box is a thing in the janitor's room. It contains screw, screw driver, drill, hammer.

Captain's room is north of third corridor. "The captain's room is half submerged in water and the captain has fallen unconscious. The captain's [workstation] is in front of you. The workstation has a drawer which is easily accessible from where you are standing."

Captain's drawer is a container in the captain's room. The Captain's drawer is locked.

Captain's drawer contains a code. The description of the code is "The code is 1234."

workstation is a thing in the captain's room. The workstation contains a flare gun lying around and a manual - How to steer a ship for dummies.

manual contains instructions to steer the ship.

The description of the manual is "To steer the ship the actions that need to be performed are: Rudder 70 degrees, Set pressure to 100 bars, Set speed to 20 knots"

Fourth corridor is west of third corridor. "The radio room is to the north, to the south you see the cafeteria and to the west is the steering room."

Broadcast room is north of fourth corridor. 

Broadcast room is a room ."What are all these blinking lights and knobs you wonder? You see an old-fashioned analog [radio] that is buzzing with lights, which must mean it's at least working. Next to it there are some [scraps of paper] and beside it on the floor there is a [dustbin]. "

radio is a thing in the Broadcast room. The description of radio is "Marconi 5kW synchronous rotary spark radio. Installed, tested, aligned, operated by R-Os Jack Philips, Harold Bride at Harland + Wolff, Belfast. Fully functional 2 April, 1912. [line break][line break]If only you  took a communications course at the convent."

scraps of paper is a thing in the Broadcast room. The description of scraps of paper is "All the ink seems to have gotten smudged. Must have been written in a hurry you think."

dustbin is a container in the Broadcast room. Description of the dustbin is "Looks like there is a [note] at the bottom of the dustbin."

note is a thing in the dustbin. Description of note is "
Dear David, [line break]
I will need the following message sent over to Southampton. [line break]
Update as of 5 pm Apr 14th : The weather is getting worse, but we are approaching Newfoundland. Over and out. [line break]
Thanks, [line break]
Captain E. Smith
"

Cafeteria is south of fourth corridor. "The cafeteria is a mess. You see glasses shattered everywhere and the furniture all moved to one end of the room. Surprisingly, there is a cabinet full of croissants which is intact. You see that the door is locked. Hmm I wonder if you could just break the [glass-door] open."

Steering room is west of fourth corridor. "The ship is dangerously inching closer to the iceberg! Okay, take a deep breathe and put that engineering brain of yours to work! The steering room has a [system] which appears to control the navigation of the ship. The room is illuminated in [red-light] indicating the ship is in danger. Additionally, there is a [key-holder] next to the door. To the east you see the Fourth Corridor."

key-holder and the system are things in the steering room.

The key-holder contains a key. Key unlocks the captain's drawer.

The red-light is a device in the steering room.

the red-light is switched on.

The description of the red-light is "The red light indicates that the ship is in danger and when switched off it indicates that the ship is navigating and functioning as intended."

The description of the system is "This system is used to navigate the ship. A manual would be helpful in knowing how to steer the ship!".

After examining the system:
	now the command prompt is "How many degrees do you want to Rudder the ship?>";
	continue the action
	
After reading a command when the command prompt is "How many degrees do you want to Rudder the ship?>":
	if the player's command matches "70":
		say "That's the correct angle to steer the ship! Go Cap!";
		now the command prompt is "How many bars do you want to keep the Pressure at?>";	
	otherwise:
		say "You didn't get the angle quite right, may be the manual -  How to steer the ship for dummies is actually meant for you!";
		now the command prompt is "Would you like to enter the angle again? (Yes or No)>";
	reject the player's command.

After reading a command when the command prompt is "How many bars do you want to keep the Pressure at?>":
	if the player's command matches "100":
		say "That's the right amount of pressure to steer the ship! Go Cap!";
		now the command prompt is "What speed do you want to steer the ship at?>";
	otherwise:
		say "You didn't get the pressure quite right, may be the manual -  How to steer the ship for dummies is actually meant for you!";
		now the command prompt is "Would you like to enter the pressure again? (Yes or No)>";
	reject the player's command.
	
After reading a command when the command prompt is "What speed do you want to steer the ship at?>":
	if the player's command matches "20":
		now the red-light is switched off;
		say "That's the perfect speed to steer the ship! You have successfully steered the ship, now let's find a safe way to get out of this ship!";
		now the command prompt is ">";
	otherwise:
		say "You didn't get the speed quite right, may be the manual -  How to steer the ship for dummies is actually meant for you!";
		now the command prompt is "Would you like to enter the speed again? (Yes or No)>";
	reject the player's command.
	
		
After reading a command when the command prompt is "Would you like to enter the angle again? (Yes or No)>":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "How many degrees do you want to Rudder the ship?>";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.
		
After reading a command when the command prompt is "Would you like to enter the pressure again? (Yes or No)>":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "How many bars do you want to keep the Pressure at?>";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.
		
After reading a command when the command prompt is "Would you like to enter the speed again? (Yes or No)>":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "What speed do you want to steer the ship at>?";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.
		
The glass-door is a container in Cafeteria. The glass-door is fixed in place  and closed. The glass-door is openable. The description of the glass-door is "[if open]Inside you see a [croissant] on the second shelf.  [otherwise] The glass-door is shut"

After opening glass-door, say "Inside you see a [croissant] on the second shelf."

croissant is a thing in the glass-door

Lifeboat Storage is a room. "Ah, the light at the end of the tunnel. You see a big orange [boat] in front of you and a bunch of drenched [safety manual]s strewn across the floor. They must have gotten wet from all the water in Fabrizio's room. On the wall you see a [checklist]".

checklist is an thing in the Lifeboat Storage. The checklist is fixed in place. Description of checklist is "Checklist for sucessful evacuation with the Lifeboat.[line break]1. Life Jacket,[line break]2. Food,[line break]3. Radio.[line break]4. Compass"

safety manual is a thing in the Lifeboat Storage. Description of safety manual is "It is a step-by-step procedure on what to do if there's a fire on the ship. It was an additional section on what to do if there's a power shortage. [line break][line break]You wonder why haven't they included something for when the ship is lost at sea! "

boat is a thing in the Lifeboat Storage. The lifeboat is fixed in place. Description of the boat is "In all its inflated beauty, in front of you is your key to escaping this ship. Once you are set to leave, type <Escape here> to get on the lifeboat and set out."

Escaping is an action applying to nothing.

Understand "Escape here" as Escaping.

[Instead of Escaping when the player does not have the life jacket:
say "You need the chip first!"]

After Escaping:
	if the player does not have the life jacket:
		end the story saying "You set out to the rough seas, enduring the torrid weather for a couple of days before a big wave topples your lifeboat and that spells your end.";
	otherwise: 
		if the player does not have the radio:
			end the story saying "You set out into the rough seas, enduring the torrid weather for the first couple of days. On the following day you realise that you do not have a way to contact any help. All hope sinks as you slowly descend into the impending doom.";
		otherwise:
			if the player does not have the croissant:
				end the story saying "You set out into the rough seas, enduring the torrid weather for the first couple of days. On the following day the hunger pangs start to set it as you come to realize you did not pack any food to help you last the journey. All hope sinks as you slowly descend into the impending doom.";
			otherwise:
				end the story saying "Happiness confounds those who khibli their souls";

		





		












 









