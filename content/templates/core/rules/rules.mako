<%inherit file="/_base.mako"/>

<%def name="h2(title)"><h2>${title}</h2></%def>
<%def name="h3(title)"><h3>${title}</h3></%def>


<%def name="body()">

	##<p>Welcome to the introductory page for the Flexi System.  Before I answer a few questions you might have I would like to outline the
	##different sections of the rules.</p>

	<ul class="core-rules-sections">
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/character/character')}">
			<span class="glyphicon glyphicon-user"></span>
			The <b>Character</b> section describes the various statistics you will
			find on the character sheet, how to generate them, and what they represent.
		</a></li>
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/tasks/tasks')}">
			<span class="glyphicon glyphicon-search"></span>
			The <b>Tasks</b> section describes the game mechanics for resolving any
			tasks that the character wants to perform outside of combat..
		</a></li>
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/combat/combat')}">
			<span class="glyphicon glyphicon-fire"></span>
			The <b>Combat</b> section describes the various game mechanics that resolve
			combat and also the consequences of it.
		</a></li>
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/world/world')}">
			<span class="glyphicon glyphicon-globe"></span>
			The <b>World</b> section describes the various mechanics that involve the
			interaction of characters with their environment.
		</a></li>
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/tools/tools')}">
			<span class="glyphicon glyphicon-wrench"></span>
			The <b>Tools</b> section describes the various statisitcs for different
			equipment, as well as the game mechanics for using them.
		</a></li>
		<li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/appendicies/appendicies')}">
			<span class="glyphicon glyphicon-book"></span> The <b>Appendices</b> section consists of the term glossary, a brief outline
			of the usual character creation process and important lists.
		</a></li>
	</ul>

<div class="clearfix"></div>

${h2('System Introduction')}

${h3('What is the Flexi System')}
	<p>A set of mechanics to allow a group of players to create characters for a roleplaying story created, and ran, by a game master.
	The Flexi System was never originally intended to be used as a generic system, instead it was developed for the Shattered Covenant setting.
	It soon became apparent that the system could be adapted fairly easily, to a large number of different settings, due the malleability of
	the system rather than any inherent quality. </p>
	
${h3('How does it work?')}
	<p>The main mechanic behind the system uses a set of six sided dice but damage and other mechanics use a number of different polyhedral dice.
	If you have played other tabletop roleplaying games then you will quickly notice that the Flexi System has a larger number of attributes
	than other systems.  This is because the core mechanic relies on situational attribute rolls augmented by any relevant bonus dice.  The
	situation is determined by the actions of the character, through the player.  If a player wishes his character to climb a tree then the game
	master would call on him to use the Coordination attribute for his roll.  Alternatively if the player wished to attempt to push over the tree
	then the game master would ask him to use the Strength attribute instead.  Which attribute should be used in a given situation is discussed more
	in the appropriate rules section.</p>
	
${h3('How do I get started?')}
	<p>The first thing you're going to need is a group of people to play with. The size of the group is irrelevant but the optimum number is
	between four to six players and one game master.  The next thing you're going to need is some pencils, paper and dice in order to keep
	track of your characters as they change during the game.  Character sheets are available in the player aids section, you can print and
	copy these to help keep track of your characters better. Finally the player who has to be the game master for the game has to have written
	 or chosen an adventure for the players.</p>
	
${h3('How do we play the game?')}
	<p>The game master will describe the environment around the players characters.  As the players describe how they interact with the
	environment the game master will describe the effects of their actions. At some point a player is going to want his character to do
	something which could either succeed or fail.  This is where the Flexi System game mechanics come in. How many fights did you get in,
	when you were a kid, because someone said something happened, in a game, and you thought that just deciding it would happen that way
	was unfair? The entire point of having a game system is to determine whether an action will succeed, or fail, without any chance of bias.
	It can do this by relying on something which can give a value randomly, a die roll.  The System determines how many dice you roll and
	what number you have to get on that roll. If the roll produces that number your characters actiona succeed. If the roll doesn't, it
	fails. That is the point of using a system to play a game, it makes things fair and impartial so that everyone can have fun.</p>
	
${h3('What do I do if I don\'t like the rules?')}
	<P>Well you have three options.  First of all you can just ignore it. If you don't like a rule then get rid of it, there is no point playing
	if you think a rule is stopping your fun.  Secondly you can change it. If you feel a rule isn't harsh enough, or is too harsh, then change it
	to the way you like.  Changes in rules are usually called "House Rules".  Many gaming groups have their own and as long as they are agreed on
	by everybody this is fine. However arbritary rule changes intended to annoy other players or to swing the game in your favour are, quite frankly,
	low. Everybody will hate you and nobody will want to play with you.  Just keep that in mind before you start antagonising everyone you game with.</P>

</%def>