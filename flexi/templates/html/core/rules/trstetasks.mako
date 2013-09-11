<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Stealth</%def>

<%def name="body()">

    <h3>Stealth</h3>
      
    <p>Stealth is an opposed task between one characters CORD, the person attempting stealth,
    and another characters PERC, the person attempting to see through the subterfuge.</p>
    
    <p>Attribute boosts work as they would for any opposed test.</p>
    
    <p>However equipment has a big effect on stealth.  If an item is large of bulky it will amke a character easier to spot.  Alternatively if it has been miniturised or disguised then it would be more difficult to detect.  Also if any armour has been designed to be stealthed then it will make the wearer more difficult to spot.</p>
    
    <p>Due to this some gear has a stealth rating.  The value of the stealth rating determines who recieves a negative modifier to which test.</p>

    <table class="full-table">
       <tr>
          <th>Armour Vehciles or Equipments Stealth Rating</th>
          <th>Users CORD Mod</th>
          <th>Opponent PERC Mod</th>
       </tr>
       <tr>
          <td>-6</td>
          <td>-6</td>
          <td>0</td>
       </tr>
       <tr>
          <td>-5</td>
          <td>-5</td>
          <td>0</td>
       </tr>
       <tr>
          <td>-4</td>
          <td>-4</td>
          <td>0</td>
       </tr>
       <tr>
          <td>-3</td>
          <td>-3</td>
          <td>0</td>
       </tr>
       <tr>
          <td>-2</td>
          <td>-2</td>
          <td>0</td>
       </tr>
       <tr>
          <td>-1</td>
          <td>-1</td>
          <td>0</td>
       </tr>
       <tr>
          <td>0</td>
          <td>0</td>
          <td>0</td>
       </tr>
       <tr>
          <td>1</td>
          <td>0</td>
          <td>-1</td>
       </tr>
       <tr>
          <td>2</td>
          <td>0</td>
          <td>-2</td>
       </tr>
       <tr>
          <td>3</td>
          <td>0</td>
          <td>-3</td>
       </tr>
       <tr>
          <td>4</td>
          <td>0</td>
          <td>-4</td>
       </tr>
       <tr>
          <td>5</td>
          <td>0</td>
          <td>-5</td>
       </tr>
       <tr>
          <td>6</td>
          <td>0</td>
          <td>-6</td>
       </tr>
    </table>
    
</%def>
