<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Attributes</%def>

<%def name="body()">
   <h3>Attributes</h3>

      <p>The attributes are a series of values that represent the base
        characteristics of a character. The value itself represents the number
        of six sided dice, that a player can roll, when performing an action.
        Attributes are the base of a character, they will determine all of a
        characters abilities, so it is essential that a player chooses which
        attributes he wishes to invest in wisely. In total there are fourteen
        attributes split equally between physical characteristics and mental
        characteristics.</p>
      
    <p><h4>Strength (STRG)</h4>
    Strength is a representation of a characters muscular power. It's important for characters that rely on melee fighting as it has an
    impact on melee damage. It also affects a characters carrying capacity. Characters with a low strength are physically weak and if it
    was to drop to zero than a character would be too feeble to even stand. Situations where the GM would use strength as the base for a
    roll include:-<br>
        <ul>
            <li>Lifting, or pushing, a heavy object.</li>
            <li>Kicking open a barred door.</li>
            <li>Bending metal bars.</li>
        </ul></p>
    
    <p>The STRG of a character determines the base melee damage of a character and can be determined from the table found here
    <a href="${a('/core/rules/apmelee')}">(Appendix: Melee Damage Tables)</a>.  The Target Numbers for basic physical tasks that
    rely on STRG can be found here <a href="${a('/core/rules/apstrg')}">(Appendix: STRG Tables)</a>.</p>
        
    <p><h4>Coordination (CORD)</h4>
    Coordination describes a characters quality of balance, movement and manipulation. It contributes greatly towards the combat
    proficiencies and so is a must for characters who are geared for combat. Situations where the GM would use coordination as the base
     for a roll include:-<br>
        <ul>
            <li>Climbing of ropes or walls.</li>
            <li>Acrobatic stunts or juggling.</li>
            <li>Snatching a wallet from a pocket.</li>
        </ul></p>
        
    <p><h4>Reflex (REFX)</h4>
    Reflex is a measure of a characters unthinking response time. It is primarily used to determine the number of combat actions a character
    can have, but also contributes to other secondary stats.  Reflex is used in those situations where a character doesn't have a chance to
    think.  Examples of situations where a GM would call for reflex to be used are:-<br>
        <ul>
            <li>Catching a throwing dagger out of the air.</li>
            <li>Grabbing hold of a tree root whilst falling off a cliff.</li>
            <li>Reacting to the flash of a muzzle before the bullet hits.</li>
        </ul></p>
        
    <p><h4>Stamina (STAM)</h4>
    Stamina is a representation of a characters power to endure fatigue. In the game mechanics it is primarily used to resist the effects of
    wounds and tiredness.  It is an important attribute for any character who is meant to be physically fit and built with physical activity
    in mind.  Situations where the GM would call upon a player to use a characters stamina for a roll include:-<br>
        <ul>
            <li>Running a marathon.</li>
            <li>Staying awake for an all night stakeout.</li>
            <li>Keeping ahead of a rolling boulder.</li>
        </ul></p>
        
    <p><h4>Constitution (CONS)</h4>
        Constitution is a representation of a characters physical hardiness and health.
        It is essential, not only, for resisting pathogens but
        also in determining the effects of drugs and toxins. Importantly it also helps
        determine the amount of damage a character can take and also
        how long it takes for a character to recover from any damage taken.  Situations where
        constitution can be called upon are:-<br>
        <ul>
            <li>Wading through a swamp.</li>
            <li>Drinking competitions.</li>
            <li>Being bitten by an infected animal.</li>
        </ul></p>
        
    <p><h4>Perception (PERC)</h4>
    Perception is the characters ability to consciously register a sensory stimulus and to intuitively recognize it. Basically it is the
    characters ability to perceive and recognize something that is affecting one of their five senses, taste, touch, smell, sight and
    hearing. It is a very important attribute for characters who rely on their senses, such as investigators, especially for recognition.
    Situations where Perception would be called upon are:-<br>
        <ul>
            <li>Recognizing the specific fragrance left behind at a murder scene.</li>
            <li>Spotting someone you know in a crowd of people.</li>
            <li>Hearing a gunshot from several rooms away.</li>
        </ul></p>
        
    <p><h4>Presence (PRES)</h4>
    Presence is a measure of a characters ability to captivate the attention of others through their appearance and mannerisms.
    A character with high presence isn't necessarily charming but can make people notice them.  Most people perform this by
    being attractive but a few can do so with just their personal charisma. Situations where presence would be called upon would be:-<br>
        <ul>
            <li>Winning a beauty pageant.</li>
            <li>Forcing an entire room into silence merely by entering it.</li>
            <li>Distracting someones attention whilst you place a tracker on them.</li>
        </ul></p>
        
    <p><h4>Judgement (JUDG)</h4>
    Judgement is a representation of a characters ability to plan outcomes and assess them. It is primarily used in situations where a
    character would use the information they have to make a decision. Situations where judgement could be used are:-<br>
        <ul>
            <li>Creating a tactical plan for an army.</li>
            <li>Assessing the risk of lighting a cigarette in a dynamite factory.</li>
            <li>Deciding the best method for setting explosives on a bridge</li>
        </ul></p>
        
    <p><h4>Ingenuity (INGU)</h4>
    Ingenuity describes the characters aptitude for accessing their imagination. Any character who needs to be creative or imaginative such
    as bards or illusionists will need a high Ingenuity. Situations where ingenuity would be called upon would be:-<br>
        <ul>
            <li>Trying to craft a truly horrifying illusion spell.</li>
            <li>Attempting to synthesize a new drug.</li>
            <li>Creating an ego massaging poem for a despot.</li>
        </ul></p>
        
    <p><h4>Comprehension (COMP)</h4>
    Comprehension is a measure of a characters ability to assimilate and memorize information. When a character needs to understand
    the information being presented to them they would use comprehension, thus it is a very important stat for academic characters.  Situations
    where comprehension would be used are:-<br>
        <ul>
            <li>Researching information on the internet.</li>
            <li>Trying to understand how a magical incantation works.</li>
            <li>Listening to a lecture and understanding the point.</li>
        </ul></p>
        
    <p><h4>Intuition (INTU)</h4>
    Intuition is a measure of a characters aptitude at recognizing intuitive impulses.  Spiritual characters such as psychics or magic
    users are probably going to rely heavily on intuition.  Any ability which does not rely on logic or reasoning, such as fortune telling,
    will probably rely on intuition instead. Situations where intuition would be called upon would be:-<br>
        <ul>
            <li>Reading a set of Tarot cards.</li>
            <li>Realizing you're walking into an ambush.</li>
            <li>Attempting to understand motivations through zen meditation.</li>
        </ul></p>
        
    <p><h4>Resolve (RESO)</h4>
    Resolve is the characters capacity to control impulses and actions. It is essential for resisting the effects of fear and is called
    upon when a task isn't difficult but will take a long, repetitive time to perform.  Situations where resolve would be used are:-<br>
        <ul>
            <li>Spending an entire night writing a program without kicking the computers screen in.</li>
            <li>Letting the pain of torture flow through you and allowing only yourself to remain.</li>
            <li>Witnessing the horror of what really lives at the centre of the galaxy.</li>
        </ul></p>
        
    <p><h4>Empathy (EMPH)</h4>
        Empathy is a representation of a characters ability to understand the thoughts and feelings of others.  It is an essential
        attribute for social characters who want to understand the motivations of NPCs and PCs. Situations where empathy would
        be called upon are:-<br>
        <ul>
            <li>Evaluating a mans speech to tell if he is lying.</li>
            <li>Understanding why a woman is attempting to seduce a corporate executive.</li>
            <li>Deducing why a serial killer is leaving BBQ sauce on victims.</li>
        </ul></p>
        
    <p><h4>Influence (INFU)</h4>
        Influence is a measure of the characters power to manipulate others. When the character wants to get an npc to do something for them,
        influence is the attribute they would need to roll to do so. This makes it extremely important for any character that wishes to lead or
        act as a negotiator for the group. Situations where influence could be called upon would be:-</p>
        <ul>
            <li>Convincing a police officer to arrest someone on a petty charge.</li>
            <li>Trying to get more information from an unhelpful snitch.</li>
            <li>Writing a note to your enemy that will provoke them.</li>
        </ul></p>
      
      <h3>Attribute values</h3>
      
      <p>For a regular character each attribute will have a value from one
        to six. Not even an exceptional human can achieve a value above six,
        this is the limiting value reserved for those who have reached the peak
        of human ability. Geniuses could reach an intelligence of six and
        similarly Olympic weightlifters could reach a strength of six. Only
        augmented or supernatural humans and non-humans can reach attribute
        values of seven or above. With that in mind, game characters are not
        regular humans and could easily have several attributes at six. They are
        exceptional individuals, which is why they are running around on
        adventures rather than working in an office.</P>
      
        <p>Attributes can have a value of zero if the appropriate trait is bought.
        However having zero is a severe disability and should be played as such.
        Gamemasters should heavily penalize players who refuse to admit the
        limits of a zero level attribute. For example a zero level strength
        means that the character can barely lift themselves let alone their
        equipment. A level zero concentration would indicate that the character
        can barely follow a sentence let alone a conversation. If a player tries
        to use attractiveness or charisma as a dump stat then remind them that
        they would be considered to be so ugly or socially inept that people
        believe they are abnormal. Such a character could quite easily haunt an
        opera house or belfry and would be plagued by angry mobs of armed
        yokels.</p>
        
    <H3>Attribute Overlap</H3>
    
    <p>There are going to be situations where the correct attribute to use is going
    to be ambiguous and opinions are going to get divided.  Say a situation arises
    where an argument could be made for using CORD or REFX to make a roll. If a
    characters CORD and REFX are equal then there is no argument but if one is higher
    then the other it can make a big difference.  In these situations the GM gets
    the final say on which attribute is used and not the players.  The GM is there
    to act as an arbiter of the system, he has created the story the players are getting
    involved in, and thus it is his opinion that is final.  Players you may disagree
    but it's not your call, you are not running the game the GM is.</P>
    
    <p>If you're a game master in this situation then I advise you to listen to your
    players and make your decision based on two pieces of advice.  First of all go
    with your gut instinct on which one seems correct.  It may be wrong in hindsight
    but a half hour argument that goes round and round whilst you try making a
    decision is not fun for the players not involved in the disagreement.  Secondly
    don't go with the players lowest attribute just to get back at them.  We've all
    done it but it doesn't make you a stronger GM it just makes you look spiteful in
    the eyes of your players. If you still can't make a decsion there are always the
    forums.</p>
    
      
</%def>
