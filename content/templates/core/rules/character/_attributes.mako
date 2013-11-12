<%page args="h2, h3"/>

${h2('Attributes')}

	<p>The value of an attribute represents the number of six sided dice, that a player can roll, when performing an action.
	They also determine the values of other statistics that they are linked to. In total there are fourteen attributes split
	equally between physical and mental characteristics.</p>
	
<div class="row">
	
	<div class="col-md-6"><p><h4>Strength (STRG)</h4>
	Muscular power. Strength affects melee damage and carrying capacity. Characters with a low strength are physically weak and if it
	was to drop to zero than a character would be too feeble to even stand.</P></div>

	<div class="col-md-6"><p><h4>Coordination (CORD)</h4>
	Quality of balance, movement and manipulation. It contributes greatly towards the combat
	proficiencies and so is a must for characters who are geared for combat.</p></div>

</div>
<div class="row">

	<div class="col-md-6"><p><h4>Reflex (REFX)</h4>
	Unthinking response time. It primarily determines the number of combat actions a character
	can have, but also contributes to other secondary stats.</p></div>

	<div class="col-md-6"><p><h4>Stamina (STAM)</h4>
	Power to endure fatigue. Primarily used to resist the effects of
	wounds and tiredness.</p></div>

</div>
<div class="row">
	
	<div class="col-md-6"><p><h4>Constitution (CONS)</h4>
	Physical hardiness and health. Constitution helps resist pathogens and toxins.  It also reduces healing time.</p></div>
		
	<div class="col-md-6"><p><h4>Perception (PERC)</h4>
	Ability to perceive and recognize something that is affecting one of their five senses, taste, touch, smell, sight and
	hearing.</p></div>
	
</div>	
<div class="row">

	<div class="col-md-6"><p><h4>Presence (PRES)</h4>
	Ability to captivate the attention of others through their appearance and mannerisms.
	A character with high presence isn't necessarily charming but can make people notice them.</p></div>
		
	<div class="col-md-6"><p><h4>Judgement (JUDG)</h4>
	Ability to plan outcomes and assess them. It is primarily used in situations where a
	character would use the information they have to make a decision.</p></div>

</div>
<div class="row">
	
	<div class="col-md-6"><p><h4>Ingenuity (INGU)</h4>
	Aptitude for accessing their imagination. Creative tasks require ingenuity.</p></div>
		
	<div class="col-md-6"><p><h4>Comprehension (COMP)</h4>
	Assimilate and memorize information. When a character needs to understand
	the information being presented to them they would use comprehension.</p></div>

</div>
<div class="row">
	
	<div class="col-md-6"><p><h4>Intuition (INTU)</h4>
	Recognizing intuitive impulses.  Any task which does not rely on logic or reasoning, such as fortune telling, will probably rely on
	intuition instead.</p></div>
		
	<div class="col-md-6"><p><h4>Resolve (RESO)</h4>
	Capacity to control impulses and actions. It is essential for resisting the effects of fear.</p></div>

</div>	
<div class="row">
		
	<div class="col-md-6"><p><h4>Empathy (EMPH)</h4>
	Ability to understand the thoughts and feelings of others.  It is an essential
	attribute for social characters who want to understand the motivations of NPCs and PCs.</p></div>
		
	<div class="col-md-6"><p><h4>Influence (INFU)</h4>
	Power to manipulate others. Extremely important for any character that wishes to lead or act as a negotiator for the group.</p></div>
	
</div>
	
	${h3('Attribute values')}
	
	<p>
	Atribute have a value from one
	to six. Six is the limiting value reserved for those who have reached the peak
	of human ability. Geniuses could reach an intelligence of six and
	similarly Olympic weightlifters could reach a strength of six.
	With that in mind, game characters are not
	regular humans and could easily have several attributes at six.</p>

	${h3('Attribute Overlap')}
	
	<p>There are going to be situations where the correct attribute to use is going
	to be ambiguous and opinions are going to get divided.  Say a situation arises
	where an argument could be made for using CORD or REFX to make a roll. If a
	characters CORD and REFX are equal then there is no argument but if one is higher
	then the other it can make a big difference.  In these situations the GM gets
	the final say on which attribute is used and not the players.  The GM is there
	to act as an arbiter of the system, he has created the story the players are getting
	involved in, and thus it is his opinion that is final.</P>

    ${h3('Boosters')}
      
    <p>No attribute, for a normal human, can rise above six because this is the peak of human abilityj. Instead of increasing attribute values
    creatures, or individuals, that can pass this maximum due to physical, supernatural or mechancial means get attribute boosts.</p>
    
    <p>Attribute boosts do not work in the same way as attributes.  They do not give, or add, dice to a task. Instead each boost affects
    any tasks for it's corresponding attribute in a specific manner.  Some change the target numbers for tasks, others increase the effects
    of success.</p>
    
    <h4>STRG Booster</h4>
    
    <p>Strength booster reduces target numbers, increases throwing distance and increases Damage Multipliers for melee attacks.</p>
    
    <P>The table on this page <a href="${a('/core/rules/appendicies#strength_tables')}">(Appendix: STRG Tables)</a>, shows the target numbers for lifting specific weights for
    each size category, humans are medium. Normally the target numbers do not change, even if STRG changes, it is simply easier for
    stronger characters to attain the higher target numbers. Every rank in STRG Booster shifts the target numbers up a step.  This
    reduces the target numbers for heavier weights making them easier to lift.
    For example:-</P>
    
    <p><i>Thaddeus is wearing an exoskeleton.  It has hydraulics which reduce the effort needed to lift a heavy object.  He is
    trying to lift up a moped and run away with it.  Normally these weigh around sixty kilos, which is a hard task, target number
    twenty four.  The exoskeleton gives him a STRG Boost of three.  The task then becomes easy, target number six. Of course Thaddeus
    is a weed with a STRG of two.  Normally the bike would give him a hernia but with the exoskeleton he might just about lift it.  Lets
    hope he has an appropriate background.</i></p>
    
    <P>Damage multipliers for melee combat are found here <a href="${a('/core/rules/appendicies#melee_damage_multipliers')}">(Appendix: Melee Damage Tables)</a>. The Strength Booster is simply added
    to the characters strength to find their new Melee Damage Multiplier for one handed and two handed combat.</P>
    
    <h4>CORD Booster</h4>
    
    <p>When setting the target number for a coordination task the GM should use the CORD task modifier table found at
    <a href="${a('/core/rules/trmodifiers')}">(Tasks: Task Modifers)</a>.  It lists the modifiers
    that could be applicable to CORD tasks.  Each level of a modifier increases the target number by a multiple of
    six equal to the value of the the level.  For Example:-</p>
    
    <p><I>Thaddeus is attempting to climb a mountain made of glass (yeah I know, epic eh?). The GM looks at the
    modifier table and decides that Incline and Slipperiness modify the difficulty.  The Incline is about seventy
    degrees, which is level four, and the Slipperiness of polished glass gives a level three.  Totalled the levels are seven
    which multiplied by six gives us a target number of forty two.  Even with a CORD of six Thaddeus couldn't hope to
    climb it.</I></p>
    
    <p>Every level of coordination booster negates one level of modifer, reducing the target numbers to reasonable levels.  For example:-</p>
    
    <P><I>Thaddeus has implanted synaptic accelerators which give him a CORD boost of two.  The previous level of seven for the
    modifiers is reduced to five.  Multiplied by six that gives us a new target number of thirty.  Still pretty high but within
    the realms of possibility.</I></P>
    
    <h4>REFX Booster</h4>
    
    <P>Each level of reflex booster increases the actions and turns that a character can use in combat.  The chart to be used is
    located here <a href="${a('/core/rules/aprefx')}">(Appendix: REFX Booster Turns and Actions)</a>.
    To clarify, the bonus actions and turns you recieve for your specific level
    of REFX booster are added to your characters base stats.</P>
    
    <h4>STAM Booster</h4>
    
    <p>Like STRG booster, stamina booster reduces the target numbers for more difficult tasks. The table located here 
    <a href="${a('/core/rules/apstamina')}">(Appendix: STAM Table)</a> shows the base target numbers for basic stamina tasks.  Every level
    of STAM booster shifts the target numbers up by one, thus reducing the difficulty.
    
    <h4>CONS Booster</h4>
    
    <p>Constitution booster directly affects healing time and the crit rating of an attack. To find the crit rating modifier, or the
    healing time percentage, for a specific level of CONS Booster check the table located here <a href="${a('/core/rules/apcons')}">(Appendix:CONS Table)</a>.
    The table also shows the base target numbers for the different grades of toxin, pathogen or illness.  Each rank of CONS Booster
    shifts the target numbers up one level, reducing the difficulty.</p>
    
    <h4>PERC Booster</h4>
    
    <p>When a character is attempting to perceive something they use the Field of Scrutiny.  Every level of perception booster
    shifts the target numbers up by one level, reducing the difficulty.  The Field of Scrutiny table can be found on the same
    page as the mechanics for scrutiny tasks located here <a href="${a('/core/rules/trscrtasks')}">(Tasks: Scrutiny)</a>.</p>
    
    <h4>PRES Booster</h4>
    
    <p>Each level of presence booster increases the number of automatic gains recieved for social tasks. Details on the mechanics of social
    tasks may be found here <a href="${a('/core/rules/trsocial')}">(Tasks: Socialising)</a>.</p>
    
    <h4>JUDG Booster</h4>
    
    <p>Every level of judgement booster gives a player a number of bonus steps, for planning tasks, equal to the level of JUDG Booster
    they possess.
    The details on the mechanics of planning tasks can be located here <a href="${a('/core/rules/trplatasks')}">(Tasks: Planning)</a>.</p>
    
    <h4>COMP Booster</h4>
    
    <p>Each level of comprehension booster reduces the amount of time it takes to research, and assimilate, a type of information as per the research
    mechanics which can be found here <a href="${a('/core/rules/trrestasks')}">(Tasks: Research)</a>. The table for those base times can be
    located here <a href="${a('/core/rules/apcomp')}">(Appendix: COMP Tables)</a>.</p>
    
    <h4>INTU Booster</h4>
    
    <p>Each level of intuition booster gives a number of Trope slots equal to its value which is added to the base value.  The details on the
    trope mechanics can be located here <a href="${a('/core/rules/cstropes')}">(Character: Tropes)</a>.</p>
    
    <h4>INGU Booster</h4>
    
    <p>Like CORD, when setting the target number for a ingenuity task the GM should use the INGU task modfier table found
    at <a href="${a('/core/rules/trmodifiers')}">(Tasks: Task Modifers)</a>.  It lists the modifiers
    that could be applicable to INGU tasks.  Each level of a modifier increases the target number by a multiple of
    six equal to the value of the the level. Each level of ingenuity booster negates one level of modifier.</p>
    
    <h4>RESO Booster</h4>
    
    <p>Each level of resolve booster decreases the fear rating of a creature or situation by a value
    equal to the level of RESO Booster.</p>
    
    <h4>INFU Booster</h4>
    
    <p>Each level of influence booster increases the number of automatic gains they recieve for social
    tasks. Details on the mechanics of social
    tasks may be found here <a href="${a('/core/rules/trsocial')}">(Tasks: Socialising)</a>.</p>
    
    <h4>EMPA Booster</h4>
    
    <p>Each level of empathy booster increases the number of automatic gains they recieve for social
    tasks. Details on the mechanics of social
    tasks may be found here <a href="${a('/core/rules/trsocial')}">(Tasks: Socialising)</a>.</p>
    
    ${h3('Boosters, Opposed Tests and Combat Proficiencies')}
    
    <p>It is advised that the player reads the descriptions for combat proficiencies,
    <a href="${a('/core/rules/csproficiencies')}">(Character: Combat Proficiencies),</a> and the mechanics for combat,
    <a href="${a('/core/rules/crcombsbs')}">(Combat: Combat Step by Step),</a> before reading the following rules.</p>
    
    <p>The most common opposed test is during combat, when the combat proficiencies are used.  MEL versus PAR and POP versus DOD.
    If a player has an attribute booster that complements an opposed test, like say having STRG booster when using MEL, the
    booster enhances the roll.  Each level adds an extra die to the roll.  These dice are treated the same as attribute dice,
    they can only increase it a maximum of six and can be swapped for background dice.</p>
    
    <p>So what happens if a player has an attribute booster which has a larger value than the six maximum?  Where do the
    additional levels go?  These additional levels begin to subtract from the opponents dice pool.  This subtraction does
    not affect the background dice, merely the attribute or proficiency dice.  It can only reduce it to a minimum of one
    and will subtract the additional levels of any booster first. For example:-</p>
    
    <P><I>Thaddeus is still in his exoskeleton and is attacking the alien with the giant fists of the machine.  The exoskeleton
    has a CORD booster of two and a REFX booster of one.  Added to his MEL of three this gives him six dice, to which he also
    adds his background dice.  The Alien, on the other hand, has a CORD boost of five and an INTU boost of one.  It's PAR is
    already six so the additional levels will subtract from Thaddeus's MEL roll.  The six levels will reduce his MEL down to
    one because that is the minimum he can roll.  Things are not looking good for Thaddeus.</I></P>
