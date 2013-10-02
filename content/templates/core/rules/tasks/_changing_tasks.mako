<%page args="h2, h3"/>


${h2('Changing Tasks')}
    
    <p>The nature of a task changes if the player decides to change how they will perform it.  Taking more time, having help
    or performing it over a length of time all change the chances of success.  The rules below should detail what do in
    situations where the conditions of the task change.</p>
    
    ${h3('Extended Tasks')}
    
    <P>When a player decides that his character is going to focus solely on a task, until it is finished, it becomes
    an extended task. Extended tasks require that the characters make Stamina tests, in addition to the difficulty test, to keep at
    the task until
    it is completed.  The target number of the Stamina roll is determined by the intensity of the task, and the time it requires.
    Difficulties for unintensive extended tasks such as library research, have low target numbers in compariosn to intensive extended
    tasks, such as building a wooden cabin.  A task is intensive if it requires physical labour, and unintensive if it does not.  The
    following table shows the target numbers, for intensive and unintensive extended tasks, over different lengths of time.</p>
    
    <P><table width="70%">
        <tr>
            <td>Unintensive (hours)</td>
            <td>3</td>
            <td>6</td>
            <td>9</td>
            <td>12</td>
            <td>24</td>
            <td>36</td>
            <td>48</td>
            <td>60</td>
            <td>72</td>
            <td>84</td>
            <td>96</td>
            <td>108</td>
            <td>120</td>
        </tr>
        <tr>
            <td>Intensive (hours)</td>
            <td>1</td>
            <td>3</td>
            <td>6</td>
            <td>9</td>
            <td>12</td>
            <td>15</td>
            <td>18</td>
            <td>21</td>
            <td>24</td>
            <td>27</td>
            <td>30</td>
            <td>33</td>
            <td>36</td>
        </tr>
        <tr>
            <td>Target Number</td>
            <td>6</td>
            <td>12</td>
            <td>18</td>
            <td>24</td>
            <td>30</td>
            <td>36</td>
            <td>42</td>
            <td>48</td>
            <td>54</td>
            <td>60</td>
            <td>66</td>
            <td>72</td>
            <td>78</td>
        </tr>
    </table></P>
    
    <p>The GM can use extended task tests in one of two ways.  Some players will want to keep at a task until they become exhausted.
    In this case the GM can ask the player to make a stamina test for every time stage of the task.  So an easy test is rolled after one hour,
    followed by an average test after three hours and so on.  If the player fails then they need rest, and can finish the remainder of the
    task again later. Alternatively a player may insist on doing it all in one go, in this case the GM can simply give the player the
    highest target number for the task. So if the total task should take twenty four hours the player will make one roll with a target
    number of fifty four. Good luck.</p>
    
    ${h3('Monotonous tasks')}
    
    <p>Some tasks take a long time and aren't intensive but simply monotonous.  Stake outs and guard duty are but
    two examples of this sort of task.  If the GM feels that a task is monotonous then the player rolls resolve
    tests instead of stamina.  The target numbers for monotonous tasks are the same as intensive extended tasks.  The GM should
    refer to the table above.</p>
    
    ${h3('Rushing Tasks')}
    
    <p>A player may wish their character to rush a task to reach a deadline.  Rushing a task reduces the amount of time by a half.  A two
    hour task would become an hour long task, and a three hour task would become an hour and a half task.  Doing so increases the chance
    of the task failing.  After the task roll is made, the player reduces his rolled, and modified, result by six.  If this causes the
    character to fail the task then they must reattempt it, from the beginning, again.</p>
    
    ${h3('Taking Time for Tasks')}
    
    <p>If a player wishes to increase his characters chance of success the best way to do so is to increase the time, the character takes,
    to complete the task. Increasing
    the time of the task by half the time it would originally take allows the player
    to add a modifier of six to the rolled, and modified, result. Doubling the time allows the player to add nine to the rolled result.
    Trebling
    time adds twelve to the rolled result and this is the maximum amount that a task can be increased by.  Increasing the time
    of a task does not affect when stamina or resolve tests are made, or their difficulties.</p>
    
   ${h3('Helping with Tasks')}
   
   <p>Characters may want to help each other to increase the chance of a task succeeding.  Every character that helps with a roll increases
   the roll by an extra die.  To gain this extra die the helping character must have a background that would allow them to aid in the test.
   Basic strength tests, such as lifting, pushing or pulling, are the exception to this rule, any character, regardless of background, can
   help with these.</p>
   
   ${h3('Tools for Tasks')}
   
   <p>It is assumed that a character cannot attempt a task if they do not have the correct tools for the job.  However the quality of the
   tools can affect the task roll.</p>
   
   <p><ul>
        <li>Inferior Tools - If the tools are substandard, (i.e. broken, old or incomplete), then the number of dice used for the test
        is halved.  </li>
        <li>Good Tools - These add three dice to the task roll.</li>
        <li>High Quality Tools - These add six dice to the roll.</li>
        <li>Excellent Tools - These add nine to the roll.</li>
        <li>State of the Art Tools - These add twelve to the roll</li>
   </ul></p>
