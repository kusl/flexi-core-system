<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Tropes</%def>

<%def name="body()">

    <script>
      $(function() {
        $( "#tabs" ).tabs({
            collapsible: true, 
            active: false,
        });
      });
      </script>
    
    <h1>Allies</h1>
    
    <p>Allies are roleplaying traits which act in a similar way to tropes, in that they affect the flow of the narrative.
    Unlike tropes each contact has it's own pool associated with it.  At character generation a player can buy any number of
    allies that he likes but must name them i.e. journalist, detective, weaponsmith etc.  The pool of each starts at a
    value equal to average of the characters Influence and Empathy.</p>
    
    <p>Ally = INFU + EMPH / 2</p>
    
    <P><em>Thaddeus is a bit uncharismatic to say the least.  His EMPH and INFU averaged equals one, making him a bit of a social muppet.
    He buys three allies at character generation, a bartender, a mechanic and a smuggler but all of them only start with a pool
    of one because of his attribute.</em></P>
    
    <h3>Groups and Organizations</h3>
    
    <p>Groups, such as a terrorist cells or secret societies, can also be named at character generation as allies.  Unlike
    individual allies the pool is calculated as above but then has a value of two subtracted from it for a minimum value of one. </p>
    
    <P><em>Thaddeus and his friend Robert both want to have their prospective cults as allies.  Roberts average EMPH and INFU gives a
    value of three but, because this is a group, we subtract two from that, giving his cult ally a pool of one.  In a way Thaddeus is
    luckier, his average is only one anyway and can't get any lower, so it starts at one regardless.</em></P>
    
    <h3>Cost</h3>
    
    <P>Allies are not all equal, in fact some are more equal than others.  Having the Police Chief as a contact
    is a lot more powerful than having a detective, and a detective as a contact is more powerful than a street cop.  To
    represent this all allies have a cost which could be any value from one to five, decided on by the GM using the
    generic contact list.  This is the cost in Ally points, for a player to buy the ally for a character, at character
    creation.  Some allies could potentially have more influence if they were more important in their organisation and
    if this is the case the GM is welcome to increase the cost of the ally at character generation.</P>
    
        <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Common Allies</a></li>
        </ul>
        <div id="tabs-1">
            <p><table>
    <tr><th>Name</th><th>Rank</th></tr>
 <tr><td>Advertising Agent</td><td>2</td></tr>
 <tr><td>Army General</td><td>5</td></tr>
 <tr><td>Bartender</td><td>2</td></tr>
 <tr><td>Beat Cop</td><td>2</td></tr>
 <tr><td>Bodyguard</td><td>1</td></tr>
 <tr><td>Bounty Hunter</td><td>3</td></tr>
 <tr><td>CEO</td><td>5</td></tr>
 <tr><td>City Mayor</td><td>5</td></tr>
 <tr><td>Civil Servant</td><td>3</td></tr>
 <tr><td>Club Owner</td><td>3</td></tr>
 <tr><td>Collections Agent</td><td>2</td></tr>
 <tr><td>Company Man</td><td>2</td></tr>
 <tr><td>Cult Leader</td><td>4</td></tr>
 <tr><td>Customs Official</td><td>3</td></tr>
 <tr><td>Delivery Driver</td><td>1</td></tr>
 <tr><td>Detective</td><td>3</td></tr>
 <tr><td>Dock Worker</td><td>1</td></tr>
 <tr><td>Doctor</td><td>4</td></tr>
 <tr><td>Drug Dealer</td><td>3</td></tr>
 <tr><td>Entertainer</td><td>3</td></tr>
 <tr><td>Fence</td><td>4</td></tr>
 <tr><td>Firefighter</td><td>2</td></tr>
 <tr><td>Gambler</td><td>1</td></tr>
 <tr><td>Gang Leader</td><td>5</td></tr>
 <tr><td>Gang Member</td><td>2</td></tr>
 <tr><td>Hacker</td><td>3</td></tr>
 <tr><td>Journalist</td><td>3</td></tr>
 <tr><td>Lawyer</td><td>3</td></tr>
 <tr><td>Librarian</td><td>2</td></tr>
 <tr><td>Loan Shark</td><td>4</td></tr>
 <tr><td>Mafia Consiglieri</td><td>5</td></tr>
 <tr><td>Mafia Don</td><td>5</td></tr>
 <tr><td>Mafia Leiutenant</td><td>4</td></tr>
 <tr><td>Mechanic</td><td>2</td></tr>
 <tr><td>Mercenary</td><td>3</td></tr>
 <tr><td>Minor Celebrity</td><td>3</td></tr>
 <tr><td>Nurse</td><td>2</td></tr>
 <tr><td>Outdoorsman</td><td>1</td></tr>
 <tr><td>Paramedic</td><td>1</td></tr>
 <tr><td>Pawnbroker</td><td>1</td></tr>
 <tr><td>Petty Criminal</td><td>1</td></tr>
 <tr><td>Pimp</td><td>3</td></tr>
 <tr><td>Political Activist</td><td>1</td></tr>
 <tr><td>Political Radical</td><td>3</td></tr>
 <tr><td>Priest</td><td>3</td></tr>
 <tr><td>Private Investigator</td><td>3</td></tr>
 <tr><td>Professor</td><td>4</td></tr>
 <tr><td>Prostitute</td><td>1</td></tr>
 <tr><td>Research Scientist</td><td>3</td></tr>
 <tr><td>Security Guard</td><td>2</td></tr>
 <tr><td>Slaver</td><td>3</td></tr>
 <tr><td>Smuggler</td><td>3</td></tr>
 <tr><td>Student</td><td>1</td></tr>
 <tr><td>Tabloid Reporter</td><td>4</td></tr>
 <tr><td>Talent Scout</td><td>3</td></tr>
 <tr><td>Taxi Driver</td><td>2</td></tr>
 <tr><td>Trucker</td><td>1</td></tr>
 <tr><td>Veternarian</td><td>3</td></tr>
 <tr><td>Weapons Dealer</td><td>3</td></tr>
</table>
</p>
        </div>
    </div>
    
    <h3>Favour Costs</h3>
    
    <P>When a player wants to use a contact, to do them a favour, they spend a number of pool points that depends on
    the size of the favour being asked.  This does not refresh over time, so a character can tap out the contact, they
    will refuse to perform any more favours.  Instead the player must perform a favour for the contact of equal or higher
    value to refresh the pool.  The pool cannot rise higher than the initial value, that is the pool maximum.</P>
    
    <P><em>Thaddeus wants his smuggler contact to transport him across a closed border.  The GM decides this type of
    favour would have a value of three, it's got a very real chance of landing him in prison if they get caught.  That's way more
    than his pool maximum of one, the smuggler refuses to do it and tells Thaddeus to go swivel on it. In despair Thaddeus
    tries his barman contact for a free drink.  This costs one point.  Thaddeus gets his free drink but the Barman is now
    tapped out and will refuse to do anything else for him unless Thaddeus does him a favour.</em></P>
    
    <P>The following list is a rough favour cost guide:-</P>
    <ul>
        <li>1 - Small request which does not require much effort.</li>
        <LI>2 - A request which requires effort but does not get them in trouble.</LI>
        <LI>3 - A request which requires effort and could land him in some trouble.</LI>
        <LI>4 - A request which not only requires effort but could place the contact in some danger.</LI>
        <LI>5 - A request that goes against the principles of the contact.</LI>
        <LI>6 - The request puts the contact in immediate life threatening danger.</LI>
    </ul>
    
    <p> </p>

</%def>
