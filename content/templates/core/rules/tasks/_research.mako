<%page args="h2, h3"/>


${h2('Research Tasks')}
      
    <p>Research tasks are a specific form of information gathering that involve reading,
    or searching, through data sources.  If the information gathering is being conducted
    through people then refer to <a href="${a('/core/rules/trsoctasks')}">(Tasks: Socialising)</a>.
    If it is the immediate searching of a scene then refer to <a href="${a('/core/rules/trscrtasks')}">
    (Tasks: Scrutiny)</a>.</p>
    
    ${h3('Obscurity')}
    
    <p>The type of information that is being sought is the first thing to determine.  The more uncommon
    the information the more difficult it is, and the longer it will take, to find<p>
    
    <UL>
        <LI><b>General Knowledge</b> - Found in childrens books.</LI>
        <LI><b>Common Knowledge</b> - Readily discussed and outlined in general references.</LI>
        <LI><b>Generic Knowledge</b> - Discussed openly in topical references.</LI>
        <LI><b>Obscure Knowledge</b> - Uncommon knowledge which only specialists are likely to know and discuss.</LI>
        <LI><b>Esoteric Knowledge</b> - Not just obscure but so specific that it might be mentioned in
        only one, specific, place.</LI>
        <LI><b>Classified Knowledge</b> - Top secret information that is practically unheard of.  Only
        open archives can get you this sort of information and even then it's pretty hard to find.</LI>
    </UL>
    
    ${h3('Time')}
    
    <p>The time it takes to research the information is determined by the type of information.  Levels of
    COMP booster is the only way to reduce the amount of time required.  The table below shows how COMP
    booster reduces the amount of time required.</p>

    <table class="full-table">
       <tr>
          <th>COMP Booster Level</td>
          <th>General knowledge</th>
          <th>Common knowledge</th>
          <th>Generic knowledge</th>
          <th>Obscure knowledge</th>
          <th>Esoteric knowledge</th>
          <th>Classified knowledge</th>
       </tr>
       <tr>
          <td>None</td>
          <td>1 second</td>
          <td>1 minute</td>
          <td>1 hour</td>
          <td>1 day</td>
          <td>1 week</td>
          <td>31 days</td>
       </tr>
       <tr>
          <td>1</td>
          <td>0.75 second</td>
          <td>45 seconds</td>
          <td>45 minutes</td>
          <td>18 hours</td>
          <td>5 days</td>
          <td>23 days</td>
       </tr>
       <tr>
          <td>2</td>
          <td>0.5 Second</td>
          <td>33 seconds</td>
          <td>33 minutes</td>
          <td>12 hours</td>
          <td>4 days</td>
          <td>17 days</td>
       </tr>
       <tr>
          <td>3</td>
          <td>0.4 second</td>
          <td>25 seconds</td>
          <td>25 minutes</td>
          <td>10 hours</td>
          <td>2 days</td>
          <td>13 days</td>
       </tr>
       <tr>
          <td>4</td>
          <td>0.3 second</td>
          <td>18 seoncds</td>
          <td>18 minutes</td>
          <td>7 hours</td>
          <td>1 day</td>
          <td>9 days</td>
       </tr>
       <tr>
          <td>5</td>
          <td>0.2 second</td>
          <td>14 seconds</td>
          <td>14 minutes</td>
          <td>5 hours</td>
          <td>22 hours</td>
          <td>1 week</td>
       </tr>
       <tr>
          <td>6</td>
          <td>-</td>
          <td>10 seconds</td>
          <td>10 minutes</td>
          <td>4 hours</td>
          <td>18 hours</td>
          <td>5 days</td>
       </tr>
       <tr>
          <td>7</td>
          <td>-</td>
          <td>8 seconds</td>
          <td>8 minutes</td>
          <td>3 hours</td>
          <td>12 hours</td>
          <td>4 days</td>
       </tr>
       <tr>
          <td>8</td>
          <td>-</td>
          <td>6 seconds</td>
          <td>6 minutes</td>
          <td>2 hours</td>
          <td>10 hours</td>
          <td>2 days</td>
       </tr>
       <tr>
          <td>9</td>
          <td>-</td>
          <td>4 seconds</td>
          <td>4 minutes</td>
          <td>1 hour</td>
          <td>7 hours</td>
          <td>1 day</td>
       </tr>
       <tr>
          <td>10</td>
          <td>-</td>
          <td>3 seconds</td>
          <td>3 minutes</td>
          <td>50 minutes</td>
          <td>5 hours</td>
          <td>22 hours</td>
       </tr>
       <tr>
          <td>11</td>
          <td>-</td>
          <td>-</td>
          <td>2 minutes</td>
          <td>40 minutes</td>
          <td>4 hours</td>
          <td>18 hours</td>
       </tr>
       <tr>
          <td>12</td>
          <td>-</td>
          <td>-</td>
          <td>1 minute</td>
          <td>30 minutes</td>
          <td>3 hours</td>
          <td>12 hours</td>
       </tr>
       <tr>
          <td>13</td>
          <td>-</td>
          <td>-</td>
          <td>45 seconds</td>
          <td>20 minutes</td>
          <td>2 hours</td>
          <td>10 hours</td>
       </tr>
       <tr>
          <td>14</td>
          <td>-</td>
          <td>-</td>
          <td>25 seconds</td>
          <td>15 minutes</td>
          <td>1 hour</td>
          <td>7 hours</td>
       </tr>
       <tr>
          <td>15</td>
          <td>-</td>
          <td>-</td>
          <td>10 seconds</td>
          <td>10 minutes</td>
          <td>50 minutes</td>
          <td>5 hours</td>
       </tr>
       <tr>
          <td>16</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>5 minutes</td>
          <td>40 minutes</td>
          <td>4 hours</td>
       </tr>
       <tr>
          <td>17</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>3 minutes</td>
          <td>30 minutes</td>
          <td>3 hours</td>
       </tr>
       <tr>
          <td>18</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>1 minute</td>
          <td>20 minutes</td>
          <td>2 hours</td>
       </tr>
       <tr>
          <td>19</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>40 seconds</td>
          <td>15 minutes</td>
          <td>1 hour</td>
       </tr>
       <tr>
          <td>20</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>20 seconds</td>
          <td>10 minutes</td>
          <td>50 minutes</td>
       </tr>
       <tr>
          <td>21</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>5 minutes</td>
          <td>40 minutes</td>
       </tr>
       <tr>
          <td>22</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>3 minutes</td>
          <td>30 minutes</td>
       </tr>
       <tr>
          <td>23</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>1 minute</td>
          <td>20 minutes</td>
       </tr>
       <tr>
          <td>24</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>40 seconds</td>
          <td>15 minutes</td>
       </tr>
       <tr>
          <td>25</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>20 seconds</td>
          <td>10 minutes</td>
       </tr>
       <tr>
          <td>26</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>5 minutes</td>
       </tr>
       <tr>
          <td>27</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>3 minutes</td>
       </tr>
       <tr>
          <td>28</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>1 minute</td>
       </tr>
       <tr>
          <td>29</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>40 seconds</td>
       </tr>
       <tr>
          <td>30</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>20 seconds</td>
       </tr>
    </table></p>
    
    ${h3('Archive Type')}

    <p>Finally the archive being used also determines the target number for the COMP test. 
    A closed archive is a reference source which is finite.  A library of books or a room full of
    paper documentation is a closed archive.  The amount of information is limited and thus it is more
    difficult to discover detailed information of the level required.  An open archive has access to
    multiple sources of information, i.e. the internet. Thus open archives are always likely to have
    the information, it's just a question of having the time, skill, luck and patience to find it.
    The table below gives the TGN for finding the different types of knowledge in closed and open
    archives.</p>
    
    <p><table class="full-table">
        <tr>
           <th>Obscurity of Information</th>
           <th>Closed Archive TNG</th>
           <th>Open Archive TNG</th>
           <th>Example - Bear knowledge</th>
        </tr>
        <tr>
           <td>General Knowledge</td>
           <td>6</td>
           <td>6</td>
           <td>Bears are dangerous animals who can easily kill the average person with their big teeth
           and sharp claws.</td>
        </tr>
        <tr>
           <td>Common Knowledge</td>
           <td>12</td>
           <td>12</td>
           <td>Bears are the apex predator of their enviroment, nothing hunts them.</td>
        </tr>
        <tr>
           <td>Generic Knowledge</td>
           <td>24</td>
           <td>18</td>
           <td>Most bears will not attack a person unless they are very hungry or threatened. Polar bears
           that live in the arctic wastelands are more likely to attack a person as food is more scarce.</td>
        </tr>
        <tr>
           <td>Obscure Knowledge</td>
           <td>36</td>
           <td>24</td>
           <td>Bears are attracted to refigerators because they produce a smell that is similar to Ant Larvae.
           A tasty meal to the the bear.</td>
        </tr>
        <tr>
           <td>Esoteric Knowledge</td>
           <td>-</td>
           <td>30</td>
           <td>In the year 2056 a Texan company cloned a stock of extinct south american short faced bears in
           an attempt to showcase the benefits of the technology.</td>
        </tr>
        <tr>
           <td>Classified Knowledge</td>
           <td>-</td>
           <td>36</td>
           <td>Black bears were thought to have become extinct with the fall of Terra. However their genetic stock
           was reintroduced to the Gene Banks of Prosperity. It was contributed by a Mr Donald Lindbergh who
           had an antique stuffed bear in his collection.</td>
        </tr>
     </table></p>

