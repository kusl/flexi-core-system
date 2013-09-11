<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Tropes</%def>

<%def name="body()">
    
    <h3>Tropes</h3>
    
    <P>Tropes are effects, like abilities, which change the course of the game when they are activated.
    Unlike abilities tropes are specifically tied to the Intuition stat.  They partially represent the
    luck, or instinct, of the character.  All characters receive a base number of slots equal to three.
    More slots are received by characters with INTU booster levels.</P>
    
    <p>Players can fill these slots with any number of tropes as long as the total slot costs of the tropes
    does not exceed the players number of trope slots.  Players can change which tropes fill these slots
    at the beginning of every session, as long as the previous session did not end halfway through combat.
    In this case they can only swap their tropes when the combat has been completed.</p>
    
    <p>When a trope is activated the player makes an INTU roll, no background dice are applicable, against a
    target number determined by the scaling of the trope.  The higher the improbability of an occurence the
    higher the TGN of the roll. Players must decide how high they want to scale the trope before they make
    the roll. If the roll fails then a backfire occurs against the character.</p>
    
    <table class="full-table">
      <tr>
         <th>Slot Cost</th>
         <th>Name</th>
         <th>Discription</th>
         <th>Scaling</th>
         <th>Backfire Effect</th>
      </tr>
      <tr>
         <td>1</td>
         <td>Incoming!</td>
         <td>Character nimble dodges a projectile attack</td>
         <td>Before dodge has been rolled character can roll intuition to get bonus die to dodge!
         For every 6 points of TGN the character can add 1 bonus dice to their dodge or parry whilst
         in combat! So TGN 6 = 1 Bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to whomever they are defending
         froms Projectile attack!</td>
      </tr>
      <tr>
         <td>1</td>
         <td>That was close!</td>
         <td>Character nimble dodges a Melee attack</td>
         <td>Before Parry has been rolled character can roll intuition to get bonus die to Parry! For
         every 6 points of TGN the character can add 1 bonus dice to their dodge or parry whilst in
         combat! So TGN 6 = 1 Bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to whomever they are defending
         froms Melee attack!</td>
      </tr>
      <tr>
         <td>1</td>
         <td></td>
         <td>Character resists a supernatural attack!</td>
         <td>Before ESD has been rolled character can roll intuition to get bonus die to ESD! For
         every 6 points of TGN the character can add 1 bonus dice to their dodge or parry whilst in
         combat! So TGN 6 = 1 Bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to whomever they are defending
         froms ESP attack!</td>
      </tr>
      <tr>
         <td>1</td>
         <td>Eat this!</td>
         <td>Character delivers a sure fire projectile attack!</td>
         <td>Before rolling POP the character may roll intuitiont to get a bonus die to their attack!
         For every 6 points fo TGN the character can dd 1 bonus die to their respective roll. So TGN
         6 = 1 bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to their foes dodge!</td>
      </tr>
      <tr>
         <td>1</td>
         <td>Take This!</td>
         <td>Character delivers an unstoppable blow!</td>
         <td>Before rolling MEP the character may roll intuitiont to get a bonus die to their attack!
         For every 6 points fo TGN the character can dd 1 bonus die to their respective roll. So TGN
         6 = 1 bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to their foes  parry!</td>
      </tr>
      <tr>
         <td>1</td>
         <td></td>
         <td>Characters supernatural powers home in perfectly!</td>
         <td>Before rolling ESP the character may roll intuitiont to get a bonus die to their attack!
         For every 6 points fo TGN the character can dd 1 bonus die to their respective roll. So
         TGN 6 = 1 bonus die and TGN 36 = 6 bonus die!</td>
         <td>Should the character fail the dice are instead awarded to their foes  ESD!</td>
      </tr>
      <tr>
         <td>1</td>
         <td></td>
         <td>Character resists surprise in combat allowing himself to not be caught of guard!</td>
         <td>When in a surprise situation character can roll intuition before his perception roll to
         grant himself a bonus and avoid being surprised! So for TGN 6 the player can add 6 to his
         perception roll and for TGN 36 the player can add 36 to his perception roll!</td>
         <td>Should the character fail then the result is negated from his perception roll increasing
         the chance of failure and the possibility of a critical failure.</td>
      </tr>
      <tr>
         <td>1</td>
         <td></td>
         <td>Character miraculously defends himself even though he is prone!</td>
         <td>Character may use his full Intuition as a substitute for half parry and dodge when in
         a prone state! His intuition acts as if they were the respective stat!</td>
         <td>Should the character fail they are automatically hit and take damage.</td>
      </tr>
      <tr>
         <td>3</td>
         <td>Let me Live!</td>
         <td>Character ignores a critical wound with a miraculous dodge!</td>
         <td>For every 6 points of target number the character can ignore 1 crit they just received
         from an attack! So TGN 6 = 1 crit ignored! And TGN 36 = 6 crits ignored!</td>
         <td>If the Character fails his roll he doubles the ammount of crits he would have taken
         if he had failed!</td>
      </tr>
      <tr>
         <td>3</td>
         <td>Machine Empathy!</td>
         <td>Character can punch or hit any tool or machine (Not vehicles) in the vauge hopes of
         getting it working again.</td>
         <td>Character uses his Intuition stat as if it were a background roll to repair whatever
         device he is hitting, should he succeed the device works as if it has been repaired by
         someone with the background skill appropriote until the character stops using it.</td>
         <td>If the character fails the device suffers critical damage and is considered destroyed
         and beyond salvage.</td>
      </tr>
      <tr>
         <td>3</td>
         <td>Vehicle Empathy!</td>
         <td>Character can punch or hit any vehicle in the vauge hopes of getting it working again.</td>
         <td>Character uses his Intuition stat as if it were a background roll to repair
         whatever vehicle he is hitting/kicking, should he succeed the device works as if
         it has been repaired by someone with the background skill appropriote until the
         character stops using it.</td>
         <td>If the character fails the vehicle suffers critical damage and is considered
         destroyed and beyond salvage.</td>
      </tr>
      <tr>
         <td>3</td>
         <td>I know the way!</td>
         <td>Character can attempt to find a path to wherever they want to go thanks to the
         power of sheer dumb luck.</td>
         <td>TGN 6 - A vague idea of the direction within a 180 degree arch. TGN 12 - A vague
         idea of which cardinal direction it is in. TGN 18 - An idea of which cardinal direction
         it is. TGN 24 - A vague logical path to the destination. TGN 30 - An exact logical
         path to the destination. TGN 36 - Exactly where to go and the safest possible route
         bypassing any hostiles or problems.</td>
         <td>Leads the character on a similiar route to something utterly dangerous or somewhere
         they really don't want to be.</td>
      </tr>
      <tr>
         <td>3</td>
         <td>You know me!</td>
         <td>By some vauge chance the an NPC knows the character due to hearing about them in
         some obscure way.</td>
         <td>Character may temporarily increase his fame/Imfamy by a number of points equal to
         the amount of TGN. So TGN 6 = +1 fame/imfamy bonus and TGN 36 = +6 famy/infamy.</td>
         <td>Should the character fail their fame/infamy is reduced by the bonus number for 1
         day game time.</td>
      </tr>
      <tr>
         <td>3</td>
         <td>Come on man!</td>
         <td>An ally feels generous and decided to go above and beyond the call of duty for the
         character.</td>
         <td>Characters Ally points with that NPC are increasesed an ammount equal to the TGN they
         choose for one task. So TGN 6 grainsts 1 bonus ally point to an ally whilst TGN 36 grants
         6 bonus points.</td>
         <td></td>
      </tr>
      <tr>
         <td>5</td>
         <td>I can do this!</td>
         <td>Character adds a bonus to any background task he has just failed in order to pass
         the TGN of the test! </td>
         <td>For every 6 points of target number the character can add as a bonus to the result
         of his previous background roll. So for TGN 6 the player can add 6 to his previous roll
         and for TGN 36 the player can add 36 to his previous roll!</td>
         <td>Should the pllayer fail the roll the roll is instead negated from the previous roll
         making it more of a failure than it was!</td>
      </tr>
      <tr>
         <td>5</td>
         <td>Lucky Break!</td>
         <td>Character can attempt to find an item which would aid them in a situation by scavaging
         in the surrounding area.</td>
         <td>"In a desperate situation the character can attempt to search for an item to aid them.
         For every 6 points of TNG the character finds a more useful or impressive object/tool to
         aid them in the situation they are in. For example, character is trapped in a snowed in
         cabin, he might find... TGN 6 - A Lighter that has been fully fueled. TGN 12 - A fully
         stocked medical kit. TGN 18 - Flaregun and 6 flares. TGN 24 - A survival book and three small animal traps.
         TGN 30 - A months worth of dried food and a hunting knife. TGN 36 - A hidden dried food
         store with enough food to last till spring and a well maintained hunting rifle.</td>
         <td>Should the player fail the intuition roll they accidently loose or break something of
         similiar value that they already had.</td>
      </tr>
      <tr>
         <td>5</td>
         <td>Keep it together!</td>
         <td>Character resists fear simply by ignoring whats around him and relying on his
         actions/impulses to get through the situation.</td>
         <td>For Every 6 points of TNG the character may have 1 level of attribute boost resolve
         to resist a single fear rating resolve roll. So TNG 6 = AB resolve +1 whilst TNG 36 = AB
         resolve +6</td>
         <td>Should the player fail his roll the bonus instead takes away from his resolve die at
         a rate of 1 for 1 to a minimum of zero and automatic failure.</td>
      </tr>
      <tr>
         <td>5</td>
         <td>I don't wanna die!</td>
         <td>Characters wounds stabilize due to simple luck. There heart might slow down due to
         the cold or their bleeding might help prevent swelling; its a lucky stabilization.</td>
         <td>If the character has been wounded he may roll his intuition to stabilize as if having
         surgury to stabilize the wound. The TGN for each type of wound are TGN 6 - MEDIUM WOUND
         TGN 12 - SEVERELY WOUNDED TGN 18 - SERIOUSLY WOUNDED TGN 24 - DEADLY WOUND TGN 30 - MORTAL
         WOUND TGN 36 - DEAD (See stabilization rules for more details)</td>
         <td>Should the character fail his roll it is automatically upgraded to the next level of
         severity.</td>
      </tr>
      <tr>
         <td>10</td>
         <td>I like the way you die boy!</td>
         <td>Character performs a shot/blow that devestates their opponent.</td>
         <td>If a characters attack successfully hits and causes a critical the character can roll
         intuition to multiply ammount given. Character multiplies critical to their damage per 6
         TNG points! So a TGN 6 = 2 x crits added! And TGN 36 = X7 crits added!</td>
         <td>Should the character fail the Criticals are taken away from the established criticals
         making the attack do even less damage or possible none!</td>
      </tr>
      <tr>
         <td>10</td>
         <td>Not today!</td>
         <td>Character miraculously survives death and lives to fight another day! You saw them
         die? BS! This is what actually happened (Lengthy explanation made by the GM) so you see,
         he's actually alive and well!</td>
         <td>Even if the character has been killed and is very dead they may use this trope,
         the survival is miraculous and can be considered either a logical miracle or a giant
         misunderstanding.</td>
         <td>Should the player fail the roll then the character can be described as super dead.</td>
      </tr>
   </table>
</%def>
