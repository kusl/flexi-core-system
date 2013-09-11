<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Environmental Effects</%def>

<%def name="body()">

    <h3>Environmental Effects</h3>
    
    <p>I have found that more characters die due to misadventure rather than by hostile intent.  These mechanics
    outline the rules and damages that characters could have inflicted upon them if they put themselves in harms
    way.</p>

    <h4>Falling</h4>
    
    <p>A prepared human can fall a number of half meters equal to their CORD with a succesful average CORD test.
    Failure requres them to take X damage. For every 17 meters, fifity five feet or second of falling deals one
    hundred, damage rank A, kinetic impact damage.  This reaches a maximum of fifteen hundred A rank damage due
    to the terminal velocity limit.</p>
    
    <p>Of course gravity and atmosphere set the terminal velocity limit.  So an environment where either of these
    changes would also change the amount of damage.</p>

    <h4>Impacts</h4>
    
    <p>Impacts from weapons are dealt with using the weapon damage rules but for large objects such as vehicles we
    use this.  Take the speed the object is moving at, in miles per hour, and divide it by twenty.  Multiply your
    result by the objects size rating. This result is the kinetic impact damage that the impact delivers.</p>

    <h4>Suffocation</h4>
    
    <p>The player makes an open CONS test.  The result of the test, determines how long their character can last
    before taking a minus six power kinetic impact critical to the brain location. If the character held their
    breath then they can last longer. Refer to the table below for the result thresholds.</p>
    
    <p><table class="full-table">
        <tr>
            <th>Result Threshold</th>
            <th>Duration with breath held.</th>
            <th>Duration when surprised.</th>
        </tr>
        <tr>
            <td>3</td>
            <td>30 seconds</td>
            <td>5 seconds</td>
        </tr>
        <tr>
            <td>6</td>
            <td>1 minute</td>
            <td>10 seconds</td>
        </tr>
        <tr>
            <td>12</td>
            <td>3 minutes</td>
            <td>30 seconds</td>
        </tr>
        <tr>
            <td>18</td>
            <td>5 minutes</td>
            <td>50 secons</td>
        </tr>
        <tr>
            <td>24</td>
            <td>10 minutes</td>
            <td>1 minutes 30 seconds</td>
        </tr>
        <tr>
            <td>30</td>
            <td>15 minutes</td>
            <td>2 minutes 30 seconds</td>
        </tr>
        <tr>
            <td>36</td>
            <td>20 minutes</td>
            <td>3 minutes 30 seconds</td>
        </tr>
     </table></p>

    <h4>Heat Exhaustion</h4>
    
    <p>If a character is physically exerting himself in direct sunlight, without shading or cooling, they must make a
    CONS test after a specific amount of time.  The time is determined by the days temperature, which also determines
    the target number and crit rating if they fail the test.  If the test is passed then they can continue to work
    for the same amount of time before making another test.  If they fail then they take a heat damage critical to the
    full body location. Crit rating determined by temperature</p>
    
    <p><table class="full-table">
        <tr>
           <th>Temperature (degrees celsius)</th>
           <th>Example Temperature</th>
           <th>Target Number</th>
           <th>Test interval.</th>
           <th>Crit Rating</th>
        </tr>
        <tr>
           <td>20</td>
           <td>Typical room temperature.</td>
           <td>3</td>
           <td>3 hours</td>
           <td>0</td>
        </tr>
        <tr>
           <td>25</td>
           <td>Hot Day in the UK.</td>
           <td>6</td>
           <td>2 hours</td>
           <td>1</td>
        </tr>
        <tr>
           <td>30</td>
           <td>Butter melts.</td>
           <td>12</td>
           <td>1 hour</td>
           <td>2</td>
        </tr>
        <tr>
           <td>35</td>
           <td>Hot Day in Spain.</td>
           <td>18</td>
           <td>45 minutes</td>
           <td>3</td>
        </tr>
        <tr>
           <td>40</td>
           <td>Inside of a car on a summers day.</td>
           <td>24</td>
           <td>30 minutes</td>
           <td>4</td>
        </tr>
        <tr>
           <td>45</td>
           <td>Hot day in Iraq</td>
           <td>30</td>
           <td>15 minutes</td>
           <td>5</td>
        </tr>
        <tr>
           <td>50</td>
           <td>Hot day in  Death Valley</td>
           <td>36</td>
           <td>5 minutes</td>
           <td>6</td>
        </tr>
     </table></p>

    <h4>Hypothermia</h4>
    
    <p>Damage from exposure to the cold is dependent upon the cold armour resistance of any clothing or armour worn.
    Take the armour resistance and divide it by the modifier for the appropraite temperature in the chart below.  The
    value calculated is equal to the time, in seconds, minutes or hours dependent upon the temperature, that the
    character can survive without taking damage.  When this is up they immediately recieve a full body cold damage
    critical with a crit rating determined by the temperature.  They recieve another critical once the same amount of
    time has passed again until they are no longer exposed. Note that a character adapted to cold environmental
    adaptation are immune to the first level of exposure (indicated by a *).</p>
    
    <P>
        <table class="full-table">
            <tr>
               <th>Temperature</th>
               <th>Example</th>
               <th>Modifier</th>
               <th>Exposure</th>
               <th>Crit Rating</th>
            </tr>
            <tr>
               <td>10</td>
               <td>Winter*</td>
               <td>1</td>
               <td>Multiplied by hours exposed in cold damage.</td>
               <td>0</td>
            </tr>
            <tr>
               <td>-5</td>
               <td>Deep Winter</td>
               <td>1</td>
               <td>Multipied by minutes exposed in cold damage.</td>
               <td>1</td>
            </tr>
            <tr>
               <td>-50</td>
               <td>The Artic</td>
               <td>10</td>
               <td>Multipied by minutes exposed in cold damage.</td>
               <td>2</td>
            </tr>
            <tr>
               <td>-100</td>
               <td>Day side of the moon</td>
               <td>10</td>
               <td>Multipied by seconds exposed in cold damage.</td>
               <td>3</td>
            </tr>
            <tr>
               <td>-150</td>
               <td>Night side of the moon</td>
               <td>50</td>
               <td>Multipied by seconds exposed in cold damage.</td>
               <td>4</td>
            </tr>
            <tr>
               <td>-200</td>
               <td>Neptunes average temperature</td>
               <td>100</td>
               <td>Multipied by seconds exposed in cold damage.</td>
               <td>5</td>
            </tr>
            <tr>
               <td>-270</td>
               <td>Abosolute zero or space</td>
               <td>250</td>
               <td>Multipied by seconds exposed in cold damage.</td>
               <td>6</td>
            </tr>
         </table>
    </P>

    <h4>Dehydration and Starvation</h4>
    
    <p>When a character has gone without food or water they make a CONS test.  The target number is determined
    by the amount of time that has passed since they last ate, or drank.  If the test fails then they must
    immediately recieve a crit rating -6 k-impact full body critical, and recieve anotherevery hour after.
    The crit rating increases by one every hour until they find food or water whereupon the criticals cease.</p>
    
    <p><table class="full-table">
        <tr>
           <td>Hours without Water</td>
           <td>50</td>
           <td>60</td>
           <td>65</td>
           <td>70</td>
           <td>80</td>
           <td>85</td>
           <td>95</td>
        </tr>
        <tr>
           <td>Target Number</td>
           <td>3</td>
           <td>6</td>
           <td>12</td>
           <td>18</td>
           <td>24</td>
           <td>30</td>
           <td>36</td>
        </tr>
    </table></p>
    
    <p><table class="full-table">
        <tr>
           <td>Days without food</td>
           <td>10</td>
           <td>30</td>
           <td>40</td>
           <td>50</td>
           <td>60</td>
           <td>70</td>
           <td>80</td>
        </tr>
        <tr>
           <td>Target Number</td>
           <td>3</td>
           <td>6</td>
           <td>12</td>
           <td>18</td>
           <td>24</td>
           <td>30</td>
           <td>36</td>
        </tr>
    </table></p>
    
    <h4>Electrocution</h4>
    
    <p>Divide the voltage by one thousand and then multiply it by the result of three six sided dice.  This
    converts directly into electrical damage with a crit rating equal to the amount of damage divided by one hundred.</p>

    <h4>Vacuum</h4>
    
    <p>Being exposed to the cold vacuum of space is harsh but not instantly fatal.</p>


</%def>