<%page args="h2, h3"/>


${h2('Combat Step by Step')}



    <p>Combat for the Flexi system uses the following seven stages:-</p>

    <ol>
        <li>Roll initiative (INIT) to determine the sequence of combat.  Highest goes first.</li>
        <li>The attacker rolls their attacking combat proficiency and adds the dice values together.</li>
        <li>The victim rolls their defensive combat proficiency and adds the dice values together.</li>
        <li>The values are compared and if the attacker has a value higher than the defenders, the attack is successful.</li>
        <li>The penetration value, for the attack, is rolled and if it is higher than the victims armour resistance, they've taken damage.</li>
        <li>Subtract the weapons body damage from the characters body.</LI>
        <li>If body reaches zero then roll on the appropriate critical charts and apply the relevant condition modifiers.</li>
    </ol>
    
    ${h3('Combat Sequence')}

    <p>Combat takes place during a Sequence.  This is the order in which events occur during a combat and is made up of turns and actions that
    are determined by the initiative of the combatants.</p>

    ${h3('Initiative')}

    <p>A characters initiative (INIT) is equal to their REFX attribute.  At the start of combat everyone rolls their INIT and
    total the value of the dice.  The value gives their order in combat, highest going first.</P>
    
    <P>Some traits, powers and augmentations can give a modifer to initiative, this is added on at the end of
    the roll.</P>
    
    <P>If there are two or more players with the same INIT value, then they both act at the same time. If this means they kill
    each other at the same moment then so be it.</p>
        
    ${h3('Turns Per Sequence')}

    <p>The vast majority of characters will be able to perform once in a sequence, on their initiative.
    Multiple turns are implemented when characters react so fast that
    they can perform multiple actions in a sequence.  We're talking about werewolves, vampires, robots or other augmented
    individuals that can move at a blinding speed.</p>
    
    <p>When a character has more than one turn they still roll for initiative.  Their first turn will be at their initiative,
    the rest will occur later in the sequence. Their other turns occur regularly down the order of initiative, not all in one
    go. The player should divide their initiative by the number of turns they have.  When the sequence has progressed by that amount,
    from their last turn, they take another turn until all their turns are used. For example:-</p>
    
    <div class="well">
        Thaddeus has been bitten by a werewolf and has two turns per sequence when he wolfs out.  He rolls initiative and gets eight.
        His first turn is on eight and his second turn is on four because eight divided by two is four.  The next combat he
        rolls a seven.  This time his first turn is on seven but his second turn is still on four.  Seven divided by two is
        three point five.  It has to rounded up or down to the nearest whole number, so he decides to go on four.
    </div>
    
    <div class="well">
        Rebecca, the vampire, has three turns per sequence.  She rolls a thirteen.  Thirteen divided by three is four point
        three recurring.  Rounding to the nearest whole number gives us four. So in the end she acts first on thirteen, then
        on nine and finally on five in the combat sequence.
        At least she would have, if the vampire hunter hadn't staked her in the heart on six, but that's her
        problem, not mine.
    </div>

    ${h3('Actions Per Turn')}
    
    <p>For a simple game a GM can tell a player what they can realistically accomplish in a turn.  Some games,
    or players, are more complicated and what can be realistically accomplished in a turn becomes more difficult to
    determine.  For this reason we have listed the cost of a number of actions that can be performed in a turn.  Every
    character at character generation has an Actions Per Turn (APT) value of three.  Every turn, that they can perform in,
    they can use any actions, or combination of actions, that adds up to three. For Example:-</p>
    
    <div class="well">
        Thaddeus is in combat with a killbot and needs to take it down.  On his turn he decides to use a heavy melee attack.
        It costs three actions so he can perform no other actions that turn but he does double his damage so he thinks it's worth
        it.  Christina is off to one side and decides to do something different.  She's going to make a Snap Aim and then fire a
        single shot at it using her rifle.  The snap aim costs one action, but increases her chance of hitting, and the the single
        shot costs two actions, but does normal damage.  Both characters have an APT of three.
    </div>
    
    <p>Any actions not used at the end of a turn are lost, they cannot be accumulated during a combat sequence for later use.</p>
    
    ${h3('Surpise')}
    
    <p>I find that getting the drop on someone is not something that happens often in games.  Players spot ambushes and NPCs can hear
    PCs coming a mile off. In the end the pretense of surprise is dropped by both sides and they charge into combat.  If your
    players are the kind who are capable of being surprised, or of surprising someone, then this is what happens.  Initiative
    is rolled normally and whoever isn't surprised gets a sequence where they can act.  The persons who have been surprised don't
    get to act until the next combat sequence.</p>
    
    ${h3('Attack vs Defence')}
    
    <p>Every attacking combat proficiency has an opposing defensive combat proficiency.  When a character attacks another
    character they roll the relevant attacking combat proficiency.</p>
    
    <p>All melee attacks, regardless of whether they are made using a weapon or without one, use the Melee Proficiency (MEL).
    The character being attacked will oppose that roll using their Parry (PAR), regardless of whether they have a weapon or not. For example:-</p>
    
    <div class="well">
        Thaddeus is attacking Paul using his sword.  He rolls his MEL of four getting six, two, three and four.  That gives him
        a total of fifteen.  Paul rolls his PAR of three and gets three, four and one, giving him a total of eight.  Fifteen is
        higher than eight so the sword hits Paul.
    </div>
    
    <p>Attacks with ranged weapons like guns, bows and slings uses Projectile Proficiency (POP).  They are defended against using Dodge
    (DOD).  For example:-</p>
    
    <div class="well">
        Paul is miffed at Thaddeus for attacking him.  He brings up his shotgun to shoot him and rolls his POP of five.
        He gets two, four, two, three and a five.  Totalled that's sixteen.  Thaddeus dodges using five dice he rolls one, three,
        six, one and a two.  Totalled that's thirteen so the shotgun blast hits Thaddeus square in the chest.
    </div>
    
    <p>Extra Sensory Perception (ESP) is only used by characters who have magical or psychic powers that enable them to use it,
    mundane characters can't perform mental attacks.  However all characters resist mental attacks using their Extra Sensory Defence (ESD).
    For example:-</p>
    
    <div class="well">
        Christine doesn't like the fact that Thaddeus attacked Paul, she's psychic and can perform mental attacks.  She decides
        to hit him with a Psychic Assault and rolls her ASP of four getting three, three, four, one and two, for a total of thirteen.
        Thaddeus isn't psychic but can resist the assault, like any other character, using his RES of four.  He gets a one, five, two
        and five, getting a total of thirteen.  Thaddeus grits his teeth, goes cross eyed and has a nosebleed but resists the attack.
    </div>
    
    <p>In the above example the attack and defence rolls both get equal values so the attack is not successful.  For this system
    a successful attack must achieve a result which is higher, even if it's only by one, than the defence roll.</p>
    
    ${h3('Penetration')}
    
    <p>If the attack is successful then the attacker gets to see if he damages his victim.  Before we determine the damage done we need
    to see if the attack penetrated the victims armour.</P>
    
    <p>The penetration value of an attack is determined by the weapon.  All weapons have a base penetration, to this is added the result
    of the penetration dice roll.  These are simply added together and compared to the victims armour resistance for that type of damage.
    If the penetration value is higher than the victim takes damage. For example:-</p>
    
    <div class="well">
        Paul has shot Thaddeus.  His gun has a base penetration of twenty and the penetration dice is 1d8. He rolls a seven which, added
        to the base penetration is equal to twenty seven, A rank. Thaddeus's armour has a K-Piercing resistance of 25A. Thaddeus is taking
        damage.
    </div>
    
    ${h3('Body Damage')}
    
    <p>If damage is done then a characters BODY is reduced, temporarily, by a number of points equal to the Body Damage of the weapon. If an attack
    reduces the Body to zero then the character takes a wound, the severity of which is determined by the critical charts.  Every succesful
    attack therafter also requires that the characters takes a wound as well.</p>
    
    <p>When a character takes a wound they roll 2d6 to determine the location of the wound.  Look up the value of the roll on the hit location
    table.  For example:-</p>
    
    <p><i>Thaddeus is taking a wound.  He rolls two six sided dice and gets a total of five.  On the hit location table this is a hit to the body.</i></p>
    
    <p>They then roll another d6 to determine the specific location within that general body location.</p>
    
    <p>They refer to the critical chart for the appropriate damage type. Once they've found the appropriate row for the location then they roll a d6
    and modify the roll by the critical rating of the weapon and additional damage.  Every twenty four points of damage over the victims total damage
    threshold subtracts 1 from the critical value.</p>
    
    <p>You should now have a description of the wound you have taken.</p>
    
    ${h3('Shock')}
    
    <p>Whenever a character receives a wound there is a possibility that they may fall unconsciousness from the shock of being wounded.
    For each critical wound, that the character receives, he rolls either STAM or CONS for a test to remain conscious. The target number
    for this isdetermined by the severity of the wound.</p>
    
    ${h3('Death')}
    
    <p>The point of character death in the Flexi system is not that clear cut.  Okay some times it is, the critical charts will tell you if the
    character is dead from a wound.  There isn't much you can do if the critical chart says your head is cut off or if your heart is ripped from
    your chest.  That's pretty clear cut character death. Sometimes though a character will be effectively dead, they just won't be physically
    dead, if you know what I mean. For example:-</p>
    
    <div class="well">
        Tarrant has come off pretty badly from a fight.  He's lost a leg and a hand.  He was stabbed multiple times, pretty seriously, and
        won't be up and walking, well limping, for a good few months.  Of course the character can't be played unless game time is skipped for a
        few months whilst he recuperates.  Tarrant's GM is loathe to do that, he's set up an epic story that will be resolved in a couple of weeks
        of game time or the world ends. Literally.  Tarrant is going to have to retire his character.
    </div>
    
    <p>When a character is too injured, too ill or has done something that turned him into an NPC then its retirement time.  Don't be sad, it
    happens sometimes, and if you're a gentleman then you'll do it.  If you're a GM and you've got a player who won't retire a character because
    he either:-</p>
    
    <ul class="list-inline">
        <li>A) Loves them too much, or</li>
        <li>B) Is a bit of a dick.</li>
    </ul>
    
    <p>Then you have two options.  The first is to simply tell the player that, no hard feelings but, his character is not going to be able to
    be involved in gameplay.  It's not intentional but that is how the dice roll sometimes.  Maybe next time you get pissed and insult the king
    in his courtroom you should count to ten instead.  If the player still won't take the hint then you'll have to go with option two.  When
    he's asleep a troll crawls through the window and eats the character.  Sorry he's dead man, but as a double amputee there was no way he could
    fight the monster off.</p>