<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Scrutiny Tasks</%def>

<%def name="body()">

    <h3>Scrutiny</h3>
      
    <p>Perception is a very difficult concept to mechanise for a game system.  Sometimes a
    person can spend hours searching for something that is right in front of them, and at
    other times they can spot the needle in the haystack instantly.  If the Flexi System was a skills based
    system then we, no doubt, have to include several skills that perform the same function,
    noticing and identifying. Instead the PERC attribute covers all of those skills.</p>
    
    <p>To set a target number, for the spotting of sensory stimuli, we use a chart called
    the Field of Scrutiny which can be found <a href="${a('/core/rules/apfield')}">here.</a>
    There are three categories of Field of Scrutiny labelled low, medium and high.</p>
    
    <p>Low is used for objects which are small, sounds which are muffled,
    smells which are weak etc. If the stimulus should test the limits of a persons senses then
    this category is what is used.</p>
    
    <p>Medium is the average. Hand Held objects, distinct smells and clear sounds are all examples
    of medium stimuli.</p>
    
    <p>High, as you can probably guess, is for the obvious.  Huge objects, deafening sounds and
    overwhelming smells.</p>
    
    <p>For any perception test the GM simply decides how far away the source is and sets the assigned
    target number.  PERC booster shifts the target numbers up a number of ranks equal to the level of
    booster.</p>
    
    <P><table class="full-table">
    <Caption>Field of Scrutiny Target Numbers</Caption>
   <tr>
      <td>TGN</td>
      <td>Feild of Scrutiny (Low)</td>
      <td>Feild of Scrutiny (Med)</td>
      <td>Feild of Scrutiny (High)</td>
   </tr>
   <tr>
      <td>3</td>
      <td>1</td>
      <td>5</td>
      <td>25</td>
   </tr>
   <tr>
      <td>6</td>
      <td>2</td>
      <td>10</td>
      <td>50</td>
   </tr>
   <tr>
      <td>12</td>
      <td>3</td>
      <td>15</td>
      <td>75</td>
   </tr>
   <tr>
      <td>18</td>
      <td>4</td>
      <td>20</td>
      <td>100</td>
   </tr>
   <tr>
      <td>24</td>
      <td>6</td>
      <td>30</td>
      <td>150</td>
   </tr>
   <tr>
      <td>30</td>
      <td>8</td>
      <td>40</td>
      <td>200</td>
   </tr>
   <tr>
      <td>36</td>
      <td>10</td>
      <td>50</td>
      <td>250</td>
   </tr>
   <tr>
      <td></td>
      <td>13</td>
      <td>65</td>
      <td>325</td>
   </tr>
   <tr>
      <td></td>
      <td>16</td>
      <td>80</td>
      <td>400</td>
   </tr>
   <tr>
      <td></td>
      <td>19</td>
      <td>95</td>
      <td>475</td>
   </tr>
   <tr>
      <td></td>
      <td>23</td>
      <td>115</td>
      <td>575</td>
   </tr>
   <tr>
      <td></td>
      <td>27</td>
      <td>135</td>
      <td>675</td>
   </tr>
   <tr>
      <td></td>
      <td>31</td>
      <td>155</td>
      <td>775</td>
   </tr>
   <tr>
      <td></td>
      <td>36</td>
      <td>180</td>
      <td>900</td>
   </tr>
   <tr>
      <td></td>
      <td>41</td>
      <td>205</td>
      <td>1025</td>
   </tr>
   <tr>
      <td></td>
      <td>46</td>
      <td>230</td>
      <td>1150</td>
   </tr>
   <tr>
      <td></td>
      <td>52</td>
      <td>260</td>
      <td>1300</td>
   </tr>
   <tr>
      <td></td>
      <td>58</td>
      <td>290</td>
      <td>1450</td>
   </tr>
   <tr>
      <td></td>
      <td>64</td>
      <td>320</td>
      <td>1600</td>
   </tr>
   <tr>
      <td></td>
      <td>71</td>
      <td>355</td>
      <td>1775</td>
   </tr>
   <tr>
      <td></td>
      <td>78</td>
      <td>390</td>
      <td>1950</td>
   </tr>
   <tr>
      <td></td>
      <td>85</td>
      <td>425</td>
      <td>2125</td>
   </tr>
   <tr>
      <td></td>
      <td>93</td>
      <td>465</td>
      <td>2325</td>
   </tr>
   <tr>
      <td></td>
      <td>101</td>
      <td>505</td>
      <td>2525</td>
   </tr>
   <tr>
      <td></td>
      <td>109</td>
      <td>545</td>
      <td>2725</td>
   </tr>
   <tr>
      <td></td>
      <td>118</td>
      <td>590</td>
      <td>2950</td>
   </tr>
   <tr>
      <td></td>
      <td>127</td>
      <td>635</td>
      <td>3175</td>
   </tr>
   <tr>
      <td></td>
      <td>136</td>
      <td>680</td>
      <td>3400</td>
   </tr>
   <tr>
      <td></td>
      <td>146</td>
      <td>730</td>
      <td>3650</td>
   </tr>
   <tr>
      <td></td>
      <td>156</td>
      <td>780</td>
      <td>3900</td>
   </tr>
   <tr>
      <td></td>
      <td>166</td>
      <td>830</td>
      <td>4150</td>
   </tr>
   <tr>
      <td></td>
      <td>177</td>
      <td>885</td>
      <td>4425</td>
   </tr>
   <tr>
      <td></td>
      <td>188</td>
      <td>940</td>
      <td>4700</td>
   </tr>
   <tr>
      <td></td>
      <td>199</td>
      <td>995</td>
      <td>4975</td>
   </tr>
   <tr>
      <td></td>
      <td>211</td>
      <td>1055</td>
      <td>5275</td>
   </tr>
   <tr>
      <td></td>
      <td>223</td>
      <td>1115</td>
      <td>5575</td>
   </tr>
   <tr>
      <td></td>
      <td>235</td>
      <td>1175</td>
      <td>5875</td>
   </tr>
</table></p>
    
</%def>
