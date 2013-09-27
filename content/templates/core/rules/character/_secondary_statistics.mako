<%page args="h2, h3"/>

${h2('Secondary Statistics')}
      
        <p>Whilst the Attributes and Combat Proficiencies provide the main mechanics for task and combat resolution, they cannot represent all
        of a characters traits. These secondary stats all aid the game mechanics but are determined individually. </p>
      
    ${h3('Combat Speeds')}
      
        <p>For ease of use combat is broken down into a number of time periods. A
        sequence is effectively a round of combat, where all participants get at
        least one action before going back round all of the participants again.
        The point in time that a person can act during a sequence is determined
        by a characters initiative. <br>
        
        <h5>Initiative</h5>
        
        <p>Initiative is the same value as a characters REFX plus any modifiers.
        When Initiative is called a player will roll a number of six sided dice equal to his characters Initiative.
        All the participants in combat will have their own initiative value, which determines the order
        in which they take their turns from highest to lowest.</p>
        
        <h5>Turns per Sequence</h5>
        
        <p>Turns are the times, during a sequence, that a character can perform
        actions. The number of turns a character has during a sequence is
        determined by the characters Turns Per Sequence, or TPS, for which the defaulot is one. Most characters
        can only take one turn per sequence but some augmented humans,
        supernatural creatures and non-humans may have several per sequence.
        They can do this because they are moving superhumanly fast compared to
        even the fastest human.</p>
          
        <h5>Actions per Turn</h5>
        
        <p>During a turn a player may decide that his character performs specific
        manoeuvres such as attacking or moving, each of these will cost a number
        of actions. The total number of actions a character can perform per turn
        is determined by the characters number of Actions Per Turn, or APT. The number
        of actions a character can have at character generation is equal to reflex halved,
        to a minimum of one.</p>
        
        <p>APT = REFX / 2</p>
    
    ${h3('Damage Multipliers')}
    
    <p>The damage multipliers convert a characters strength into a series of multiples which are used for melee weapon
    damage.  When a character successfully attacks a victim using a melee weapon he rolls the damage for the weapon.  Then
    he multplies that damage by the appropriate damage multiplier for his strength. A character will have a total of six damage
    multipliers, three for one handed weapons and three for two handed weapons.  Some weapons can use both as they are meant
    to be used in either way.  Both one handed and two handed share the same three categories, light, medium and heavy, which
    correspond to the types of attacks a character can make. The following table gives the damage mulipliers for characters who
    lack mega-strength.</p>
    
        <p><div id="tabs">
        <ul>
            <li><a href="#tabs-1">Damage Multipliers</a></li>
        </ul>
        <div id="tabs-1">
            <table class="background-table">
            <tr class="background-firstrow"><th>&nbsp;</th><th colspan="3">1 handed multiplier</th><th colspan="3">2 handed multiplier</th></tr>
             <tr><td>STRG</td><td>Lgt</td><td>Med</td><td>Hev</td><td>Lgt</td><td>Med</td><td>Hev</td></tr>
             <tr><td>0</td><td>1A</td><td>1A</td><td>1A</td><td>1A</td><td>1A</td><td>2A</td></tr>
             <tr><td>1</td><td>2A</td><td>2A</td><td>3A</td><td>2A</td><td>3A</td><td>4A</td></tr>
             <tr><td>2</td><td>2A</td><td>3A</td><td>4A</td><td>3A</td><td>4A</td><td>5A</td></tr>
             <tr><td>3</td><td>3A</td><td>4A</td><td>5A</td><td>4A</td><td>5A</td><td>6A</td></tr>
             <tr><td>4</td><td>4A</td><td>5A</td><td>6A</td><td>5A</td><td>6A</td><td>8A</td></tr>
             <tr><td>5</td><td>5A</td><td>6A</td><td>7A</td><td>6A</td><td>8A</td><td>9A</td></tr>
             <tr><td>6</td><td>5A</td><td>7A</td><td>8A</td><td>7A</td><td>9A</td><td>11A</td></tr></table>
        </div>
        </div></p>
    
    <p>If a character has mega-strength then they should consult the appropriate tables on the mega-attributes page.</p>
    
    ${h3('Fame and Infamy')}
    
    <p>These represent the fame and notoriety of the character.  The actions of a character will cause these two
    characteristics to change but, as a general rule, the higher they are the more well known the character is.
    Of course which one is highest determines how people react to the character.  A high Infamy will normally cause
    NPCs to react to the player in fear, but not always.  Other criminals may act respectfully, the police will
    generally react negatively, and there is always someone with a chip on their shoulder willing to take someone
    down a peg.  A high Fame, on the other hand, is nearly always good.  Famous people are treated deferentially
    by most and the more Fame you have the wider your fame spreads. The game masters section of the rules contains more
    information on how to use these two characteristics in your game.</p>
    
    ${h3('Carrying Capacity')}
      
        <p>A characters carrying capacity is equal to his strength multiplied by
        fifty. All items have a bulk value that represents not just the weight
        but also the size of the item in question. A characters carrying
        capacity is the value that represents the amount of equipment that a
        character can carry. Simply add all of the items bulk values together
        and if they do not exceed the characters carrying capacity than the
        character can move unencumbered. When it is exceeded a character may
        walk but not run. When it is exceeded by more than double it's amount
        then the character can only move at half speed. If exceeded by more than
        treble the amount the character cannot move at all without facing
        serious injury.</p>
      
    ${h3('Movement')}
      
        <p>A characters movement is the number of meters that a player can move in
        one combat sequence or a three second period of time. It is determined by
        averaging stamina and coordination.</P>
        
        <P>MOVEMENT = STAM + CORD / 2</P>
        
        <p>Once a player has calculated his characters movement he will need to use that to calculate his other movement speeds.</p>

        <ul>
            <li>Crawling is equal to a characters movement halved.</li>
            <li>Walking is equal to characters movement.</li>
            <li>Jogging is equal to a characters movement doubled.</li>
            <li>Running is equal to a characters movement trebled.</li>
            <li>Vertical Jump is equal to movement divided by six.</li>
            <li>Horizontal Jump is equal to movement multiplied by one and a third.</li>
        </ul></P>
