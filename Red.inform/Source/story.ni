"Red" by Thomas Insel

[
	Copyright © 2017 Thomas Insel <tinsel@tinsel.org>
	http://tinsel.org/IF/
	
	This work is licensed under a Creative Commons Attribution 4.0 International License.
	https://creativecommons.org/licenses/by/4.0/	
]

Chapter 1 - Setup

Use American dialect and the serial comma.

Include Conversation Responses by Eric Eve.
Include Conversational Defaults by Eric Eve.
Include Conversation Suggestions by Eric Eve.
Include Basic Screen Effects by Emily Short

The story headline is "A Contemporary Fairy Tale". The release number is 1.

The story description is "'Don't forget,' your mother said, 'your Granny's arthritis has been acting up since the weather last week. She's been in bed since Thursday. I need you to take her this basket first thing. When you get back, you can play Nintendo or whatever until I get home from work.'

You grunted something like 'ok,' and she drove off, leaving you standing there with a basket.";

When play begins:
	say "'Don't forget,' your mother said, 'your Granny's arthritis has been acting up since the weather last week. She's been in bed since Thursday. I need you to take her this basket first thing. When you get back, you can play Nintendo or whatever until I get home from work.'[paragraph break]";
	say "You grunted something like 'ok,' and she drove off, leaving you standing there with a basket.";


Chapter 2 - Miscellaneous

Requesting the credits is an action out of world and applying to nothing.

Understand "about" or "credits" or "help" as requesting the credits.
	
After printing the banner text rule:
	say "Type 'about' for credits and more information.";

Carry out requesting the credits:
	say "[bold type]About Red[roman type][line break]",
		"[italic type]Red[roman type] is my first released Inform project, prepared for the 2017 Eleventh Hour New Year's Minicomp.[paragraph break]",
		"There are many tellings of this story, with many different meanings. Inspirations for this version include the works of Roald Dahl, Jacob and Wilhelm Grimm, and Charles Perrault.[paragraph break]",
		"Thanks to Graham Nelson, Andrew Plotkin, and everyone else who worked on the Inform and Glulx ecosystem. Thanks to Eric Eve for several conversation extensions used in this story. The cover art is adapted from the WPA poster 'Once Upon a Time' by Kenneth Whitley from the Prints and Photographs Division of the Library of Congress.[paragraph break]",
		"Please send your feedback, bug reports, and requests for help to [fixed letter spacing]tinsel@tinsel.org[roman type]. You can always find the current version of this game at [fixed letter spacing]http://tinsel.org/IF/[roman type] .[paragraph break]",
		"This work is Copyright © 2017 Thomas Insel but may be freely shared according to the terms of the Creative Commons Attribution 4.0 International license ([fixed letter spacing]https://creativecommons.org/licenses/by/4.0/[roman type]).".

Release along with cover art, an interpreter, the introductory booklet, the library card, and a "Local" website.

[ Some conversation tweaks ]

Understand the command "answer" as something new.
Understand "answer [any known thing] to [someone]" as informing it about (with nouns reversed).
Understand "answer [text] to [someone]" as telling it about (with nouns reversed).

Understand "speak [any known thing] to [someone]" as informing it about (with nouns reversed).

Instead of saying hello to someone (called s) when the current interlocutor is s:
	try listing suggested topics instead;
	[ catches "talk to ..." but not "hello" ]


Chapter 3 - The Player

The player is female.

Instead of examining the player, say "As cute as ever."

The player is carrying a container called the basket. The basket has carrying capacity 2.

In the basket is a bottle of moscato. It has description "A screwtop bottle of Pleasant Home Pink Moscato with natural flavorings." Understand "wine" as moscato.

Before opening or drinking the bottle of moscato: [giving to]
	say "The drinking age is just a technicality, but you don't want to deal with the fallout from Granny learning that you've been messing with her wine." instead.

In the basket is a box of coffee cake. It has description "Cheese filled crumb coffee cake. Why you're bringing this to an old lady with type two diabetes is beyond you."

Before opening or eating the box of coffee cake: [giving to]
	say "You promised to bring the cake to Granny." instead.

The player is wearing a red hoodie. The red hoodie has description "Only the finest from the discount sporting goods warehouse near your old house."


Chapter 4 - Knives

A thing can be sharp. Things are usually not sharp.

Cutting it with is an action applying to one thing and one carried thing.

Understand "cut [something] with [something]" as cutting it with.

Check cutting something (called t) with something (called k):
	if k is t, say "That doesn't make sense at all." instead;
	if k is not sharp, say "[The k] [aren't] sharp enough to cut anything." instead;
	if t is the player, say "That's not the solution." instead;
	if t is a person, try attacking t instead;
	say "Cutting [regarding the noun][them] up [would achieve] little.";

Instead of cutting something when the player encloses the pocket knife:
	try cutting the noun with the pocket knife instead;


Chapter 5 - Endings

To do the winning epilogue:
	say	"A few months later...[paragraph break]",
		"[bold type]Highway[roman type] (in your Camaro)[line break]",
		"Going to Granny's is much nicer now that you have your license and a fast car.[paragraph break]",
		"[the command prompt][bold type]inventory[roman type][line break]",
		"You are carrying:[line break]";
	list the contents of the fake epilogue player, with newlines, indented, including contents, giving inventory information, with extra indentation;

The fake epilogue player is a container.
A container called fake basket is in the fake epilogue player. It has printed name "the basket".
A thing called fake bottle is in the fake basket. It has printed name "a bottle of white zinfandel".
A thing called fake cake is in the fake basket. It has printed name "a box of cinnamon buns".
A thing called fake coat is in the fake epilogue player. It has printed name "a lovely furry wolfskin coat (being worn)". 

To get eaten:
	end the story saying "You have been eaten alive";

To survive:
	pause the game;
	do the winning epilogue;
	end the story saying "You lived";


Chapter 6 - Before the River

Section 1 - Outside Your Home

Outside Your Home is a room. "You're outside the late model singlewide you now call home. Everyone else you know lives in actual houses, or at least trailer parks, but you moved here last year because your mother wanted to be near Granny. Not that she's even that close by foot.[paragraph break]The highway is west, your home is north, and Granny's is an unreasonably long walk down the forest path to the southeast."

Before going nowhere from Outside Your Home:
	if the noun is north, say "You'd like to go inside and watch TV, but you promised that you'd go to Granny's first." instead;
	if the noun is west, say "You're not above hitching, but there's no traffic this time of day." instead;
	say "The highway is west, and your home is north, but the best option is southeast toward the forest." instead.

Your trailer is scenery in Outside Your Home. "It's a newish singlewide trailer, a bit compact but a lot nicer than your old house in the city." Understand "house" or "home" or "scenery" or "singlewide" as your trailer.

Before entering your trailer, try going north instead.


Section 2 - Forest Path

Some trees is a backdrop. It is in Forest Path and Small Clearing and River Crossing and Upstream and Downstream and Fork in the Path and Forest Clearing and Lovely Meadow and Outside Granny's House. It is plural-named. It has description "Assorted species of deciduous trees." Understand "tree" or "forest" as trees.

Instead of climbing some trees, say "The trees are all too small or too big for climbing."

Forest Path is southeast of Outside Your Home. "A pleasant forest path winds northwest towards home and southeast towards Granny's. A narrow trail splits southwest."

Before going nowhere from Forest Path, say "You shouldn't wander off into the forest. Home is northwest, Granny's is southeast, and a narrow trail leads southwest." instead.


Section 3 - Small Clearing

Small Clearing is southwest of Forest Path. "[if the player is enclosed by the van]You're inside the old van.[otherwise]It's a small clearing in the trees where an old abandoned van is slowly rotting and rusting away.[end if]"

An abandoned van is a container in small clearing. It is enterable and scenery.

After printing the name of the abandoned van, omit contents in listing.

Instead of examining the van:
	if the player is in the van:
		say "You sit here sometimes to be alone.";
	otherwise:
		say "What's left of this old van was here when you moved in. You come and sit in it when you want to be alone."

Instead of searching the van:
	if the player is in the van:
		say "You're already in the van.";
	otherwise:
		say "You can't see much from outside."

A bench is scenery in the van. It is a supporter and enterable.

Rule for deciding whether all includes something enclosed by the van:
	if the player is enclosed by the van:
		it does;
	otherwise:
		it does not.

Your lunchbox is on the bench. It is a container and openable and closed. Understand "lunch" and "box" as lunchbox. It has description "An old superhero lunchbox where you keep stuff that your mother doesn't need to see."

A brass key is in your lunchbox. It has description "You found this key somewhere."

A pocket knife is in your lunchbox. It is sharp. It has description "A folding knife."

A shotgun shell is in your lunchbox. It has description "#4 buckshot."

Before opening the pocket knife, say "You admire both blades, knife and saw, before shutting them again." instead.


Section 4 - The River Bank

The bridge is a backdrop. "The bridge was here last week, but there's not much left now." The bridge is in River Crossing and Fork in the Path.

Instead of entering the bridge in Fork in the Path, try going northwest.
Instead of entering the bridge in River Crossing, try going southeast.

A thing called the river is a backdrop. "The river is still high and fast after last week's weather." It is in River Crossing and Upstream and Downstream and Fork in the Path.

Before entering the river, say "The river is too high and fast for you to safely swim." instead.

Before inserting something into the river, say "[The noun] would be washed away." instead.


River Crossing is southeast of Forest Path. "The river runs from the northeast to the southwest and varies from a trickle to a torrent with the season. At the moment, it's very high and the bridge that normally crosses to the southeast must have washed away last weekend.[paragraph break]You can follow the river, home is northwest, and Granny's is southeast...well hell...you'll need to find another way across."

Before going southeast from River Crossing, say "The bridge is washed out." instead.

Before going nowhere from River Crossing, say "Your home is northwest and Granny's is southeast. The river runs northeast to southwest." instead.


Downstream is southwest of River Crossing. "You're among the trees, downstream and southwest from the river crossing."

Before going nowhere from downstream:
	if the noun is southeast, say "The river is too fast to cross." instead;
	say "The river crossing is northeast." instead.


Upstream is northeast of River Crossing. "You're among the trees, upstream and northeast from the river crossing."

Before going nowhere from upstream:
	if the player is in the small boat, say "You won't get anywhere while the boat's chained up." instead;
	if the noun is southeast, say "The river is too fast to cross." instead;
	say "The river crossing is southwest." instead.

A small boat is a fixed in place container in Upstream. "A small boat is chained up here." It has description "It's old but riverworthy, and it's chained up to an old log." It is enterable.

After printing the name of the small boat, omit contents in listing.

A chain is scenery in Upstream. "It connects the boat to an old log, and it's secured by a padlock."

Instead of cutting the chain with the pocket knife, say "Your little knife is no match for the chain."

Instead of cutting the chain:
	if the player encloses the pocket knife, try cutting the chain with the pocket knife instead;
	say "How?"

An old log is scenery in Upstream. The old log has description "It's old but solid."

A padlock-thing is a kind of thing. A padlock-thing can be locked or unlocked. A padlock-thing can be lockable. A padlock-thing is usually lockable and locked. A padlock-thing has an object called a matching key.

A padlock is a padlock-thing in Upstream. It is locked and scenery. It has matching key brass key. Understand "lock" as the padlock. The padlock has description "It secures the chain that keeps the boat from drifting off."

[ if this needs to be more general, use Locksmith extension instead ]

Understand "unlock [padlock]" as unlocking keylessly when the padlock is visible and the brass key is visible.

Unlocking keylessly is an action applying to one thing.

Carry out unlocking keylessly:
	say "(with [the brass key])[command clarification break]";
	try unlocking the noun with the brass key.

Before taking the chain, say "It's padlocked." instead.

Before opening or taking the padlock, say "It's locked to the chain." instead.

Before unlocking the padlock with the brass key:
	if the player is not in the boat, say "The boat might drift off without you." instead;
	if the player does not enclose the bottle of moscato, say "You'd never hear the end of it if you left the wine behind." instead;
	if the player does not enclose the box of coffee cake, say "You'd never hear the end of it if you forgot the cake." instead.

After unlocking the padlock with something:
	say "You open the padlock and the boat drifts away from the shore.[paragraph break]The current takes the boat, and you jump out when it comes close to the far bank. Then the current grabs it again, and the boat is gone.";
	now everything enclosed by the boat is in the Fork in the Path;
	now the padlock is nowhere; [ all four of these are really superfluous, since we'll never be back here. ]
	now the brass key is nowhere;
	now the chain is nowhere;
	now the boat is nowhere.


Chapter 7 - After the River

Section 1 - Fork in the Path

Fork in the Path is southeast of River Crossing. "You're near where a bridge used cross the river. A stand of bamboo is still here.[paragraph break]Your home is back across the missing bridge to the northwest, and you're pretty sure both the east and south paths will take you to Granny's."

Before going northwest from Fork in the Path, say "The bridge is washed out." instead.

Before going nowhere from Fork in the Path, say "Your home is northwest and paths lead south and east. The river runs northeast to southwest." instead.

A stand of bamboo is scenery in Fork in the Path. "Obviously not native to the forest. The bamboo is tall and about an inch thick."

A bamboo pole is a thing. It has description "It's green and thick and almost as tall as you are."

Instead of cutting the stand of bamboo:
	if the player encloses the pocket knife, try cutting the stand of bamboo with the pocket knife instead;
	say "How?"

Instead of cutting the stand of bamboo with the pocket knife:
	if the bamboo pole is nowhere:
		say "You hack at the bamboo for a minute before remembering that your knife has a saw blade. It takes a few more minutes, but you cut a nice bamboo pole almost as tall as you are.";
		now the bamboo pole is in the location;
		try silently taking the bamboo pole;
	otherwise:
		say "You don't need another pole."


Section 2 - The Handsome Hunter

refuse-suggestion is a misc-suggestion. The printed name is "refuse to answer".
stones-topic is a misc-suggestion. The printed name is "the stones". Understand "stones" or "stone" as stones-topic.
thorns-topic is a misc-suggestion. The printed name is "the thorns". Understand "thorns" or "thorn" as thorns-topic.

A handsome hunter is a man in Fork in the Path. He has description "The hunter is very handsome, but he's is the hairiest man you've ever seen. His face is wolflike, and his hair is black, but his thick beard and bushy eyebrows are silver gray. He's dressed in a blaze vest and cap." He has tell-suggestions { Granny }. He has other-suggestions { refuse-suggestion }. The hunter has a number called the conversation stage. The conversation stage of the hunter is usually 0.

The hunter is wearing a blaze vest. The blaze vest has description "The hunter is wearing a bright orange vest."

The hunter is wearing a blaze cap. The blaze cap has description "The hunter is wearing a bright orange cap."

To exit the hunter:
	reset the interlocutor;
	now the handsome hunter is nowhere;
	now the handsome hunter is not familiar;

Default response for the handsome hunter:
	say "He just looks at you and does not respond."

Greeting response for the handsome hunter:
	say "'Hello. My name isn't Red.'[paragraph break]'And where are you going, my pretty one, with your little basket on your arm?' he asks.";
	now the conversation stage of the hunter is 1.

[ synonyms - not sure why asked-or-told about a or b doesn't work. ]
Response of the handsome hunter when asked-or-told about the basket: try informing the hunter about Granny instead.
Response of the handsome hunter when asked-or-told about the moscato: try informing the hunter about Granny instead.
Response of the handsome hunter when asked-or-told about the coffee cake: try informing the hunter about Granny instead.
Response of the handsome hunter when asked-or-told about the bridge: try informing the hunter about the river instead.

Response of the handsome hunter when asked-or-told about yourself:
	say "'Tasty little thing, aren't you?'".
	
Response of the handsome hunter when asked-or-told about the handsome hunter:
	say "'Me? I'm just a perfectly ordinary handsome hunter.'".
	
Response of the handsome hunter when asked-or-told about mother:
	say "'Ah yes, your mother is at work, isn't she?'"

Response of the handsome hunter when asked-or-told about Granny:
	say "'I'm taking this basket of cake and wine to my Granny.'[paragraph break]'Good,' he replies, 'I'll come visit too. Are you going across the stones or the thorns?'";
	remove Granny from tell-suggestions, if present;
	add thorns-topic to tell-suggestions, if absent;
	add stones-topic to tell-suggestions, if absent;
	now the conversation stage of the hunter is 2.

Response of the handsome hunter when asked-or-told about stones-topic:
	say "'I'm going across the stones.'[paragraph break]'Then I'll go across the thorns and let her know you're coming,' replies the hunter. And with that, he lopes off to the east.";
	exit the hunter.

Response of the handsome hunter when asked-or-told about thorns-topic:
	say "'I'm going across the thorns.'[paragraph break]'Then I'll go across the stones and let her know you're coming,' replies the hunter. And with that, he lopes off to the south.";
	exit the hunter;

Response of the handsome hunter when asked-or-told about the river:
	say "'It's beautiful,' he says, 'how the forest reclaims itself from man's intrusion.'";
	
Understand "refuse" as refusing to talk when handsome hunter is visible.
Understand "refuse to talk" as refusing to talk when handsome hunter is visible.
Understand "refuse to answer" as refusing to talk when handsome hunter is visible.
Refusing to talk is an action applying to nothing.
Instead of saying no when the current interlocutor is the handsome hunter, try refusing to talk;

Carry out refusing to talk:
	if the conversation stage of the hunter is:
		-- 0:
			say "'At least say hello,' says the hunter.";
		-- 1:
			say "'Never mind,' he says creepily, 'I know just who you are. You're going to visit your Granny, and that's just where I'm going too. I'll get there before you and tell her that you're coming to see her.'[paragraph break]And with that, he lopes off.";
			exit the hunter;
		-- 2:
			say "'Never mind,' he says creepily, 'I'll just watch which way you go and take the other way myself.'[paragraph break]And with that, he lopes off into the forest.";
			exit the hunter;

Default give response for the handsome hunter:
	say "You offer [the noun] to [the handsome hunter].[paragraph break]'Thanks,' he answers, 'but I couldn't possibly accept your [noun].'"

After looking in fork in the path for the first time:
	say "'Well hello there, Red,' says the hunter."

Before going when the handsome hunter is visible:
	say "The hunter stands in your way.[paragraph break]'You aren't going to leave without talking to me, are you?'" instead.
	
Instead of kissing or tasting the handsome hunter:
	say "You step forward to kiss the hunter, but he steps back.[paragraph break]'Soon enough, little one.'";

Instead of cutting the handsome hunter with the knife:
	try attacking the handsome hunter;

Instead of cutting the handsome hunter:
	try attacking the handsome hunter;
		
Instead of eating the handsome hunter:
	say "You're a vegetarian."


Section 3 - Thorns

ThornsRoom is east of Fork in the Path. "The trees open a little, and the space is overgrown with thick and thorny blackberry bushes. The path leads west to the river and south, through the blackberries, to your Granny's.";

ThornsRoom has printed name "Thorns".

ThornsTrees are scenery in ThornsRoom. It is plural-named. It has description "Assorted species of deciduous trees.[if the dead tree is in ThornsRoom] One dead tree looks particularly climbable.[end if]". Understand "forest" and "trees" as ThornsTrees. The printed name of ThornsTrees is "some trees".

Instead of climbing ThornsTrees, say "Most of the trees are all too small or too big for climbing."

The dead tree is scenery in ThornsRoom. Understand "climbable" as the dead tree. It has description "It's just right for climbing."

The dead log is a fixed in place thing. "A dead tree has fallen across the blackberry bushes." It has description "It has fallen across the blackberry bushes." The dead log can be climbed. It is not climbed. Understand "tree" and "dead" as log. It has printed name "dead tree"

Some blackberry bushes are scenery in ThornsRoom. They have description "[if the dead log is in ThornsRoom]A dead tree lies across the blackberry bushes.[otherwise]Thick and thorny blackberry bushes.[end if]".

Instead of taking or eating or tasting the bushes:
	say "You carefully pick a blackberry and pop it into your mouth. It's pretty good."

Instead of climbing the dead tree:
	say "You start up the tree, but its roots must be rotten. After just a few feet, it starts to fall away from you. You jump off as the tree falls across the bushes.";
	now the dead tree is nowhere;
	now the dead log is in ThornsRoom;

Before climbing or entering the dead log:
	now the dead log is climbed;
	try going south instead.

Before going south from ThornsRoom:
	if the dead log is visible and the dead log is climbed:
		say "You carefully climb onto the dead tree and follow it over the blackberry bushes.";
	otherwise:
		say "The blackberry bushes are too thick and thorny." instead;

Before going nowhere from ThornsRoom, say "The path leads from the west to the south and your Granny's house." instead.


Section 4 - Stones

StonesRoom is south of Fork in the Path. "You're surrounded by oak trees. The river is just north of here. Your Granny's house is uphill to the east. Unfortunately, it's up a steep hill of loose stones. Some squirrels scramble across the path every now and then as they hunt for acorns." StonesRoom has printed name "Stones".

Before going nowhere from StonesRoom, say "The path leads from the north to the east and your Granny's house." instead.

Before going east from StonesRoom:
	 If the player is not carrying the bamboo pole:
		say "You try to climb the stones, but they keep shifting and you can't get a stable foothold. You envy the squirrels who are having an easier time with four feet." instead;
	say "With [the bamboo pole] as a walking stick, you're able to make it up the hill of stones.";

Some oak trees are scenery in StonesRoom. Understand "tree" as oak trees. Oak trees are plural-named. Oak trees have description "Well established oak trees."

Instead of climbing some oak trees, say "The trees are too wide for you to get a good grip."

A stone is a thing. It has description "A smooth blueish gray stone."

Some stones are scenery in StonesRoom. Understand "stone" or "hill" or "hill of stones" as stones. Stones are plural-named. Stones have description "A loose hill of smooth grey stones."

Instead of climbing or entering some stones, try going east.

Instead of taking or searching some stones when the stone is nowhere:
	say "You grab a stone from the hill.";
	now a stone is in the location;
	try silently taking a stone.
Instead of taking some stones, say "They're heavy and you've already taken one."
 
Some squirrels are scenery in StonesRoom. Understand "squirrel" as squirrels. Squirrels are plural-named. The squirrels are an animal. They have description "What can you say? They're squirrels."

Instead of throwing the stone at the squirrels:
	now the stone is nowhere;
	say "You miss. The squirrels don't seem too disturbed.";

Instead of throwing something at the squirrels, try attacking the squirrels.

Instead of attacking the squirrels, say "That would be mean."

Before doing something other than examining or attacking to the squirrels, say "The squirrels are too far away." instead.


Section 5 - Lovely Meadow

A room called Lovely Meadow is south of ThornsRoom and east of StonesRoom. "The ground is covered with beautiful flowers of all colors.[paragraph break]Granny's is east, and you can enter the forest to the north, south, and west."

Before going nowhere in Lovely Meadow, say "Paths to the north and west both lead home, Granny's is east, and you can enter the forest to the south." instead.

Understand "pick [things]" as taking when the location is the lovely meadow.

A bouquet of flowers is a thing. It has description "Meadow flowers of all colors."

Meadow flowers are scenery in the lovely meadow. It has description "The meadow is covered with beautiful flowers of all colors."

Instead of taking flowers:
	if the bouquet is not nowhere, say "You've already picked a nice bouquet of flowers." instead;
	say "[if the comment count of the wolf > 0]There's plenty of time, so you[else]You[end if] pick a lovely bouquet of meadow flowers.";
	now the bouquet is in the Lovely Meadow;
	try silently taking the bouquet.

Before going west from Lovely Meadow:
	 If the player is not carrying the bamboo pole:
		say "You slide uncomfortably down the hill of stones.";
	otherwise:
		say "With [the bamboo pole] as a walking stick, you're able to make it down the hill of stones."

Before going north from Lovely Meadow:
	if the dead log is not in ThornsRoom:
		say "The blackberry bushes are too thick and thorny." instead;
	otherwise:
		say "You carefully climb north along the dead tree.";


Section 6 - Forest Clearing

A room called Forest Clearing is south of Lovely Meadow. "A clearing where about a dozen trees were recently cut. The meadow is back north."

Before going nowhere from Forest Clearing, say "You can return to the meadow to the north." instead;

A stump is a supporter in Forest Clearing. It is scenery. It has description "It's a freshly cut stump."

A chainsaw is on the stump. "Looks like someone's left their chainsaw on a stump." It has description "An old but well-maintained chainsaw." Understand "saw" as chainsaw.

Before cutting something with the chainsaw, say "The chainsaw isn't running." instead.

Instead of inserting something into the chainsaw:
	if the noun is the gas can:
		say "You're not really sure how the chainsaw works.";
	otherwise:
		say "[The noun] doesn't go there.";

Instead of switching off the chainsaw:
	say "You're not really sure how the chainsaw works, but it's definitely already off.";

Instead of switching on the chainsaw:
	say "You're not really sure how the chainsaw works, but you think it's probably out of gas.";


Chapter 8 - Near Granny's House

Section 1 - Outside Granny's

A room called Outside Granny's House is east of Lovely Meadow. "Granny's house is a one-room shack on the north side of the yard. Her shed is an even smaller building to the south. The road is east the path to the west leads back to your home."

Outside Granny's House has a number called the time count. The time count of Outside Granny's House is zero.

Every turn when the location is Outside Granny's House and granny is not arrived:
	let g be the time count of Outside Granny's House;
	let w be the comment count of the wolf;
	;
	if w > 0:
		increase the time count of Outside Granny's House by 1;
	;
	if g > 1 and w > 1 and g + w > 4:
		now granny is arrived;
		say "Granny walks in from the east.[paragraph break]";
		now Granny is in Outside Granny's House;
		try saying hello to Granny.

Before of going nowhere in Outside Granny's House:
	if the noun is east:
		say "There's never any traffic on the road." instead;
	otherwise:
		say "You can go west, north into Granny's house, south into her shed, or east to the road." instead.

A thing called Granny's House is scenery in Outside Granny's House. Understand "shack" as Granny's House. It has description "It's the one room shack where your Granny has lived for forty years. You guess that means your mother grew up here, too."

Before entering Granny's House, try going north instead.


Section 2 - Shed

There is a room called Granny's Shed. "The shed is even smaller than the house."

A door called the shed door is south of Outside Granny's House and north of Granny's Shed. It is lockable and locked and scenery.
It has description "[if the player is in Granny's shed]An ordinary shed door.[otherwise]A tiny shed where she stores things.[end if]"

A gas can is in Granny's shed. Understand "gasoline" as the gas can. It has description "It's an ordinary gas can."

A flower pot is a container in Granny's shed. After printing the name of the flower pot, omit contents in listing. It has description "A terra cotta flower pot."

Instead of opening or searching the gas can, say "There's just a few ounces left.";

Instead of tasting or drinking or eating the gas can, say "Gasoline is not a beverage.";

[ shotgun -- loading, etc. ]

A thing called a double barrel shotgun is in Granny's shed. Understand "gun" as double barrel shotgun. The double barrel shotgun has printed name "[if the shotgun is loaded]loaded [end if]double barrel shotgun". The double barrel shotgun can be loaded or unloaded. It is unloaded. The double barrel shotgun has description "You think this was your grandfather's."

Before opening or searching the double barrel shotgun:
	if the double barrel shotgun is loaded:
		say "You break open the shotgun and it ejects a single shell.";
		now the shotgun shell is in the holder of the double barrel shotgun;
		now the double barrel shotgun is unloaded;
	otherwise:
		say "The shotgun is empty.";
	stop the action.

Before inserting shell into double barrel shotgun:
	now the double barrel shotgun is loaded;
	now the shell is nowhere;
	say "You load the shotgun." instead;
	
Does the player mean doing something to the double barrel shotgun: it is likely.

Understand "load [double barrel shotgun]" as gun loading when the shotgun is visible;

Gun loading is an action applying to one thing.

Carry out gun loading:
	if the player is not carrying the double barrel shotgun:
		say "(first taking [the double barrel shotgun])[command clarification break]";
		try silently taking the double barrel shotgun;
		if the player is not carrying the double barrel shotgun:
			say "You need to be holding the shotgun to load it." instead;
	if the double barrel shotgun is loaded:
		say "It's already loaded." instead;
	if the player is not carrying the shotgun shell:
		if the shotgun shell is visible:
			say "(first taking [the shotgun shell])[command clarification break]";
			try silently taking the shotgun shell;
		if the player is not carrying the shotgun shell:
			say "You have nothing to load the shotgun with." instead;
	try inserting the shell into the double barrel shotgun;


Section 3 - Granny

Your mother is a familiar woman. [ for discussion topic ]

Granny is a familiar woman. "Your Granny is standing here." She has description "She's short, a bit heavy with neatly curled white hair, and dressed in a leopard print sweatsuit." Understand "Grannie" or "Gran" as Granny.

After examining Granny:
	if Granny encloses something that is not the leopard print sweatsuit:
		say "She has ";
		now everything enclosed by Granny is marked for listing;
		now the sweatsuit is not marked for listing;
		list the contents of Granny, as a sentence, listing marked items only;
		say "."

Granny can be arrived. Granny is not arrived. 
Granny can be greeted. Granny is not greeted.

Granny is wearing a leopard print sweatsuit. The sweatsuit has description "Granny has a unique sense of style."

where-topic is a misc-suggestion. The printed name is "where she was".
Granny has tell-suggestions { wolf, basket }.
Granny has ask-suggestions { where-topic }.

[synonyms]

Response of Granny when asked-or-told about the handsome hunter: try informing Granny about the wolf instead;
Response of Granny when asked-or-told about the moscato: try informing Granny about the basket instead;
Response of Granny when asked-or-told about the coffee cake: try informing Granny about the basket instead;
Response of Granny when asked-or-told about the bouquet: try informing Granny about the basket instead;
Response of Granny when asked-or-told about "arthritis": try informing Granny about Granny instead.

[ topics: sweatshirt, mother, house, shed ]

Every turn when Granny is visible:
	if granny has the double barrel shotgun and (granny has the shell or the double barrel shotgun is loaded):
		say "'Wait here a minute,' Granny requests.[paragraph break]";
		say "She walks into her house and you hear a very short discussion punctuated by a shotgun blast.";
		survive;
	if granny has the chainsaw and granny has the gas can:
		say "'This will be messy,' she says.[paragraph break]";
		say "She fills and starts the saw and strides into her house.";
		survive;

Response of Granny when asked-or-told about the chainsaw:
	if granny has the chainsaw:
		say "'The chainsaw will work, but we still need some gas,' she reminds you.";
	otherwise:
		say "'Will [the chainsaw] help?'[paragraph break]";
		say "'That will work fine,' she answers.";

Response of Granny when asked-or-told about the double barrel shotgun:
	if granny has the chainsaw:
		say "'The shotgun will work, but we still need a shell,' she reminds you.";
	otherwise:
		say "'Will [the shotgun] help?'[paragraph break]";
		say "'That will work fine,' she answers.";
	
Response of Granny when given the double barrel shotgun:
	if granny has the shell or the double barrel shotgun is loaded:
		say "Your granny takes [the double barrel shotgun].[paragraph break]'Thanks, dear.'[paragraph break]";
	otherwise:
		say "Your granny takes [the double barrel shotgun].[paragraph break]'Thanks, dear. Can you find us a shell?' she asks.";
	now granny has the double barrel shotgun;

Response of Granny when given the chainsaw:
	if granny has the gas can:
		say "Your granny takes [the chainsaw].[paragraph break]'Thanks, dear.'[paragraph break]";
	otherwise:
		say "Your granny takes [the chainsaw].[paragraph break]'Thanks, dear. Can you find some gas?' she asks.";
	now granny has the chainsaw;

Response of Granny when given the shell:
	say "Your granny takes [the shell].[paragraph break]'Thanks, dear.'[paragraph break]";
	now granny has the noun;

Response of Granny when given the gas can:
	say "Your granny takes [the gas can].[paragraph break]'Thanks, dear.'[paragraph break]";
	now granny has the noun;

Does the player mean informing Granny about the handsome hunter:
	it is very unlikely;
	
Does the player mean quizzing Granny about the handsome hunter:
	it is very unlikely;

Response of Granny when asked-or-told about yourself:
	say "'Thank you for coming all the way here today.'"

Response of Granny when asked-or-told about Granny:
	say "'I'm feeling a lot better today.'".
	
Response of Granny when asked-or-told about mother:
	say "'Thank your mother for me.'"

Response of Granny when asked-or-told about the wolf:
	if the wolf is examined:
		say "'I met a hunter in the woods and now he's in your bed wearing your clothes. I thought he had done something unspeakable to you.'[paragraph break]";
	otherwise:
		say "'I met a hunter in the woods, but he was really a wolf, and he's in your bed wearing your clothes. I thought he had done something unspeakable to you.'[paragraph break]";
	say "[remove wolf tell suggestion]'I see,' she says. 'Let's take care of that [wolf] together. I'll watch the house. You go find me a weapon in the shed.'";
	now wolf is discussed;
	now the shed door is unlocked;

Default response for Granny:
	say "[one of]'Yes, dear.'[or]'Yes, sweetie.'[or]'Yes, honey.'[or]'I don't know anything about that, dear.'[purely at random]";

Greeting response for Granny:
	if granny is greeted:
		say "[run paragraph on]";
	otherwise:
		say "'Hello dear,' she says, 'what are you doing here?'";
		now granny is greeted;

Understand "where" or "where were you" or "where she was" as "[where]"

Response of Granny when asked-or-told about "[where]":
	say "'Where were you, Granny? I thought [the wolf] had done something horrible to you.'[paragraph break]";
	say "'I just got back from my bingo,' she answers,";
	if the wolf is discussed:
		say " 'but let's take care of [those] [wolf].'";
	otherwise:
		say " 'but what's this about [a wolf]?'";

Default give response for Granny:
	say "You offer [the noun] to your Granny.[paragraph break]'Thank you, dear,' she answers, 'but you should hold on to [those].'";

Response of Granny when given the basket or the moscato or the coffee cake:
	say "'Thank you, dear,' she says, 'that was very kind of you two. Could you hold on to [those] until after we deal with [the wolf]?'";

Response of Granny when given the bouquet:
	say "'Thank you, dear,' she says, 'they're lovely. Could you hold on to them for me until after we deal with [the wolf]?'";

Response of Granny when asked-or-told about the basket:
	say "[remove wolf tell suggestion]'Thank you dear. But you look upset. Is something wrong?'";

Before going north when Granny is visible:
	if the wolf is discussed:
		say "'No, dear,' says your Granny, 'I'll handle that part. Just bring me a good weapon from the shed.'" instead;
	otherwise:
		say "'Wait, dear,' says your Granny, 'tell me what's wrong first.'" instead;

Instead of kissing Granny:
	say "You give her a big kiss.";


Section 4 - Inside Granny's

A room called Inside Granny's House is north of Outside Granny's House. "Granny's house is pretty much what you expect from a one room shack. There's a night table and a bed."

Before of going nowhere from Inside Granny's House, say "The only exit is south." instead.

A night table is scenery in Inside Granny's House. It is a supporter. It has description "A small rustic table."

A bed is scenery in Inside Granny's House. It is an enterable supporter. It has description "The bed is ordinary but the reclining [wolf] wearing your Granny's clothes is far from ordinary."

The wolf is a man in inside Granny's House. "The [if the wolf is unexamined]hunter[otherwise]wolf[end if] is lounging on your Granny's bed. He's wearing her nightgown and nightcap, but fooling nobody." 
The wolf has description "[if the wolf is unexamined]The hunter has swapped his blaze vest and hat for your Granny's nightclothes. You're more than a bit concerned about what he's done with her. Also, now that you get a good look, he looks a lot more like a wolf than the man you saw before.[otherwise]The wolf is wearing your Granny's nightclothes.[end if]" 

The wolf has a number called the comment count. The comment count of the wolf is usually 0.
The wolf can be examined or unexamined. It is unexamined.
The wolf can be speech delayed. It is not speech delayed.
The wolf can be discussed or undiscussed. It is undiscussed.
The wolf has printed name "[if the wolf is unexamined]hunter[else]wolf[end if]".
Understand "hunter" or "handsome hunter" as the wolf.

After examining the wolf, now the wolf is examined.

The wolf is wearing a nightgown. The nightgown has description "Sensible flannel."

The wolf is wearing a nightcap. The nightcap has description "Old-fashioned."

Default response for the wolf:
	say "'Come closer, my dear,' he says, 'I can't quite hear you.'";
	now the wolf is speech delayed;

Greeting response for the wolf:
	say "'Hello, my dear,' he says, 'come give your Granny a kiss.'";
	now the wolf is speech delayed;

Default give response for the wolf:
	say "You offer [the noun] to [the wolf].[paragraph break]'Thank you, my dear,' he answers, 'why don't you put [the noun] on the table for me?'";
	now the wolf is speech delayed;

After entering the bed:
	say "You climb in beside [the wolf].[paragraph break]";
	get eaten.
	
Instead of kissing or tasting the wolf:
	say "You climb in beside [the wolf], and lean over to kiss him.[paragraph break]";
	get eaten.
		
Instead of attacking the wolf:
	say "You charge [the wolf] and punch hard as you can. He only smiles.[paragraph break]";
	get eaten.

Instead of cutting the wolf with the knife:
	say "You open your little knife and wade in, but you are no match for [the wolf].[paragraph break]";
	get eaten.

Instead of cutting the wolf:
	If the player encloses the pocket knife:
		try cutting the wolf with the pocket knife instead;
	otherwise:
		say "With what?";
		
Instead of throwing the stone at the wolf:
	say "You hit [the wolf] right between his eyes. He growls in pain and surprise, but only briefly.[paragraph break]";
	get eaten.

Instead of eating the wolf:
	say "Good luck with that."

Table of Wolf Comments
insight	part	response
"very muscular arms"	"arms"	"All the better to hug you with, my dear,"
"big pointy ears"	"ears"	"All the better to hear you with, my child,"
"large black eyes"	"eyes"	"All the better to see you with, my child,"
"enormous paws"	"hands"	"All the better to grab you with!"
"many sharp teeth"	"teeth"	"The better to eat you with!"

Every turn when the location is Inside Granny's House:
	if the wolf is speech delayed:
		now the wolf is not speech delayed;
	otherwise:
		let r be the comment count of the wolf;
		increase the comment count of the wolf by 1;
		if r > 0:
			choose row r in the table of wolf comments;
			say "[if the wolf is unexamined]You notice that, unlike[otherwise]Unlike[end if] your Granny, [the wolf] has [insight entry]. You say 'Granny, what big [part entry] you have!'[paragraph break]'[response entry]' he answers.[paragraph break]";
		if r is the number of rows in the table of wolf comments:
			say "And he does just that.[paragraph break]";
			get eaten;
		otherwise if r > 1 and the wolf is unexamined:
			say "You think you should take a closer look at [the wolf].";

