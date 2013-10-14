<%page args="h2, h3"/>


${h2('Conditions')}
    
    <P>The mechanics of taking damage from attacks are outlined in more detail within the damage and healing section of the rules.
    However as they appear on the character sheet we will describe Limits and Armour Resistances slightly here. When a character
    eventually takes damage the form the damage takes will be very clear.  Luckily there are two mechanics that a character must go
    through before damage is taken.</P>
    
    ${h3('Limits')}
    
    <P>Limits are a representation of the amount of damage a character, NPC or encounter can take before they begin suffering critical damage.
    It is a numerical value that is depleted every time a successful attack gets past armour and deals damage.  Every successful attack reduces
    the value by one. When it has been reduced to zero all following successful attacks deal critical damage. There are three limits which are:-</P>
    
    <h4>Body</h4>
        
    <P>Body is the average of Strength and Constitution. It represents the amount of physical damage that a
    characters body can take before receiving critical physical damage.</P>
        
    <p>BODY = STRG + CONS / 2</p>
    
    <h4>Mind</h4>

    <P>Mind is the average of Resolve and Comprehension.
    It represents the amount of damage that a character can take to their
    mental faculties before receiving critical mental damage. Mental damage
    does not only occur through metaphysical attacks but can also be taken
    from stressful, or shocking, situations.</p>
        
    <p>MIND = RESO + COMP / 2</P>

    <h4>Soul</h4>
    
    <P>Soul is the average of Intuition and Empathy.  It represents the amount of damage a character can take to their spiritual essence
    before recieving critical spiritual damage.  It is also modified by the species of the character.</p>
    
    <P>SOUL = INTU + EMPH / 2</P>
    
    ${h3('Strain Limits')}
    
    <p>The three damage limits are shadowed by the three Strain Limits of Fatigue, Stress and Despair. These limits are values equal to
    their corresponding damage limits.  Fatigue is equal to Body, Stress is equal to Mind and Despair is equal to Soul.</p>
    
    <p>Each is effectively a buffer for their corresponding damage limits and will be reduced by some effects before the damage limits.
    Fatigue is reduced when a character is performing an exhausting task.  Once it's used up Body will start being reduced. Stress performs
    the function for Mind and Despair does the same for Soul.</p>
    
    ${h3('Armour Resistances')}
    
    <P>Before a character begins reducing his limits the attacks damage must surpass an armour resistance.  The armour resistances are not
    generated at character generation but come from the armour that the character has bought, either at character generation or during the
    game.  There are twelve different damage types used in the Flexi System and all armours have a value for each of them.  To determine
    whether the damage of an attack gets through the armour you simply compare the damage rolled by a weapon to the armour resistance for
    that damage type.  The armour resistances are:-</P>
    
    <h4>Kinetic Piercing</h4>
    
    <p>Damage caused by piercing weapons such as rapiers, arrows and bullets.</p>
    
    <h4>Kinetic Impact</h4>
    
    <p>Damage caused by weapons such as clubs or maces.</p>
    
    <h4>Kinetic Slicing</h4>
    
    <p>Damge caused by weapons such as longswords or katanas.</p>
    
    <h4>Heat</h4>
    
    <p>Damage caused by intense heat sources such as fire and incendiary rounds.</p>
    
    <h4>Cold</h4>
    
    <p>Damage caused by intensely cold sources such as freeze rays, artic winters and cryogenic coolants.</p>
    
    <h4>Explosive</h4>
    
    <p>Damage caused by explosions such as bombs, explosive rounds, grenades and exposure to vaccuum.</p>
    
    <h4>Implosive</h4>
    
    <p>Damage caused by implosions such as high pressure environments, gravitational anomalies and gravitational weapons.</p>
    
    <h4>Electrical</h4>
    
    <p>Damage caused by dangerous electrical currents such as high current wires, tasers and lightning.</p>
    
    <h4>Radiation</h4>
    
    <p>Damage caused by radioactive sources such as ray guns, nuclear bombs and toxic waste.</p>
    
    <h4>Chemical</h4>
    
    <p>Damage caused by reactive chemicals such as acids, alkalis and toxins.</p>
    
    <h4>Mind</h4>
    
    <p>Damage caused by mind attacks such as psychic powers, vampiric domination and horror.  Most armours will lack this resistance as
    it is highly specialised.</p>
    
    <h4>Soul</h4>
    
    <p>Damage caused by spiritual attacks such as vampiric feeding, soul eating monsters and the incessant daily grind of life. Most
    armours will lack this resistance as it is highly specialised.</p>
