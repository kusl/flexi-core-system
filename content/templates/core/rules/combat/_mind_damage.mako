<%page args="h2, h3"/>


${h2('Mind Damage')}
    
    <p>Attacks on the Mind, such as psychic attacks or spells, work in a similar way to those on the Body.
    Any attack that does Mind damage must first
    overcome any Mind armour resistance that the player has.  Very few physical armours have Mind armour resistance but certain abilities
    will produce some.  If an attack does Mind damage, and the result is larger than the Mind armour resistance value, then the
    characters Mind Damage Limit is reduced by one.</p>
    
    <p>Each successive, successful, attack will also reduce the characters Mind Damage Limit by one. Eventually, when a characters
    Mind Damage Limit has been reduced to zero, they will suffer from Hysteria.</p>
    
    ${h3('Hysteria')}
    
    <p>The mind is resilient but can only take so much punishment.  When too much is taken the character will gain a hysteria,
    a temporary mental affliction. As soon as a characters mind damage limit reaches zero, and for every successful mind attack thereafter,
    they must receive a hysteria.  To determine the hysteria your character receives roll 2d6, add the values together and consult the
    following Hysteria chart.</P>
    
    <p><table class="full-table">
    <caption>Table: Hysteria Chart</caption>
    <tr>
        <th>Roll Result</th>
        <th>Hysteria Type</th>
    </tr>
    <tr>
        <td>2</td>
        <td>Body Malfunction</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Emotional Breakdown</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Hysteria</td>
    </tr>
    <tr>
        <td>5</td>
        <td>Panic</td>
    </tr>
    <tr>
        <td>6</td>
        <td>Awe</td>
    </tr>
    <tr>
        <td>7</td>
        <td>Shock</td>
    </tr>
    <tr>
        <td>8</td>
        <td>Awe</td>
    </tr>
    <tr>
        <td>9</td>
        <td>Sensory Malfunction</td>
    </tr>
    <tr>
        <td>10</td>
        <td>Impulsive Action</td>
    </tr>
    <tr>
        <td>11</td>
        <td>Frenzy</td>
    </tr>
    <tr>
        <td>12</td>
        <td>Cognitive malfunction</td>
    </tr>
    </table></p>

    
    <p>The different types are further broken down in specific subtypes with more detailed descriptions and rules.  To determine this
    roll 1d6 and look it up on the following tables.</p>
    
    <p><table class="full-table">
    <caption>Table: Hysteria Subtype</caption>
    <tr>
      <th>Hysteria type</td>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
      <th>5</th>
      <th>6</th>
    </tr>
    <tr>
      <td>Cognitive malfunction</td>
      <td>Temporary Catatonia</td>
      <td>Temporary Amnesia</td>
      <td>Time Lapse</td>
      <td>Temporary Compulsion</td>
      <td>Temporary Delusion</td>
      <td>Depersonalization</td>
    </tr>
    <tr>
      <td>Body Malfunction</td>
      <td>Heart Attack</td>
      <td>Paralysis</td>
      <td>Blindness</td>
      <td>Deafness</td>
      <td>Numbness</td>
      <td>Lack of test and smell</td>
    </tr>
    <tr>
      <td>Emotional Breakdown</td>
      <td>Suicide</td>
      <td>Serenity/Joy</td>
      <td>Despair/Sorrow</td>
      <td>Guilt/Regret</td>
      <td>Rage/Anger</td>
      <td>Awe/Fascination</td>
    </tr>
    <tr>
      <td>Frenzy</td>
      <td>Seizure</td>
      <td>Hysteric</td>
      <td>Accident</td>
      <td>The Shakes</td>
      <td>Irritable</td>
      <td>Anxious</td>
    </tr>
    <tr>
      <td>Hysteria</td>
      <td>Pain</td>
      <td>Screaming fit</td>
      <td>Hallucination</td>
      <td>Incoherency</td>
      <td>Dizziness</td>
      <td>Hyperventilating</td>
    </tr>
    <tr>
      <td>Impulsive Action</td>
      <td>Selflessness</td>
      <td>Overkill</td>
      <td>Betrayal</td>
      <td>Cry for Help</td>
      <td>Self Preservation</td>
      <td>Twitchy</td>
    </tr>
    <tr>
      <td>Panic</td>
      <td>Vomiting</td>
      <td>Running</td>
      <td>Hiding</td>
      <td>Crying</td>
      <td>Praying/Babbling</td>
      <td>Skittish</td>
    </tr>
    <tr>
      <td>Sensory Malfunction</td>
      <td>Feeling of Dread</td>
      <td>Seeing Phantoms</td>
      <td>Hearing Phantoms</td>
      <td>Hand Seizure</td>
      <td>Phantom taste and smell</td>
      <td>White Spots</td>
    </tr>
    </table></p>

    <p>Then Roll 1d6 and add mind attack crit rating to determine effect</p>
    
    <p>Going to need the different types here</p>
    
    ${h3('Mind Criticals')}
    
    <p> Most of the time, mind damage simply requires time and rest for it to heal.  Yet there is always the chance that the damage
    done is more permenant.  Whenever a character recieves a hysteria they must also make a test to avoid a Post Traumatic Stress.
    These are permenant mental traits which the player has acquired through taking too much mind damage.</p>
    
    <p>The character must make a Resolve test against a target number determined by the number of hysterias he has currently acquired.
    The more hysterias the higher the target number, which can be found on the following table:-</p>
    
    <P><table class="full-table">
    <caption>Table: Post Traumatic Stress Resolve Test Target Numbers</caption>
    <tr>
        <th>Hysteria Taken</th>
        <th>Target Number</th>
    </tr>
     <tr>
        <td>1</td>
        <td>6</td>
     </tr>
     <tr>
        <td>2</td>
        <td>12</td>
     </tr>
     <tr>
        <td>3</td>
        <td>18</td>
     </tr>
     <tr>
        <td>4</td>
        <td>24</td>
     </tr>
     <tr>
        <td>5</td>
        <td>30</td>
     </tr>
     <tr>
        <td>6</td>
        <td>36</td>
     </tr>
    </table></P>
    
    <p>If the character fails this Resolve test then they need to gain a Post Traumatic Stress.  First either the GM or the player can roll
    3d6 for the type of Post Traumatic Stress on the following table:-</p>
    
    <p><table class="full-table">
    <caption>Table: Post Traumatic Stress Type Chart</caption>
    <tr>
        <th>Roll Result</th>
        <th>PTS type</th>
    </tr>
    <tr>
        <td>3</td>
        <td>Bizzare Dillusions</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Somatic Delusions</td>
    </tr>
    <tr>
        <td>5</td>
        <td>Mental Delusion</td>
    </tr>
    <tr>
        <td>6</td>
        <td>Phobias</td>
    </tr>
    <tr>
        <td>7</td>
        <td>Behaviour</td>
    </tr>
    <tr>
        <td>8</td>
        <td>Event Recollection</td>
    </tr>
    <tr>
        <td>9</td>
        <td>Mood Problems</td>
    </tr>
    <tr>
        <td>10</td>
        <td>Disturbed</td>
    </tr>
    <tr>
        <td>11</td>
        <td>Disturbed</td>
    </tr>
    <tr>
        <td>12</td>
        <td>Mood Problems</td>
    </tr>
    <tr>
        <td>13</td>
        <td>Compulsion</td>
    </tr>
    <tr>
        <td>14</td>
        <td>Mood Alteration</td>
    </tr>
    <tr>
        <td>15</td>
        <td>Obsession</td>
    </tr>
    <tr>
        <td>16</td>
        <td>Extrovertive Delusions</td>
    </tr>
    <tr>
        <td>17</td>
        <td>Cognitive</td>
    </tr>
    <tr>
        <td>18</td>
        <td>Psychosis</td>
    </tr>
    </table></p>
    
    <p>Then roll 1d6 for the subtype and consult the table for the rules.</p>

    <p><table class="full-table">
    <caption>Table: Post Traumatic Stress Subtype Chart</caption>
    <tr>
      <th>PTS Type</td>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
      <th>5</th>
      <th>6</th>
    </tr>
    <tr>
      <td>Disturbed</td>
      <td>Death Wish</td>
      <td>Agoraphobia</td>
      <td>Social anxiety</td>
      <td>Insomnia</td>
      <td>Panic Attacks</td>
      <td>Survivors Guilt</td>
    </tr>
    <tr>
      <td>Mood Problems</td>
      <td>Depression</td>
      <td>x</td>
      <td>Self harm</td>
      <td>x</td>
      <td>Anxiety</td>
      <td>x</td>
    </tr>
    <tr>
      <td>Event Recollection</td>
      <td>Flash backs</td>
      <td>Event Overwrite</td>
      <td>Event Amnesia</td>
      <td>Derealization</td>
      <td> Night Terrors</td>
      <td>Attennion defecit</td>
    </tr>
    <tr>
      <td>Compulsion</td>
      <td>Timetable</td>
      <td>Caution</td>
      <td> Refusal</td>
      <td> Reassurance</td>
      <td> Nervous ticks</td>
      <td> Addiction</td>
    </tr>
    <tr>
      <td>Behaviour</td>
      <td>munchausen's</td>
      <td>Kleptomania</td>
      <td>Defiant Disorder</td>
      <td>Pyromania</td>
      <td>Submissive Disorder</td>
      <td>Histronic Disorder</td>
    </tr>
    <tr>
      <td>Mood Alteration</td>
      <td>Rage</td>
      <td>Mania</td>
      <td> Grief</td>
      <td>Hypomania</td>
      <td> Disgust</td>
      <td>Mood swings</td>
    </tr>
    <tr>
      <td>Phobias</td>
      <td>Environmental</td>
      <td> Objects</td>
      <td> Person</td>
      <td> Time</td>
      <td> Entities</td>
      <td> Atmosphere</td>
    </tr>
    <tr>
      <td>Obsession</td>
      <td>Task</td>
      <td> Goal</td>
      <td> Object</td>
      <td> Person</td>
      <td> Place</td>
      <td> Belief</td>
    </tr>
    <tr>
      <td>Mental Delusion</td>
      <td>Religious Delusions</td>
      <td>Delusion of grandeur</td>
      <td> Nihilistic Delusions</td>
      <td> Delusions of Control</td>
      <td>Delusion of poverty/bad luck</td>
      <td>Delusions of reference</td>
    </tr>
    <tr>
      <td>Extrovertive Delusions</td>
      <td>Paranoia</td>
      <td>Delusions of Conspiracy</td>
      <td>Delusions of thought theft</td>
      <td>Delusions of guilt</td>
      <td>Delusion of oppression</td>
      <td>Tactile Hallucinations</td>
    </tr>
    <tr>
      <td>Somatic Delusions</td>
      <td>Cotard Delusion</td>
      <td>Infected</td>
      <td>Wrong body</td>
      <td>Freak</td>
      <td>Self Mutilation</td>
      <td>Hypocondria</td>
    </tr>
    <tr>
      <td>Cognitive</td>
      <td>Memory</td>
      <td> Understanding</td>
      <td> Explanitive</td>
      <td> Oblivious</td>
      <td> Impulsive</td>
      <td>Delirium</td>
    </tr>
    <tr>
      <td>Bizzare Dillusions</td>
      <td>Regarding the world</td>
      <td>Regarding enemies</td>
      <td>Regarding people</td>
      <td>Regarding animals</td>
      <td>Regarding  self</td>
      <td>Regarding information</td>
    </tr>
    <tr>
      <td>Psychosis</td>
      <td>Cataonia</td>
      <td>Depersonalization</td>
      <td>Schitophrenia</td>
      <td>Manic Depression</td>
      <td>Paranoid Schitzophrenia</td>
      <td>Thought Disorder</td>
    </tr>
    </table></p>
    
    ${h3('Mental Healing')}
    
    <p>The Mind Damage Limit is replenished by one dot for every six hours of sleep the character gets.
    Hysterias only last a finite amount of time, once the period that they are active for finishes they stop.
    Post Traumatic Stress traits do not go away.  They are now a permenant feature of the character in the same way as a
    Body Critical. Instead the character will need to be treated to remove them.</p>
