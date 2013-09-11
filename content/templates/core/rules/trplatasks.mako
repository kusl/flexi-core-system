<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Planning</%def>

<%def name="body()">

    <h3>Planning</h3>
      
    <p>When players want to formulate a plan, to achieve some task or goal, it creates a number of
    problems which most game systems do not attempt to circumvent.  The first problem is the nature
    of both player and character.  Where a player may not be very adept at formulating plans his
    character, due to his statistics, could be.  If this is the case then the GM should enable the
    player to use his character for formulating a plan.  This gives rise to the next problem, how
    much help does a GM give before the challenge he has set becomes irrelevent and ceases to be a
    challenge?  If the player is unaware of setting information which his character would be aware
    of, and the GM knows so, should the GM intervene to ensure that the player has all the facts at
    his disposal?  Really the question is simple, how much information can a GM supply his players
    before the plan becomes an exercise in linear storytelling?</p>
    
    <p>We have hoped to mitigate this situation by implementing the following planning mechanics which
    GMs and players can use to try and keep things fair on both sides.  Planning relies on the Judgement
    attribute and its booster.  When the players are coming up with a plan they may ask the GM if they
    can roll their Judgement to determine the best course of events and follow the following mechanics.</p>
    
    <h4>Decide Intent</h4>
    
    <P>The players need to be able to describe the intent of the plan, or its goal.  Without this in mind
    the GM will be unable to formulate the steps required for the plan to be acheived.  The players need
    to understand that the higher their goal the more steps that are likely to be needed.  This won't affect
    the target number but it will make it less likely that the GM will inform them of all the information
    they need.  With the intent in mind the GM needs to think about the number of steps needed to achieve
    the goal. The steps don't need to be specific but just general stages that the players will have
    to achieve or overcome in order to reach their goal.  The more steps needed, or the loftier the goal,
    the higher the target number.</P>
    
    <h4>Make the Roll</h4>
    
    <P>Only one player can make the roll using his JUDG, along with any applicable background dice or
    experience that he has. After it's been made the other players can't turn round and insist on performing
    their own JUDG rolls to formulate a different plan.  It's not the GM's responsibility to keep throwing
    out plans for the players to discuss.  The first plan he gives should be the one he thinks is most
    reasonable to suceed, if the players want another then they will have to come up with it on their own.
    As per the helping rules, found at <a href="${a('/core/rules/trtaskcons')}">(Tasks: Changing Tasks)</a>,
    players whose characters have backgrounds that can aid in the planning may give the player making the
    roll one additional die.  This die is treated as an attribute die, its value is added to the total
    value and can be swapped for a higher available background die.</P>
    
    <p>The total value of the roll determines the number of Plan Points that the players recieve.  For every
    multiple of six in the result of the roll the players recieve two Plan Points on a base of three, which
    they recieve regardless.  If the player also has levels of JUDG booster then he recieves a number of
    additional points equal to the number of levels of booster that he has.</p>
    
    <h4>Spending Plan Points</h4>
    
    <P>The players now get to spend their Plan Points on revealing the steps in the plan. The GM can tell the
    players here how many steps there are available, the players can decide whther to buy them all or just a certain
    number of them.  There is nothing to stop players from guessing the steps that they haven't bought but the GM
    should refrain from telling them if they guess correctly.</P>
    
    <p>If the players have additional points left over after this stage they may then spend them on Details.
    These are improvements to the plan that the players can request from the GM by spending additional points.
    The following table describes the Detail and how much it will cost to get that information from the GM.</p>
    
    <p><table class="full-table">
       <tr>
          <th>Detail</th>
          <th>PP Cost</th>
          <th>Description</th>
          <th>Example</th>
       </tr>
       <tr>
          <td>Tech Options</td>
          <td>1</td>
          <td>Players can ask if there is a way to perform a step using technology to increase
          the chance of success, DM can inform that players of any technology that they might be
          unaware of that would be useful that they can aquire.</td>
          <td>Original step - Deactivate security camera. Improved Step - Use an EMP grenade to
          take out the camera.</td>
       </tr>
       <tr>
          <td>Skill Option</td>
          <td>1</td>
          <td>Players can ask if there is a way to perform a step using a specific background to
          increase the chance of success, DM can inform that players of any backgrounds that might
          provide an alternative that they were unaware of.</td>
          <td>Original step - Blow the safe open. Improved Step - Use "Career Criminal" background
          to open it safely without blowing the money up .</td>
       </tr>
       <tr>
          <td>Safer!</td>
          <td>1</td>
          <td>Players can ask for an alternative to a step which is more safe but will probably
          consume more time.</td>
          <td>Original step - Run past the bengal tiger. Improved Step - knock out the bengal tiger
          using drugged meat.</td>
       </tr>
       <tr>
          <td>Quicker!</td>
          <td>1</td>
          <td>Players can ask for an alternative step which is faster to achieve but probably
          more risky.</td>
          <td>Original step - Chop down the tree. Improved Step - Pull it down using your truck.</td>
       </tr>
       <tr>
          <td>Less Complex!</td>
          <td>1</td>
          <td>Players can ask for an alternative step which isn't a complicated but is far more
          heavy handed.</td>
          <td>Original step - Hack computer to get data. Improved Step - break open and take hard
          drive.</td>
       </tr>
       <tr>
          <td>Hidden Action</td>
          <td>3</td>
          <td>Players ask if they can "Mask" or "Hide" a step in the plan either for stealth
          purposes or to delay response from their advasaries.</td>
          <td>Original step - Hold CEO hostage to stop him getting to his meeting. Improved Step
          - Cut power to elevators to trap him for fiftheen minutres.</td>
       </tr>
       <tr>
          <td>Reduce Papertrail</td>
          <td>3</td>
          <td>Gm points out steps in the plan where an advarsary might be able to follow a paper
          trail to the planners identities and how to plan against this.</td>
          <td>Original step - Buy a new car. Improved Step - buy a new car using a forged ID.</td>
       </tr>
       <tr>
          <td>Conceal Identity</td>
          <td>3</td>
          <td>Gm points out steps in the plan where the planners can conceal their identities and
          how to do so.</td>
          <td>Original step - Hold Hostaged at gunpoint. Improved Step - hold Hostages at gunpoint
          wearing a mask and vocal distorter .</td>
       </tr>
       <tr>
          <td>Alternative Step</td>
          <td>3</td>
          <td>Players can ask for an alternative way to perform a step that will work the same
          but requires an altnative method if they cannot achive that part due to lack of
          resources or talent.</td>
          <td>Original step - Kill the monster using any means available. Improved Step - Lure
          the monster into the basement, lock door to trap it.</td>
       </tr>
       <tr>
          <td>Alternative Plan</td>
          <td>5</td>
          <td>Gm can give the players an alternative plan which requires a different set of steps
          to achieve their goal, these steps can either be more complicated or easier but more
          dangerous.</td>
          <td>N/A</td>
       </tr>
       <tr>
          <td>Back up Plan!</td>
          <td>5</td>
          <td>In the event that plan goes horrible wrong in its execution, the Player can ask for
          alternative steps to salvage the plan or at least get away from the consequences of a
          colossal blunder.</td>
          <td>N/A</td>
       </tr>
    </table></p>
    
    <h4>Sheet</h4>
    
    <P>If the GM wishes there is a sheet, found in the GMs section, that can be used to formulate and
    keep track of the steps in a plan.</P>
    
</%def>
