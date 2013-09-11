<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Combat Proficiencies</%def>

<%def name="body()">
   <h1>Combat Proficiencies</h1>

    <P>The combat proficiciencies were implemented to speed up the process of combat.  They represent a characters basic fighting ability and
    exist as offensive-defensive pairs.A successful attack is one which achieves a rolled value which is higher than the opponent?s defensive
    roll. The successful defence is one in which the rolled value is equal to or higher than the opponents offensive roll. Parry is only used
    against Melee Proficiency, Dodge is only used against Projectile Proficiency, Extra sensory defence is only used against Extra Sensory Perception and
    vice versa.</P>
    
    <p>In combat a player will use his combat proficiencies in the same way as attributes. Their value represents the number of six-sided
    dice that the character will roll.</P>
        
        <p><h3>Melee (MEL)</h3>
        Melee is used offensively against Parry. Whenever a character is attacking
        in melee, i.e. in close quarters combat such as a brawl or swordfight,
        he uses this value. It is the average of a characters Coordination and
        Reflex, rounded down to the nearest whole number.</p>
        
        <P>MEL = CORD + REFX / 2</P>
    
        <P><h3>Parry (PAR)</h3>
        Parry is the defensive roll made against all melee attacks towards the
        character. It is the average of a characters Coordination and Intuition,
        rounded down to the nearest whole number.</P>
            
        <P>PAR = CORD + INTU / 2</P>
        
        <P><h3>Projectile (POP)</h3>
        Projectile Proficiency is also used offensively but only for ranged
        combat. When a character fires a projectile weapon such as a gun, or
        throws a throwing weapon such as a grenade, this value is used for the
        attack roll. It is the average of a characters Coordination and
        Perception, rounded down to the nearest whole number.</P>
        
        <P>POP = CORD + PERC / 2</P>
        
        <P><h3>Dodge (DOD)</h3>
        Dodge is the defensive value used against all ranged attacks. It is the
        average of a characters Coordination and Instinct, rounded down to the
        nearest whole number.</p>
        
      <p>DOD = REFX + INTU / 2</P>
      
        <P><h3>Extra Sensory Perception (ESP)</h3>
        Extra Sensory Perception is the offensive value used for all supernatural
        attacks. This includes spells, psychic powers, monstrous powers and any
        other instance when an attack comes from some mental ability. It is the
        average of a characters Intuition and Resolve, rounded down to the
        nearest whole number.</P>

        <P>ESP = INTU + RESO / 2</P>

        <P><h3>Extra Sensory Defence (ESD)</h3>
        Extra Sensory Defence is the defensive value used by a player character to defend
        against supernatural attacks. It is the average of a characters
        Comprehension and Resolve, rounded down to the nearest whole number.</P>

        <P>ESD = COMP + RESO / 2</P>
 
</%def>
