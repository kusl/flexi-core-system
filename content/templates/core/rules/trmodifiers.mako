<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Task Modifers</%def>

<%def name="body()">

    <h3>Task Modifiers</h3>
      
    <P>No two tasks are ever exactly the same.  Factors such as lighting, tiredness, clothing can make a
    big difference between success or failure.  When setting the difficulty for a task you can use the
    following tables to help you determine an appropriate target number.  First we should discuss how
    modifers affect the different types of tests.</P>
    
    <h4>Target Number Tests</h4>
    
    <p>When a GM decides on the difficulty of a task, the appropriate attribute to roll and then sets
    a target number.  How modifiers affect these sorts of tasks is easy to explain.  Each level of
    modifer increases, or decreases, the difficulty by one level.</p>

    <h4>Opposed Tests</h4>
    
    <p>When the players target number is determined by the roll of another player the affect of modifiers
    on the roll is more difficult to describe.  So bear with me.</p>
    
    <h4>CORD Task Modifiers</h4>
    
    <P><table class="full-table">
        <tr>
           <th>Modifier</th>
           <th>0</th>
           <th>1</th>
           <th>2</th>
           <th>3</th>
           <th>4</th>
           <th>5</th>
           <th>6</th>
        </tr>
        <tr>
           <td>Footing</td>
           <td>Spacious</td>
           <td>Generous (roof tops)</td>
           <td>Broad (Scaffold Planks)</td>
           <td>Limited (Generous window ledge)</td>
           <td>Small (Normal window ledge)</td>
           <td>Tiny (Wooden beams)</td>
           <td>Miniscule (Scaffold Poles)</td>
        </tr>
        <tr>
           <td>Incline</td>
           <td>0</td>
           <td>10</td>
           <td>25</td>
           <td>45</td>
           <td>70</td>
           <td>90</td>
           <td>91 and up</td>
        </tr>
        <tr>
           <td>Obstacles</td>
           <td>None</td>
           <td>Easily avoidable</td>
           <td>Partially obstructed</td>
           <td>Mostly obstructed</td>
           <td>Fully but flimsily obstructed</td>
           <td>Obstructed with small room to maneuver.</td>
           <td>Fully and solidly obstructed</td>
        </tr>
        <tr>
           <td>Precariousness</td>
           <td>Solid Support underfoot</td>
           <td>Light earthquake</td>
           <td>Boat in a storm/Roof of a car</td>
           <td>Earthquake</td>
           <td>Airplane turbulance/Roof of a fast moving car</td>
           <td>heavy Earquake</td>
           <td>Building collapsing underfoot</td>
        </tr>
        <tr>
           <td>Precison</td>
           <td>None</td>
           <td>General Area (As long as it affects it, who cares?)</td>
           <td>Lots of room for error (Needs to be close enough to affect it)</td>
           <td>Some room for Error (Needs to be near the target)</td>
           <td>Small Room For error (As long as its affects the target it dosen't matter)</td>
           <td>Close proximity (Tiny room for error but will still succeed)</td>
           <td>Exact Proximity (No mistakes must be dead on)</td>
        </tr>
        <tr>
           <td>Roughness</td>
           <td>Still or calm water</td>
           <td>Light waves</td>
           <td>Light Undercurrant</td>
           <td>Choppy waves</td>
           <td>Rough under currant</td>
           <td>Heavy waves</td>
           <td>Massive waves and fierce undercurrants</td>
        </tr>
        <tr>
           <td>Size of oncoming object</td>
           <td>No object</td>
           <td>Coconut</td>
           <td>Watermelon</td>
           <td>Motorbike</td>
           <td>Car</td>
           <td>Truck</td>
           <td>Bigger than a truck</td>
        </tr>
        <tr>
           <td>Slipperiness</td>
           <td>None</td>
           <td>Wet grass</td>
           <td>Gritted Ice</td>
           <td>Polished Glass</td>
           <td>Ice</td>
           <td>Oil</td>
           <td>Teflon</td>
        </tr>
        <tr>
           <td>Stability</td>
           <td>Solid</td>
           <td>Supple (Plywood sheet)</td>
           <td>Weak (Styrofoam)</td>
           <td>Soft (rotting Wood)</td>
           <td>Delicate (Glass sheet)</td>
           <td>Fragile (Paper Mache)</td>
           <td>Unstable (dry rot wood)</td>
        </tr>
        <tr>
           <td>Target Distance</td>
           <td>Under Strength Range</td>
           <td>Near throwing range</td>
           <td>Close Throwing Range</td>
           <td>Average Throwing Range</td>
           <td>Hard Throwing Range</td>
           <td>Long throwing range</td>
           <td>Extreme throwing range</td>
        </tr>
        <tr>
           <td>Target Movement</td>
           <td>Stationary</td>
           <td>Slow moving target (5 mph)</td>
           <td>Steady moving target (15 Mph)</td>
           <td>Moving Target (30 Mph)</td>
           <td>Quick moving target (60 Mph)</td>
           <td>Fast moving Targer (120 Mph)</td>
           <td>Fleeting Target (120mph+)</td>
        </tr>
        <tr>
           <td>Targets Size</td>
           <td>Bigger than a truck</td>
           <td>Truck</td>
           <td>Car</td>
           <td>Motorbike</td>
           <td>Watermelon</td>
           <td>Coconut</td>
           <td>Walnut</td>
        </tr>
        <tr>
           <td>Viscosity</td>
           <td>Normal</td>
           <td>Oil</td>
           <td>Mud</td>
           <td>Thick Mud</td>
           <td>Tar</td>
           <td>Wet Concrete</td>
           <td>Damp Sand</td>
        </tr>
        <tr>
           <td>Visibility</td>
           <td>Clear and excellent visibility</td>
           <td>100</td>
           <td>50</td>
           <td>25</td>
           <td>15</td>
           <td>5</td>
           <td>0</td>
        </tr>
        <tr>
           <td>Wind conditions</td>
           <td>No wind</td>
           <td>30 mph</td>
           <td>60 mph</td>
           <td>100 mph</td>
           <td>150 mph</td>
           <td>200 mph</td>
           <td>Extreme winds of around 300 MPH.</td>
        </tr>
     </table></P>

    <h4>INGU Task Modifiers</h4>

    <P><table class="full-table">
       <tr>
          <th>Modifier</th>
          <th>0</th>
          <th>1</th>
          <th>2</th>
          <th>3</th>
          <th>4</th>
          <th>5</th>
          <th>6</th>
       </tr>
       <tr>
          <td>Application range</td>
          <td>Who cares as long as it does what its mean to?</td>
          <td>Does the job that is is supposed to but certain probability of side effects.</td>
          <td>Does the job that is is supposed to but high probability of side effects.</td>
          <td>Does the job that is is supposed to but moderate probability of side effects.</td>
          <td>Does the job that is is supposed to with a small probability of side effects.</td>
          <td>Does the job that is is supposed to but miniscule probability of side effects.</td>
          <td>Super specific application / No side effects / Does what it says on the tin.</td>
       </tr>
       <tr>
          <td>Workforce</td>
          <td>Non-Applicable/Small or solo Undertaking</td>
          <td>Massive workforce</td>
          <td>Large Workforce</td>
          <td>Moderate workforce</td>
          <td>Small Team</td>
          <td>Single Helper</td>
          <td>Solo Project</td>
       </tr>
       <tr>
          <td>Bounds of Technology</td>
          <td>Primitive by contemporary standards</td>
          <td>Day To Day</td>
          <td>Day to day uncommon</td>
          <td>State of the art</td>
          <td>Ground Breaking</td>
          <td>Blue Sky</td>
          <td>Unrealised</td>
       </tr>
       <tr>
          <td>Originality</td>
          <td>Done before by others, a copied idea.</td>
          <td>Done before by others, a simple variation.</td>
          <td>Done before by others, an interesting variation.</td>
          <td>Done before by others, a refreshing original variation.</td>
          <td>A new concept based on an old idea.</td>
          <td>A new concept that uses old ideas in a new way.</td>
          <td>Never been thought of before.</td>
       </tr>
       <tr>
          <td>Tools</td>
          <td>Good Quality and very appropriate</td>
          <td>Average quality and very appropriate</td>
          <td>Average quality and appropriate</td>
          <td>Poor Quality but appropriate</td>
          <td>Reasonable but inappropriate for the job.</td>
          <td>Poor quality and completely inappropriate for job.</td>
          <td>None</td>
       </tr>
       <tr>
          <td>Working Reference</td>
          <td>Examples Abound</td>
          <td>Some examples</td>
          <td>One example</td>
          <td>Second-hand reference</td>
          <td>Third hand reference</td>
          <td>Obscure texts</td>
          <td>Never seen before by man.</td>
       </tr>
       <tr>
          <td>Complexity</td>
          <td>Simple</td>
          <td>Easy</td>
          <td>Average</td>
          <td>Hard</td>
          <td>Difficult</td>
          <td>Complex</td>
          <td>Alien to understand</td>
       </tr>
       <tr>
          <td>Material Availablity</td>
          <td>Available and easy to use.</td>
          <td>Used before.</td>
          <td>Used before but difficult to use</td>
          <td>A similar material to one used before.</td>
          <td>Never used before but you have second hand accounts</td>
          <td>Never used before and very little information to hand.</td>
          <td>Never used before by anyone</td>
       </tr>
       <tr>
          <td>Emotional Depth</td>
          <td>Straightforward</td>
          <td>One strong emotive</td>
          <td>A couple of strong emotiives.</td>
          <td>Two or three subtle emotives.</td>
          <td>Three subtle emotives that support each other.</td>
          <td>Several strong emotives that support each other.</td>
          <td>Every emotive possibility can be seen.</td>
       </tr>
       <tr>
          <td>Argument Strength</td>
          <td>Weak points obvious</td>
          <td>30 seconds needed to pick apart</td>
          <td>Need to think it over for five minutes without interruption</td>
          <td>Can't see without spending a good hour or so deconstructing it.</td>
          <td>Days are required to spot flaws.</td>
          <td>Weeks are required to spot flaws</td>
          <td>Requires years of deconstruction.</td>
       </tr>
       <tr>
          <td>Ease of use</td>
          <td>No one else understands how to use it</td>
          <td>Extensive Training Required</td>
          <td>Can be picked up in half an hour</td>
          <td>An intelligent man can use it straight away</td>
          <td>An Average man could pick it up straight away</td>
          <td>A child can use it intuitively</td>
          <td>Requires no thought whatsoever</td>
       </tr>
       <tr>
          <td>Demographic</td>
          <td>Tiny</td>
          <td>Small Group</td>
          <td>Large Group</td>
          <td>2 or 3 Groups</td>
          <td>45%</td>
          <td>75%</td>
          <td>Everyone</td>
       </tr>
       <tr>
          <td>Efficiency</td>
          <td>Ludicrously Inefficient</td>
          <td>Acceptably Inefficient</td>
          <td>Normal</td>
          <td>Good</td>
          <td>Excellent</td>
          <td>Brilliant</td>
          <td>Violates Law for the Conservation of Energy</td>
       </tr>
       <tr>
          <td>Cost effectivness</td>
          <td>Expensive</td>
          <td>High</td>
          <td>Expected</td>
          <td>Moderate</td>
          <td>Cheap</td>
          <td>Peanuts</td>
          <td>Free</td>
       </tr>
    </table></p>
    
    
    <h3>Boosters and Opposed Tests (Combat Proficiencies)</h3>
    
    <p>It is advised that the player reads the descriptions for combat proficiencies,
    <a href="${a('/core/rules/csproficiencies')}">(Character: Combat Proficiencies),</a> and the mechanics for combat,
    <a href="${a('/core/rules/crcombsbs')}">(Combat: Combat Step by Step),</a> before reading the following rules.</p>
    
    <p>The most common opposed test is during combat, when the combat proficiencies are used.  MEL versus PAR and POP versus DOD.
    If a player has an attribute booster that complements an opposed test, like say having STRG booster when using MEL, the
    booster enhances the roll.  Each level adds an extra die to the roll.  These dice are treated the same as attribute dice,
    they can only increase it a maximum of six and can be swapped for background dice.</p>
    
    <p>So what happens if a player has an attribute booster which has a larger value than the six maximum?  Where do the
    additional levels go?  These additional levels begin to subtract from the opponents dice pool.  This subtraction does
    not affect the background dice, merely the attribute or proficiency dice.  It can only reduce it to a minimum of one
    and will subtract the additional levels of any booster first. For example:-</p>
    
    <P><I>Thaddeus is still in his exoskeleton and is attacking the alien with the giant fists of the machine.  The exoskeleton
    has a CORD booster of two and a REFX booster of one.  Added to his MEL of three this gives him six dice, to which he also
    adds his background dice.  The Alien, on the other hand, has a CORD boost of five and an INTU boost of one.  It's PAR is
    already six so the additional levels will subtract from Thaddeus's MEL roll.  The six levels will reduce his MEL down to
    one because that is the minimum he can roll.  Things are not looking good for Thaddeus.</I></P>
</%def>
