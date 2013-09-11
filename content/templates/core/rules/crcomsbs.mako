<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Combat Step by Step</%def>

<%def name="body()">

    <h1>Combat Step by Step</h1>

    <p>The combat resolution mechanics for the Flexi system consist, at it's most basic level, of seven stages.  These are:-</p>

    <ol>
        <li>Roll initiative (CORD) to determine the sequence of combat.  Highest goes first.</li>
        <li>The attacker rolls their attacking combat proficiency and adds the dice values together.</li>
        <li>The victim rolls their defensive combat proficiency and adds the dice values together.</li>
        <li>The values are compared and if the attacker has a value higher than the defenders their attack was successful.</li>
        <li>The damage dice, for the attack, are rolled and added together.</li>
        <li>If the total damage value is higher than the victims damage threshold and armour resistance combined they've taken damage.</li>
        <li>Roll on the appropriate critical charts and apply the relevant condition modifiers.</li>
    </ol>

    <p>Of course different groups and games require different things from a combat system.  For simple, quick, games
    those steps are all you need.  You could quite easily run a game with no extra rules or any additional complexity.
    Which is all right for some but others like a system with a bit of bite to it.  So heres the combat system in more
    detail.</p>

    <h2>Initiative</h2>

        <p>When rolling initiative a number of dice equal to a characters REFX is rolled and then the values added
        together.  Some traits, powers and augmentations can give a modifer to initiative, this is added on at the end of
        the roll.  The character with the highest initiative roll goes first.  If there are two or more players with the same
        value, then there are several ways to determine the order.</p>
        
        <ol>
            <li>Coordination. Highest goes first.</li>
            <li>Initative modifier.  Highest goes first.</li>
            <li>The presence of traits like quick draw could be used as well.</li>
            <li>Or the players could behave like bloody gentlemen and something something politeness.</li>
        </ol>
        
    <h2>Turns</h2>

    <p>The vast majority of characters will be able to perform once in a sequence, on their initiative.  The number of
    Turns Per Sequence (TPS) they can perform is one.  Buying traits, powers or other enhancements, at character generation,
    or by spending experience, can increase their TPS. Multiple turns are implemented when characters react so fast that
    they can perform multiple actions in a sequence.  We're talking about werewolves, vampires, robots or other augmented
    individuals that can move at a blinding speed.  When a character has more than one turn they still roll for initiative
    and their first turn is acted upon on their initiative value.  Their next turns occur at values that are calculated by
    dividing their initiative by the number of turns they can have.  The quotient they calculate is rounded to the nearest
    whole number and then subtracted from their initiative for each turn.  They can act in the sequence at each value
    calculated by the quotient subtraction.  For example:-</p>
    
    <p><i>Thaddeus has been bitten by a werewolf and has two turns per sequence when he wolfs out.  He rolls initiative and gets eight.
    His first turn is on eight and his second turn is on four because eight divided by two is four.  The next combat he
    rolls a seven.  This time his first turn is on seven but his second turn is still on four.  Seven divided by two is
    three point five.  It has to rounded up or down to the nearest whole number, so he goes on four.</i></p>
    
    <p><i>Rebecca, the vampire, has three turns per sequence.  She rolls a thirteen.  Thirteen divided by three is four point
    three recurring.  Rounding to the nearest whole number gives us four, this is the quotient she will subtract from her
    initiative values..  So in the end she acts first on thirteen, then on nine and finally on five in the combat sequence.
    At least she would have, acted on five, if the vampire hunter hadn't staked her in the heart on six, but that's her
    problem not mine.</i></p>

    <h2>Actions</h2>
    
    <p>For a simple game a GM can pretty much tell a player what they can realistically accomplish in a turn.  Some games,
    or players, are a bit more complicated and what can be realistically accomplished in a turn becomes more difficult to
    determine.  For this reason we have listed the cost of a number of actions that can be performed in a turn.  Every
    character at character generation has an Actions Per Turn (APT) value of three.  Every turn, that they can perform in,
    they can use any actions, or combination of actions, that adds up to three. For Example:-</p>
    
    <p><i>Thaddeus is in combat with a killbot and needs to take it down.  On his turn he decides to use a heavy melee attack.
    It costs three actions so he can perform no other actions that turn but he does double his damage so he thinks it's worth
    it.  Christina is off to one side and decides to do something different.  She's going to make a Snap Aim and then fire a
    single shot at it using her rifle.  The snap aim costs one action, but increases her chance of hitting, and the the single
    shot costs two actions, but does normal damage.  Both characters have an APT of three.</i></p>
    
    <p>Any actions not used at the end of a turn are lost, they cannot be accumulated during a combat sequence.  APT is
    increased by buying traits, abilities or other enhancements at character generation or by spending experience.</p>
    
    <h2>Surpise</h2>
    
    <p>Getting the drop on someone is not something I find happens often in games.  Players spot ambushes and NPCs can hear
    PCs coming a mile off. In the end the pretense of surprise is dropped by both sides and they charge into combat.  If your
    players are the kind who are capable of being surprised, or of surprising someone, then this is what happens.  Initiative
    is rolled normally and whoever isn't surprised gets a sequence where they can act.  The persons who have been surprised don't
    get to act until the next combat sequence.</p>
    
    <h2>Attacking Combat Proficiency vs Defending Combat Proficiency</h2>
    
    <p>Every attacking combat proficiency has an opposing defensive combat proficiency.  When a character attacks another
    character they roll the relevant attacking combat proficiency. All melee attacks, regardless of whether they are made
    using a weapon or without one, use the Melee proficiency (MEL).  The character being attacked will oppose that roll using
    their Parry (PAR), regardless of whether they have a weapon or not. For example:-</p>
    
    <p><i>Thaddeus is attacking Paul using his sword.  He rolls his MEL of four getting six, two, three and four.  That gives him
    a total of fifteen.  Paul rolls his PAR of three and gets three, four and one, giving him a total of eight.  Fifteen is
    higher than eight so the sword hits Paul.</i></p>
    
    <p>Attacks with ranged weapons like guns, bows and slings use Projectile Proficiency (POP).  They are defended using Dodge
    (DOD).  For example:-</p>
    
    <p><i>Paul is miffed at Thaddeus for attacking him.  He brings up his shotgun to shoot him and rolls his POP of five.
    He gets two, four, two, three and a five.  Totalled that's sixteen.  Thaddeus dodges using five dice he rolls one, three,
    six, one and a two.  Totalled that's thirteen so the shotgun blast hits Thaddeus square in the chest.</i></p>
    
    <p>Extra Sensory Perception (ESP) is only used by characters who have magical or psychic powers that enable them to use it,
    mundane characters can't perform mental attacks.  However all characters resist mental attacks using their Extra Sensory Defence (ESD).
    For example:-</p>
    
    <p><i>Christine doesn't like the fact that Thaddeus attacked Paul, she's psychic and can perform mental attacks.  She decides
    to hit him with a Psychic Assault and rolls her ASP of four getting three, three, four, one and two, for a total of thirteen.
    Thaddeus isn't psychic but can resist the assault, like any other character, using his RES of four.  He gets a one, five, two
    and five, getting a total of thirteen.  Thaddeus grits his teeth, goes cross eyed and has a nosebleed but resists the attack.</i></p>
    
    <p>In the above example the attack and defence rolls both get equal values so the attack is not successful.  For this system
    a successful attack must achieve a result which is higher, even if it's only by one, than the defence roll to achieve a success.</p>
    
    <p>If a character has a Discipline then that modifies a proficiency roll just like a task resolution roll.  The player adds a number of
    dice equal to his Disciplines Knowledge and rolls the dice.  When the results come up he removes a number of dice, with the lowest values,
    equal to the disciplines knowledge.  He totals the roll as usual and then adds the disciplines experience to the value.  For example:-</p>
    
    <P><em>Thaddeus suddenly realises he has neglected to include his Swordsman Londsword discipline to his rolls.  He adds three
    dice to his MEL allowing him to roll seven dice.  He gets a one, three, four, one, two, six and a five.  He removes the twos
    ones and the two and adds the remainder.  This gives him a total of eighteen.  Pauls PAR roll was only fourteen so Thaddeus
    succeeds in hitting him.</em></P>
    
    <p>In the above examples the rolls lacked modifers. Certain situational modifiers, traits, enhancements and powers can all give a modifier
    to the roll.  If this is the case then the player simply adds the modifier to the total of the roll to achieve a total result.
    It's not up to the GM to remember all the players modifiers, it's the job of the player, and no modifier can be retroactive.
    For example:-</p>
    
    <p><i>Paul got a total of fifteen for his POP and adds on another ten because he's using a holy shotgun.  This gives him a total
    of twenty five which beats Thaddeus's twenty for his DOD.  Damage is rolled, gets through Thaddeus's armour, his BODY is gone and
    the crit charts are rolled upon. The GM hands down the result and Thaddeus suddenly remembers that he has a plus five situational
    modifier to his PAR because he holds the higher ground. He bitches and moans about how the attack shouldn't have hit but modifiers
    aren't retroactive.  He forgot, he's holding up play and will have to suck it up. What's that?  You had the high ground! Pfft,
    don't make me laugh.</i></p>
    
    <h2>Damage Roll</h2>
    
    <p>If the attack is successful then the attacker gets to roll damage. The type of dice, and the number of them you roll, is determined by the weapon used. The type of attack, light, medium or heavy, multiplies the damage value rolled, the multiplier is also determined by the weapon used.  If this value is higher than the victims damage threshold and armour resistance combined then the victim will take a wound. For Example:-</p>
    <p><i>Bob is shooting Jeff and suceeds at his attack.  His gun is a hunting rifle and does 2d8 damage.  He rolls them and gets a total of nine by adding them together.  He performed a heavy attack which has a multipler of seven for hunting rifles.  Nine times seven is equal to 63 which is higher than his damage threshold and armour resistance of fifty one.  Jeff will have to roll on the critical tables to discover what wound he takes.</i></p>
    <h2>Armour Resistance and Damage Threshold</h2>
    
    <p>The damage thresholds are calculated from the characters attributes and simply represent the characters ability to shrug off damage.  Body is used against physical attacks, mind against mental attacks, and for supernatural games soul is used in special circumstances.  When a victim is wearing no armour the damage threshold is the number the attacker has to beat in order to actually damage the victim after a successful hit.  If the character is wearing armour then they get a modifier, called the Armour Resistance, which they add onto the Damage Threshold to get a total damage threshold.  The modifier depends on the type of armour and is only good against attacks of specific damages. For example:-</p>
    <p><i>Tate is wearing some light combat armour.  He's been hit by a sword and his Body is twenty.  The damage done was thirty five.  If he was wearing no armour then that would have hurt him.  Luckily he is and light combat armour has an armour resistance against kinetic slashing damage of twenty.  Twenty and twenty makes forty which is over the damage rolled so he does not get hurt. </i></p>
    <p>Generally heavier armours have higher resistances but then some special armours are better at resisting certain types of damage.  Fireman's suits are particularly good at resisting heat, hazmat suits are very good against chemical and a bomb suit would be very good against explosive.  The type of damage done will be indicated in the weapon description so a victim knows what armour resistance to use.</p>
    <p>The damage roll has to be higher than the total damage threshold otherwise no damage is done.</p>
    
    <h2>Shock</h2>
    
    <p>Whenever a character receives critical damage there is a possibility that they may fall unconsciousness from the shock of being wounded. For each critical wound, that the character receives, he rolls either STAM or CONC for a test to remain conscious. For he first wound received the test target number is Average (12). This then increases in difficulty, by one step, for each additional critical wound so the second becomes Hard (18), the third becomes difficult (24) and so on.</p>
    <h2>Critical Charts</h2>
    
    <p>When a character takes damage they roll 2d6 to determine the location of the wound.  Look up the value of the roll on the hit location table.  For example:-</p>
    <p><i>Tarrant is taking a wound.  He rolls two six sided dice and gets a total of five.  On the hit location table this is a hit to the body.</i></p>
    <p>They then roll another d6 to determine the specific location within that general body location.</p>
    <p>They refer to the critical chart for the appropriate damage type. Once they've found the appropriate row for the location then they roll a d6 and modify the roll by the critical value of the weapon and additional damage.  Every twenty four points of damage over the victims total damage threshold subtracts 1 from the critical value.</p>
    <p>You should now have a description of the wound you have taken.</p>
    
    <h2>Death</h2>
    
    <p>The point of character death in the Flexi system is not that clear cut.  Okay some times it is, the critical charts will tell you if the character is dead from a wound.  There isn't much you can do if the critical chart says your head is cut off or if your heart is ripped from your chest.  That's pretty clear cut character death. Sometimes though a character will be effectively dead, they just won't be physically dead, if you know what I mean. For example:-</p>
    <p><i>Tarrant has come off pretty badly from a fight.  He's lost a leg and a hand.  He was stabbed multiple times, pretty seriously, and won't be up and walking, well limping, for a good few months.  Of course the character can't be played unless game time is skipped for a few months whilst he recuperates.  Tarrant's GM is loathe to do that, he's set up an epic story that will be resolved in a couple of weeks of game time or the world ends. Literally.  Tarrant is going to have to retire his character.</i></p>
    <p>When a character is too injured, too ill or has done something that turned him into an NPC then its retirement time.  Don't be sad, it happens sometimes, and if you're a gentleman then you'll do it.  If you're a GM and you've got a player who won't retire a character because he either:-</p>
    <p>A) Loves them too much.
    B) Is a bit of a dick.</p>
    <p>Then you have two options.  The first is to simply tell the player that, no hard feelings but, his character is not going to be able to be involved in gameplay.  It's not intentional but that is how the dice roll sometimes.  Maybe next time you get pissed and insult the king in his courtroom you should count to ten instead.  If the player still won't take the hint then you'll have to go with option two.  When he's asleep a troll crawls through the window and eats the character.  Sorry he's dead man, but as a double amputee there was no way he could fight the monster off.  Sorry bout that.
    </p>
</%def>