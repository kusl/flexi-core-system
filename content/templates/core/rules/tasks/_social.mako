<%page args="h2, h3"/>


${h2('Social Tasks')}
      
    <p>Social interaction between NPCs and PCs (as well as between PCs) is a well discussed issue in the
    role playing community.  First there are those who insist that the outcomes of all social interaction is determined
    by roleplaying.  Secondly there are those who prefer that the outcome of social interaction is determined by dice mechanics.
    The problem is that both arguments are equally valid.  Roleplaying is preferred because these are Roleplaying Games
    but one of the points of roleplaying is that it is a form of escapism.  Players should not be penalised if they want to
    play a social character but are themselves unskilled in social interaction.  We've developed our social game mechanics to
    support player and GM alike but they are optional if the group chooses them to be.</p>
    
    <p>Firstly these mechanics are not intended to be used every time a character interacts with an NPC.  Humdrum conversations
    like ordering a meal or telling a secretary to get off their lazy arse and get back to work are best roleplayed instead of
    wasting time with dice mechanics. Only aggressive, manipulative, combatative social interactions require these mechanics, situations such as
    interrogations, negotiations and dates. In such cases there is clearly an initiator, the character initiating the interaction,
    and a defender, the character the initiator is attempting to manipulate.</p>
    
    ${h3('Type of Interaction')}
    
    <p>For the Flexi System there are seven types of social interactions which should require mechanics to resolve.</p>
    
    <ul>
        <li>Deride - When a PC wishes to goad an NPC into a foolish course of action.</li>
        <li>Enquire - When a PC wishes to get information out of an NPC.</li>
        <li>Ingratiate - When a PC wishes to change an NPCs opinion of the PC.</li>
        <li>Intimidate - When a PC wishes to force an NPC to act through force.</li>
        <li>Misdirect - When a PC wishes to make an NPC believe in a falsehood.</li>
        <li>Negotiate - When a PC wishes to bargain with an NPC.</li>
        <li>Pacify - When a PC wishes to calm the emotions of an NPC.</li>
    </ul>
    
    <p>The character who initiates the test rolls a social attribute in an opposed test against a social attribute roll of the other
    character. The three social attributes are Attractiveness, Influence and Empathy.  Like any other test the attribute used is dependent
    upon the situation.  For example if a character wished to seduce an NPC of the opposite sex they could use any of those three attributes.
    Which one they do use is determined by the method they use to attempt the seduction.  Lending a sympathetic ear would use Empathy,
    flirting would use Influence and wearing suggestive clothing would use Attractiveness.  The defender also uses their choice of social
    attribute to defend aginst or divert the attention of the initiator. To win the test the initiator must achieve an overall higher result
    than the result of the defending character.</P>   

    ${h3('Backgrounds')}

    <p>If a character has a background which can aid in a social interaction then it can be used to influence the roll as normal.
    A few backgrounds, such as Diplomat or Trader, rely very heavily on social interaction tests but most are situational.
    For example:-</p>
    
    <p><i>Thaddeus and Alexander walk into a bar looking for information.  Thaddeus tries intimidating the regulars using his
    Trucker background whereas Alexander tries seducing the bar girl (Ingratiation) with his Talent Scout background.  Whilst both use
    different types of interaction both backgrounds are applicable in their own situations.</i></p>
    
    ${h3('Modifiers')}
    
    <p>Of course in real life social interaction isn't just a matter of one person making a statement and the other
    considering it rationally. There are so many factors which have to be taken into account that it can become stupidly
    complicated to predict.  Instead the Flexi system attempts to condense the majority of these factors into several simple modifiers.</P>
    
    <p>To apply modifiers the GM must first decide upon which modifier categories are the most relevant from the following list.</p>

    <ul>
        <li>Emotion - How the defending character is feeling at that specific point in time.</li>
        <li>Tone - The manner in which the instigating character has made his statement.</li>
        <li>Atmosphere - The tone of the location.</li>
        <li>Prejudice - The social biases of the defending character.</li>
        <li>Relationship - The nature of the link between two characters if there is one.</li>
        <li>Gain - The degree to which the defender will profit from the interaction.</li>
    </ul>
    
    <P>The modifier categories have a situation range from the most positive, to the most negative possible circumstances for the initiator.
    Every stage in the range is associated with a different die type.  When a modifier is applied to a social interaction roll one die,
    of that type, is added to the appropriate characters roll.  If a modifier is positive the die is added to
    the initiators roll and negative modifers are added to the defenders roll.</P>
    
    <P><img src="${static_url}Socialtestmods.png"></P>

    <p>In our opinion it is unlikely that many situations will make use of more than one or two modifiers.  Regardless, of how
    many modifiers are applicable, the total modifier cannot be higher than three dice.  Additionally those dice are not affected by,
    and cannot affect, background dice or experience.</p>
    
    
    <p>The modifier categories and stages are typical for most social situations but are not typical for all of them.
    In special cases the GM may adjust the
    modifiers according to the situation.  So say, for example, the character is a knight speaking aggressively to a peasant in a feudal
    setting. Normally that would incur a negative modifier. However a knight is of a much higher social standing than a peasant.
    Realistically he could talk any way he likes to the pleb, and the poor sod would still have to hop to it even if he did resent the tone. So
    in this case the GM could decide to reduce or wave the penalty entirely.</P>
    
    ${h3('Outcome of Result')}
    
    <p>The outcome of a social interaction test is not as clear cut as a normal task resolution roll.  Success is augmented by addendum points,
    which are determined by the difference between the target number and the result of the roll.  Failure gives the defender a chance to make
    their own roll, if they wish, putting the initiator on the defensive.</p>
    
    ${h3('Failure')}
    
    <p>If the initiator fails to achieve a result higher than the defenders result the social
    interaction test will fail.  The defender then becomes the initiator and has a chance to make their own social interaction test
    with the previous initiator now defending. If they then fail their own test the previous the first initiator has one last chance
    to attempt the test again.  If they fail again then they cannot attempt the test again with the same NPC.</p>
    
    ${h3('Success')}
    
    <p>If the initiators result is higher than the defenders result then the social interaction test
    has succeeded.  Most tests end there but social interaction tests also make use of a mechanic called Gains.  Gains are acquired
    at incremental numeric steps over the defenders result.  The larger the difference between the initiator and defender the more Gains
    are awarded. The exact numeric value of the increments depends on the relationship between initiator and defender.  For allies the
    first gain occurs at ten over the result and every four thereafter.  For enemies the first gain accurs at fourteen and every eight
    thereafter.  The table below shows the gain increments for the different affiliations.</p>

    <p><table class="full-table">
        <tr>
            <th>Addendum</th>
            <th>Ally</th>
            <th>Freind</th>
            <th>Neutral</th>
            <th>Hostile</th>
            <th>Enemy</th>
        </tr>
        <tr>
            <td>1</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
        </tr>
        <tr>
            <td>2</td><td>14</td><td>16</td><td>18</td><td>20</td><td>22</td>
        </tr>
        <tr>
            <td>3</td><td>18</td><td>21</td><td>24</td><td>27</td><td>30</td>
        </tr>
        <tr>
            <td>4</td><td>22</td><td>26</td><td>30</td><td>34</td><td>38</td>
        </tr>
        <tr>
            <td>5</td><td>26</td><td>31</td><td>36</td><td>41</td><td>46</td>
        </tr>
    </table></p>
    
    <p>The more gains acquired from a succesful test the better the outcome of the success.  The table below should show the outcomes for a
    regular success, and the additional results from gains, for each type of social interaction.</p>
    
    <p>
        <div id="tabs1">
            <ul>
                <li><a href="#tabs-1">Deride</a></li>
                <li><a href="#tabs-2">Enquire</a></li>
                <li><a href="#tabs-3">Ingratiate</a></li>
                <li><a href="#tabs-4">Intimidate</a></li>
                <li><a href="#tabs-5">Misdirect</a></li>
                <li><a href="#tabs-6">Negotiate</a></li>
                <li><a href="#tabs-7">Pacify</a></li>
                <li><a href="#tabs-8">Presence</a></li>
                <li><a href="#tabs-9">Empathy</a></li>
            </ul>
            <div id="tabs-1">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Type</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Causes the insulted victim to seek satisfaction from the attacker at the earliest, sensible, oppurtunity.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Causes the victim to seek vengeance immediately if they believe they can get away with it. If this is not the case they will actively
                      seek vengeance as soon as they can.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Causes the victim to actively seek vengeance immediately but will not put himself in harms way to do so.  If this is the case they will
                      actively seek a chance for vengeance as soon as possible.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Causes the victim to seek vengeance immediately, eschewing personal safety short of an immediate threat to their life.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Causes the humiliated victim to lose all sense of personal safety and seek vengeance on the spot by the most direct method possible.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-2">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Will give a few more specifics that cover the scope of the initiators question.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Gives as much relevent detail to the enquiry that they possibly know.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Gives the player an answer to a question they haven't even asked yet.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Gives information that could endanger himself.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Will tell the initiator everything they know even if it endangers his and his loved ones lives.</td>
                   </tr>
                </table>  
            </div>
            <div id="tabs-3">
                <table class="full-table">
                    <tr>
                       <th>Gain Cost</th>
                       <th>Temporary Ally Points</th>
                    </tr>
                    <tr>
                       <td>1 Gain</td>
                       <td>1</td>
                    </tr>
                    <tr>
                       <td>3 Gains</td>
                       <td>2</td>
                    </tr>
                    <tr>
                       <td>5 Gains</td>
                       <td>3</td>
                    </tr>
                    <tr>
                       <td>10 Gains</td>
                       <td>4</td>
                    </tr>
                    <tr>
                       <td>15 Gains</td>
                       <td>5</td>
                    </tr>
                    <tr>
                       <td>20 Gains</td>
                       <td>6</td>
                    </tr>
                 </table> 
            </div>
            <div id="tabs-4">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Defender will perform any task he considers reasonable for the initiator.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Defender will consider performing an unreasonable task as long as nobody ever finds out about it.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>The defender will do what he can, Within reason, to stay on the initiators good side.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>The defender will completely humiliate himself if the initiator asks.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>The defender is so terrified of the initiator that they would kill themselves and their family to spare them from the terrible wrath of
                      the initiator.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-5">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Type</th>
                      <th>Description</th>
                      <th>Example Lie</th>
                      <th>Example Reasoning</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Plausible Lie</td>
                      <td>A lie which is within the bounds of reason.</td>
                      <td>I had to wait for my wife to go to sleep.</td>
                      <td>His wife is a bitch.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Tenuous Lie</td>
                      <td>Still sounds reasonable but is too easy to dismiss or discover.</td>
                      <td>There were roadworks</td>
                      <td>I don't remember any roadworks yesterday.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Farfetched Lie</td>
                      <td>A lie which just does not ring true with the defenders knowledge</td>
                      <td>The police had set up a road block</td>
                      <td>I didn't hear anything over the radio except the usual.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Falsehood</td>
                      <td>Could not possibly be true.</td>
                      <td>Gas main explosion on 49th.</td>
                      <td>I was just there.  Shoot this lying piece of shit.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Complete Falsehood</td>
                      <td>Impossible by simple reasoning</td>
                      <td>The Sun just exploded.</td>
                      <td>But It's right there.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-6">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Type</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Plausible Trade</td>
                      <td>They're both worth the same value, it's practically a swap.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Disadvantageous Trade</td>
                      <td>Look I know it's a little beat up but it still runs perfectly.</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Promise</td>
                      <td>If you give me the ring I promise I'll pay you on Thursday.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Inflationary Trade</td>
                      <td>I'll give you it but you're going to pay me it's value twice over.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Unfair Trade</td>
                      <td>You keep your crown, you keep your Kingdom but your army marches under my banner.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Cruel Trade</td>
                      <td>Ninety percent for me and ten percent for you. How does that sound?</td>
                   </tr>
                   <tr>
                      <td>20 Gains</td>
                      <td>Ridiculous Trade</td>
                      <td>You give me your kingdom and I will give you this pebble.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-7">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Calm an upset man</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Calm an angry man</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Calm an  enraged man</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Calm a man who has completely lost his reason</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Will happily forgive the longest, bloodiest feud.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-8">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Draw the attention of an entire room for a few moments at least</td>
                   </tr>
                   <tr>
                      <td>2 Gains</td>
                      <td>Keep the attention of an entire room for an entire speech</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Draw the attention of a mob for a few moments at least.</td>
                   </tr>
                   <tr>
                      <td>4 Gains</td>
                      <td>Keep the attention of a mob for an entire speech</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Draw the attention of a huge crowd of people for at least a few moments</td>
                   </tr>
                   <tr>
                      <td>7 Gains</td>
                      <td>Keep the attention of a huge crowd of people for an entire speech</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Draw the attention of everyone who can, practically, see you for a moments at least</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Draw the attention of everyone who can, practically, see you and keep it for as long as you want.</td>
                   </tr>
                </table>
            </div>
            <div id="tabs-9">
                <table class="full-table">
                   <tr>
                      <th>Gain Cost</th>
                      <th>Description</th>
                   </tr>
                   <tr>
                      <td>1 Gain</td>
                      <td>Guess a persons immediate emotions of a person you are conversing with</td>
                   </tr>
                   <tr>
                      <td>2 Gains</td>
                      <td>Guessing the immediate emotions and motivation of a person you are conversing with</td>
                   </tr>
                   <tr>
                      <td>3 Gains</td>
                      <td>Guess the emotions and motivations of two people conversing together</td>
                   </tr>
                   <tr>
                      <td>4 Gains</td>
                      <td>Guessing the immediate emotions of a person from body language alone.</td>
                   </tr>
                   <tr>
                      <td>5 Gains</td>
                      <td>Guessing a persons long term motivations from a conversation.</td>
                   </tr>
                   <tr>
                      <td>10 Gains</td>
                      <td>Guessing the depth of a persons long term motivations from their body language alone.</td>
                   </tr>
                   <tr>
                      <td>12 Gains</td>
                      <td>Guessing a persons long term motivations just from a short biography, or piece of artwork they made.</td>
                   </tr>
                   <tr>
                      <td>15 Gains</td>
                      <td>Understanding a persons motivations so absolutely that you can predict exactly how they react in any given situation just from a vague
                      description of them.</td>
                   </tr>
                </table>
            </div>
        </div>
    </p>

    
    ${h3('Success by NPCs')}
    
    <p>Telling a player that an NPC has succeeded on a social interaction roll and that their character now likes the NPC is akin to telling
    Van Helsing that Dracula is his chum. The player is still going to hate the NPC but now they hate them even more. Now I would dearly
    love to tell you that we have a solution to this but we don't.  The player is just going to have suck it up and roleplay.</p>
    
