<%page args="h2, h3"/>


${h2('Combat Actions')}
      
    <p>All characters have APT, or Actions per Turn.  Every action has a cost which they can spend their APT on during their turn.
    That's if they have enough APT to spend on the action.</p>
    
    <P>The actions have a name, in bold, followed by the cost in actions per turn. Underneath this is a
    description of the action.</P>
    
    ${h3('Shooting actions')}

    <P><B>Snap Aiming</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    Grants an extra die to POP for hitting the target.</P>
    
    <P><B>Aimed Shot</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		2 Actions<br>
    Grants two extra dice to POP for hitting the target.</P>
    
    <P><B>Careful Aiming</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    Grants two extra dice to POP and allows the attacker to choose the body location.</P>
    
    <P><B>Single Shot</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		2 Actions<br>
    Fire a single round from a ranged weapon.</P>
    
    <P><B>Burst Fire</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    Fires a short burst of rounds from a ranged weapon. Reduces POP by 1 die but increases
    damage multipler</P>
    
    <P><B>Full Auto</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		Entire Turn<br>
    Fires a full burst of rounds from a ranged weapon. Reduce POP by two dice but increases
    the damage multiplier</P>
    
    <P><B>Reload</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		 Action cost Weapon dependent<br>
    Allows player to reload their weapon.</P>
    
    ${h3('Melee Actions')}
    
    <P><B>Light Hit</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    A light melee attack, with 1 handed weapons grants +2 MEL to Hit, with a 2 hander +1.</P>
    
    <P><B>Medium Hit</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		2 Actions<br>
    A medium melee attack that increases the damage multiplier</P>
    
    <P><B>Heavy Hit</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    A heavy melee attack that increases the damage muliplier but suffers -2 MEL to Hit with a single handed weapon and a -1 with a 2 hander.</P>
    
    <P><B>Diving Attack</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    A heavy melee attack when falling from above onto an enemey. Wielder can fall a number of meters
    equal to their CORD without taking damage. For every two meters falling the wielder adds 1d4 to their weapon damage to a maximum of 3D4.</P>
    
    <P><B>Charging</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    Move a number of meters equal to their Move and give a Heavy Hit. Chracters parry and dodge is halved,
    round down, for the rest of the round.</P>
    
    <P><B>Disarm</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		Entire Turn<br>
    Waits until the enemy attacks. If they successfully parry the melee attack they can then attempt to
    disarm the attacker. This is an opposed CORD or STR test depending on which is higher.</P>
    
    <P><B>Grappling</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    Attacker and defender make an opposed test using either their STRG or CORD. Both combatants
    can choose which attribute they use. If the attacker wins the test then the defender is unable to act until they break the grapple with
    another opposed test on their turn. When Grappled the attacker can perform any of the grappling actions listed as long as they have
    actions to spend.</P>

    ${h3('Movement Actions')}

    <P><B>Hold Action</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		0 Actions<br>
    Character can wait until a later turn in the sequence within which to act. Please note
    that if the player has multiple turns in a combat they cannot all be taken at once. If the sequence reaches a point where there are
    no spaces for turns then turns will begin to be lost.</P>
    
    <P><B>Drop Object</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    Character can drop an object they are holding at their feet</P>
    
    <P><B>Drop Prone</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    Character falls to the ground and lies prone upon it. This action causes the character to
    lose one die from their POP for the rest of the turn.</P>
    
    <P><B>Gesture</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    A single quick gesture equivalent to one simple word in sign language</P>
    
    <P><B>Quick Observe</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    A quick look at an area giving rough details such as where people, or objects are located.</P>
    
    <P><B>Detailed Observe</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		3 Actions<br>
    A more detailed look at an area giving more information such as what they look like,
    the types of weapons they are holding, how injured they look and so on.</P>
    
    <P><B>Speak</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	1 Actions<br>
    Three words. Any sentence longer than three words requires more actions i.e. six words costs
    two, nine words costs three and so on.</P>
    
    <P><B>Change Position</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		2 Actions<br>
    The character changes his stance to either kneeling or laying down. Unlike dropping
    prone the character does not lose any dice from their POP.</P>
    
    <P><B>Draw Weapon</B>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	Action Cost Weapon Dependent<br>
    The action cost to draw a weapon is equal to the weapons size divided by two rounded up.</P>
    
    <P><B>Throw</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    Player can make a ranged attack to throw an object a number of meters equal to their strength
    muliplied by four. Failure indicates that it tumbled in a random direction.</P>
    
    <P><B>Walk</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		1 Actions<br>
    Character can walk a number of meters equal to his walking movement.</P>
    
    <P><B>Run</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		Entire Turn<br>
    Character runs a number of meters equal to his running movement.</P>
    
    <h3>Miscellaneous Actions</h3>
    
    <P><B>Simple Skill Test</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	Entire Turn<br>
    Character performs a simple skill test that could last around three seconds.</P>
    
    <P><B>Complex Skill Test</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	Multiple Turns determined by GM<br>
    Character performs a complex skill test. The number of turns is
    determined by the GM considering that a round is a three second period.</P>
    
    <P><B>Activate Ability</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	Action Cost Power Dependent<br>
    The action cost of activating or performing an ability is listed in the abilities
    description.</P>
    
