<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Taking Damage</%def>

<%def name="body()">
    
<script>
  $(function() {
    $( "#tabs" ).tabs({
        collapsible: true, 
        active: false,
    });
  });
  </script>
    
    <h1>Taking Damage</h1>
    
    <p>When a character or NPC succesfully hits another character or NPC they have a chance of damaging them.
    Seeing as every character is going to end up taking damage, at some point, we'll try and explain this as clearly
    as possible.</p>
    
    <h3>Melee Damage Rolls</h3>
    
    <p>The number, and type of dice rolled, for a melee weapon is given in the weapons description.  Once this has
    been rolled then the player multiplies it by his damage multiplier.  The appropriate multiplier to use is determined
    by two factors.  Firstly whether the attack was one, or two handed, and secondly the type of attack.  Light attacks
    have a lower multiplier than medium attacks, which have a lower multiplier than heavy attacks. For Example:-</p>
    
    <p><i>Paul has hit Thaddeus with his two handed axe with a heavy attack.  </i></p>
    
    <h3>Projectile Damage Rolls</h3>
    
    <p>The number and type of dice for a ranged weapon is given in the weapons description.  The damage multiplier for ranged
    weapons is also given in the weapons description because the power of the attack is always the same and not determined by
    the characters attributes. However they follow the same mechanic as melee where the dice are rolled, added together, and
    then multiplied by the damage multiplier.</p>
    
    <p><i></i></p>
    
    <h3>Armour Resistance</h3>
    
    <p>When a victim is wearing armour the armour resistance is the number the attacker has to beat, with his damage roll.
    As mentioned in the Secondary Statistics section there are twelve armour resistances. Each corresponds with a damage
    type and they essentially oppose one another.  So a weapon that does K-Piercing damage goes against an armours
    K-Piercing armour resistance.  If the damage roll is is higher than the armour resistance the victim will take damage.
    For example:-</p>
    
    <p><i>Thaddeus is wearing some light combat armour.  He's been hit by a sword and light combat armour has a K-Slashing
    resistance of twenty.  The damage roll by the attacker totalled twenty one.  One less and it would have been absorbed
    by the armour. Thaddeus is going to take some damage.</i></p>
    
    <p>Generally heavier armours have higher resistances but then some special armours are better at resisting
    certain types of damage.  Fireman's suits are particularly good at resisting heat, hazmat suits are very good
    against chemical and a bomb suit would be very good against explosive.  The type of damage done will be
    indicated in the weapon description so a victim knows what armour resistance to use.</p>

    <h3>Damage Ranking</h3>
    
    <p>Before continuing ensure that you have used the correct damage rankings for the weapon and armour.
    Vehicle mounted weapons are intended to damage vehicle armour.  Vehicle armour is a lot more protective than
    personal armour.  Personal armour is intended to protect against personal weapons and even with the best intentions
    most armourers will admit that personal armour can't really survive a direct hit from a vehicle weapon.  Vehicle
    armour is meant to survive a direct hit from vehicle armour otherwise it would be pretty rubbish vehicle armour.
    In the same way vehicle armour isn't really up to the same amount of punishment that a spaceships armour can take.
    Spaceship weapons can rough up a surface vehicle pretty badly and leave personnel as a red smear on the landscape.</p>
    
    <p>This is why we have damage rankings.  The rank indicates the level of damage it is operating at so that GMs
    and players can tell when they have to modify the damage they are giving or receiving.  Basically when a weapon
    is damaging an armour of a lower rank the damage must be increased by a factor of ten for each rank.  When an armour is
    taking damage from an armour of a lower rank the damage must be decreased by a factor of ten for each rank.  This also
    works reversely when giving or recieving damage from a higher rank.  For example:-</p>
    
    <p><i>Thaddeus is in a land battle planetside.  He doesn't know it but in orbit his side's navy have just
    done a runner.  The enemies navy, now that they are unopposed, are going to launch nukes at the enemy ground
    positions.  A typical nuke does three six sided dice multiplied by five.  Adding the rolled dice together
    gives us nine.  Multiplied by five that gives us forty five.  Now Thaddeus is wearing heavy armoured clothing
    which, with his body, gives an armour total of around a hundred.  If this was a Damage Rank A weapon his armour
    could easily absorb it but it isn't.  A typical nuke is Damage Rank F.  There are five steps between A and F so
    the damage of a rank F weapon to a rank A armour is multiplied by one hundred thousand.  Thaddeus takes four
    hundred and fifty thousand damage which isn't even worth rolling on the crit tables for.  Thaddeus joins the
    rest of the battlefield as ash in the atmosphere.</i></p>

    <h3>Reducing the Limits</h3>
    
    <p>If a damage roll beats an armour resistance then the character takes damage. This will reduce the characters
    BODY temporarily by one point.  Each following succesful attack, that does damage, also reduces it by one.
    Eventually, if combat continues long enough, the BODY of the character will be reduced to zero.  When this occurs
    all following succesful attacks, that do damage, must be rolled for on the damage charts.</p>
    
    <P><em>An example goes here</em></P>
    
    <p>For extremely heavy attacks, where the damage roll is incredibly high, more BODY is lost.  For every fifty
    damage points over the armour resistance of the victim take away an additional point of body.</p>
    
    <p><em>an example goes here</em></p>

    <h3>Damage Charts</h3>

    <p>When an attacker achieves a successful attack the defender must take a wound.  Each type of damage has
    it's own Damage Chart but first the GM will ask the defender to roll  a single d6.  This roll is to
    determine the location of the wound.  Of course this roll isn't needed if the attacker aimed their attack.
    In that case we skip to the next step. After determining general location the GM will call the defender to
    roll a single die for the specific location.  The type of die is determined by the general location.</p>
    
    <p><i>Thaddeus has been struck by a giant using an oak tree.  Normally Thaddeus would have to roll a
    general location and a specific location.  But the GM has decided that this attack counts as a whole
    body attack.  So he skips the rolls and simply looks up the Body row on the Kinetic Impact damage table.</i></p>
    
    <p>Looking on the Damage Table for the specific Damage Type you will find a row for every location and
    specific location.  You will notice that every column has a numerical value, this value represents the
    power of the attack. To determine the power of the attack you need to add several values together.  The
    first value is the Critical Rating of the weapon and to this you add the value of a single d6 roll.</p>
    
    <p><i>The critical value of a tree isn't listed in the weapon tables.  Odd that, but Thaddeus's GM thinks
    on his feet.  He decides that a tree's critical value should be around six.  He rolls a d6 and it comes up
    with a six.  Lucky him, but it's not looking good for Thaddeus.</i></p>
    
    <p>There are several levels of wound and each one represents a general degree of damage, to a location,
    which the GM can embellish with description.  To discover the level of the wound the GM takes the power
    of attack and looks along the location row to find the column with the appropriate power of attack value.
    The level of wound will be given at the appropriate place in the table and are as follows:-</p>
    
    <ul>
        <li>Unharmed - Attack has left no damage.</li>
        <li>Superficial - Damage is merely cosmetic scratches, scrapes and bruises.</li>
        <li>Light - Cuts and bruises that cause pain and aggravation but impede little.</li>
        <li>Medium - Weeping cuts and deep tissue damage that impedes body functions but does not stop them.</li>
        <li>Severe - Deep lacerations or physical trauma that impede physical movement.</li>
        <li>Serious - Tissue, skeletal and organ trauma that causes them to be impaired in function.</li>
        <li>Deadly - Physical trauma that causes one or more organs to cease functioning.</li>
        <li>Mortally - Massive organ system failure that means imminent death if not treated quickly.</li>
        <li>Dead - At this point nothing can save the character apart from a Trope, the have suffered to much damage from the attack and have died.</li>
    </ul>
    
    <p><i>The GM looks along the body location and discovers that twelve is the highest it goes.  Any attack with
    a power of attack value higher than this cannot do any further damage.  The wound level for an attack with a
    power of twelve, to the body, is in fact DEAD. Thaddeus has been mashed into a red paste and unless he spends
    points on a trope, to somehow survive, he is going to remain dead.</i></p>
    
    <div id="tabs">
  <ul>
    <li><a href="#tabs-1">K Piercing</a></li>
    <li><a href="#tabs-2">K Slashing</a></li>
    <li><a href="#tabs-3">K Impact</a></li>
    <li><a href="#tabs-4">Chemical</a></li>
    <li><a href="#tabs-5">Cold</a></li>
    <li><a href="#tabs-6">Electricity</a></li>
    <li><a href="#tabs-7">Explosive</a></li>
    <li><a href="#tabs-8">Implosive</a></li>
    <li><a href="#tabs-9">Heat</a></li>
    <li><a href="#tabs-10">Radiation</a></li>
</ul>
<div id="tabs-1">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Head</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Brain</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Both Eyes</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Left Eye</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Right Eye</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Right Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Mouth</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Nose</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Neck</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Scalp</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Torso</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Heart</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Spine</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Lung</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Liver </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Stomach</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Misc organs</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-2">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Head</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Brain</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Both Eyes</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Mouth</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Nose</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Neck</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Scalp</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Torso</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Heart</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Spine</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Lung</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Liver </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Stomach</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Misc organs</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-3">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Head</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Brain</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Both Eyes</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Left Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Mouth</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Nose</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Neck</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Scalp</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Torso</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Heart</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Spine</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Lung</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Liver </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Stomach</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Misc organs</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-4">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Head</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-5">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Head</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>  
</div>
<div id="tabs-6">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Head</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table> 
</div>
<div id="tabs-7">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Head</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Heart</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-8">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td></tr>
 <tr><td>Head</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-9">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Head</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Brain</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Both Eyes</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Eye</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Right Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Left Ear</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Mouth</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Nose</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Neck</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Scalp</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Spine</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Lung</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Liver </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Stomach</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Misc organs</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Elbow</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Forearm</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Hand</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Knee </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Shin </td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr>
 <tr><td>Feet</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td><td class="unharmed">UNHARMED</td></tr></table>
</div>
<div id="tabs-10">
<table class="damage-table">
<tr class="damage-firstrow"><th></th><th>12 to 10</th><th>9 to 7</th><th>6 or 5</th><th>4 or 3</th><th>2 or 1</th><th>0 to -2</th><th>-3 to -5</th></tr>
 <tr><td>Body</td><td class="dead">DEAD</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td></tr>
 <tr><td>Head</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Brain</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Both Eyes</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Eye</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Right Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Left Ear</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Mouth</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Nose</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Neck</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Scalp</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Torso</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Heart</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Spine</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Lung</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Liver </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Stomach</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Misc organs</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Upper arm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Elbow</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Forearm</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hand</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Leg</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Hip</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Knee </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Shin </td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr>
 <tr><td>Feet</td><td class="mortal">MORTAL</td><td class="deadly">DEADLY</td><td class="serious">SERIOUS</td><td class="severe">SEVERE</td><td class="medium">MEDIUM</td><td class="light">LIGHT</td><td class="superficial">SUPERFICIAL</td></tr></table>
</div>
</div>
    
    <h3>Shock</h3>
    
    <p>The first thing a character should do after taking a wound is roll to remain conscious. This is a CON or
    STAM test against a target number which is dependent on the level of the wound.  If they succeed then they
    grit their teeth and keep on going.  If they fail then shock and blood loss cause them to fall unconscious.</p>
    
    <p><i>Thaddeus spends his trope pool points and the GM decides that he can reduce his DEAD wound down to a
    DEADLY wound. Thaddeus is relieved but relief turns to horror as the GM informs him that he will still have
    to make a roll to remain conscious. Thaddeus weeps inside but picks up his four STAM dice and rolls a two,
    three, four and a three which totals to twelve.  The TN for a DEADLY wound is thirty. Thaddeus falls unconscious
    from the blow and the giant picks his body up and stuffs it into a pouch to scoff later.</i></p>
    
    <h3>Wound Stabilization</h3>
    
    <p>Finally the GM should take note of the time until the wounds status deteriorates. If the wound is not
    stabilised before this time is up, then it will get worse.  The wound level deteriorates and moves up to
    the next level.  There are two ways a wound can stabilise, a surgical test to treat the wound will stabilise
    it but a creature can make a CON test for it to stabilise naturally.  In both cases the target number is
    determined by the level of the wound.</p>
    
    <p><i>The GM decided to be kind to Thaddeus and says that the trope made his wound stabilise.  However the giant
    himself suffered a light wound from Thaddeus earlier in the combat and, although he easily passed the consciousness
    test, he hasn't treated it. The giants CON is seven and so after seven days, without treatment, it goes from a LIGHT
    wound to a MEDIUM wound.  After a further two days it becomes a SEVERE wound. Another day and it becomes a SERIOUS
    wound. Seven hours later it becomes a DEADLY wound. A hour and a half later than that it becomes MORTAL and twenty one
    minutes later he's DEAD.  At least that's what would have happened if the giant had failed his natural CON test to
    stabilise. He actually succeeded on the first stage and so he can skip off to club another adventurer to death.</i></p>
    
    <h3>Death</h3>
    
    <p>The point of character death in the Flexi system is not that clear cut.  Okay some times it is,
    there isn't much you can do if the damage chart says DEAD.  That's pretty clear
    cut character death. Ocasionally a character will be effectively dead, they just won't be physically
    dead. For example:-</p>
    
    <p><i>Thaddeus has come off pretty badly from a fight.  He's lost a leg and a hand.  He was stabbed multiple
    times, pretty seriously, and won't be up and walking, well limping, for a good few months.  Of course the
    character can't be played unless game time is skipped for a few months whilst he recuperates.  Thaddeus's GM
    is loathe to do that, he's set up an epic story that will be resolved in a couple of weeks of game time or
    the world ends. Literally.  Thaddeus is going to have to retire his character.</i></p>
    
    <p>When a character is too injured, too ill or has done something that turned him into an NPC then its
    retirement time.  Don't be sad, it happens sometimes, and if you're a gentleman then you'll do it.  If
    you're a GM and you've got a player who won't retire a character because he either:-</p>
    
    <p>A) Loves them too much.</p>
    
    <p>B) Is a bit of a dick.</p>
    
    <p>Then you have two options.  The first is to simply tell the player that, no hard feelings but, his
    character is not going to be able to be involved in gameplay.  It's not intentional but that is how the
    dice roll sometimes.  Maybe next time you get pissed and insult the king in his courtroom you should
    count to ten instead.  If the player still won't take the hint then you'll have to go with option two.
    When he's asleep a troll crawls through the window and eats the character. </p>

    
    <p></p>
    
    <P><em></em></P>
    
    

</%def>