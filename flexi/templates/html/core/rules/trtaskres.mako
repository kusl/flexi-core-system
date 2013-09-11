<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Task Resolution</%def>

<%def name="body()">

    <h3>Task Resolution</h3>

    <p>Whenever a player wants their character to attempt an idea they are asking the game master if they can perform the task.
    The Flexi System has a mechanic which determines, using a characters attributes and other characteristics, success or failure
    through a few steps.</p>
    
    <h4>Target Numbers</h4>

    <p>The very first stage requires a decision from the GM upon the appropriate target number for the task.  When choosing
    a Target Number the GM must consider the difficulty of the task that the character is attempting.  An easy task will have
    a low target number and a difficult task a higher target number.  The following example should give you an idea of how to
    use target numbers in play:-</p>
    
    <p><em>Thaddeus, is a would be burglar.  Unfortunately his latest attempt at thievery, sneaking into a country mansion,
    has gone awry.  Thaddeus awoke the guard dogs and here they come, around the corner, snarling for his blood.  Thaddeus
    decides to run for his life.  The GM decides that it's a fairly straightforward task but that the dogs are trained just
    for this eventuality.  A pack of fit, well trained, guard dogs could out pace the luckless thief quite quickly.  That
    makes it a hard task for the thief to stay ahead of, or outrun them.  On the table a hard task has a target number of
    eighteen, so that's what he has to get on his dice roll.</em></p>
    
    <h4>Standard Target Numbers</h4>
    
    <p>The following table shows the standard target numbers, for several levels of difficulty, as well as examples.  </p>
    
    <table cellpadding="6">
        <tr>
            <th width="10%">Difficulty</th>
            <th width="5%">TN</th>
            <th width="28%">Creative</th>
            <th width="28%">Research</th>
            <th width="29%">Perception</th>
        </tr>
        <tr>
            <td>Rudimentary</td>
            <td>3</td>
            <td>Making a paper aeroplane.</td>
            <td>Finding the date for a pivotal battle.</td>
            <td>Spotting that a car has been broken into.</td>
        </tr>
        <tr>
            <td>Easy</td>
            <td>6</td>
            <td>Drawing a simple map.</td>
            <td>Reading through the battles timeline.</td>
            <td>Noticing that someone's hair has changed.</td>
        </tr>
        <tr>
            <td>Average</td>
            <td>12</td>
            <td>Drawing a simple portrait.</td>
            <td>Investigating the lead up and actions that affected the flow of the battle.</td>
            <td>Spotting that a lock has been tampered with.</td>
        </tr>
        <tr>
            <td>Hard</td>
            <td>18</td>
            <td>Drawing a room in perspective.</td>
            <td>Following the actions of a unit during the entirety of the battle.</td>
            <td>Discerning an individual in a crowd of people.</td>
        </tr>
        <tr>
            <td>Difficult</td>
            <td>24</td>
            <td>Painting a lifelike self portrait</td>
            <td>Following the actions of a single officer during the entirety of a battle.</td>
            <td>Spotting a drop of blood in a room.</td>
        </tr>
        <tr>
            <td>Challenging</td>
            <td>30</td>
            <td>Constructing a replica of a complex building to scale.</td>
            <td>Following the actions of a rank and file soldier during the battle and his background.</td>
            <td>Noticing a hairline fracture on a glass.</td>
        </tr>
        <tr>
            <td>Improbable</td>
            <td>36</td>
            <td>Creating a new, and unique, art movement.</td>
            <td>Discovering the identity of an unknown fatality from the battle.</td>
            <td>Spotting an indivdual bird within a large flock.</td>
        </tr>
    </table>

    <h4>Attribute Dice</h4>

    <p>Next the GM has to decide the relevent attribute.  Whenever a task is carried out, that requires a roll, it is a test
    of one of the characters attributes.  If the task is of a physical nature, such as climbing or lifting, then a physical
    attribute is chosen.  If the task is mental in nature, such as designing a machine or translating an ancient language,
    then a mental attribute should be used.  The specific attribute used depends on the specific nature of the task.
    Intelligence is not rolled for every mental task sometimes Ingenuity or Intuition might be more appropriate.</p>

    <p>So an example of a task resolution roll could be:-</p>

    <p><em>The GM decides that the appropriate attribute for the task of outrunning a pack of guard dogs is stamina.
    If the estate was wooded then coordination, to move between the trees without falling over, might be more appropriate.
    The estate isn't wooded though, it's a flat lawn between the house and the outer wall he's aiming for, so stamina is
    appropriate. Thaddeus is going to have to use a number of dice equal to his stamina for the dice roll.</em></p>

    <h4>Background Dice</h4>

    <p>If you're performing a task for which you have an appropriate background then you can increase your chance of success using
    the background dice.  You should already have a number of dice equal to your attribute, simply add a number of other dice
    equal to the background.  For example:-</p>

    <p><em>Thaddeus has a stamina of four so he already has four dice to roll.  Luckily one of Thaddeus backgrounds is in
    Pickpocket which has a dice value of four as well.  The GM decides that a pickpocket would be well used to running away
    from the law and thus he can use the backgrounds dice.  So now Thaddeus has eight dice to roll, four from the stamina
    attribute and four from the pickpocket background.</em></p>

    <h4>Determining Success</h4>

    <p>Once the dice have been rolled you can't use all of them.  You can only keep a number of dice equal to the attribute used in
    the test.  Unless you want to fail, choose the dice with the highest values. The chosen dice are then added together and to this
    value you add the backgrounds experience value.  Compare the total value you just calculated to the target number.  The dice
    total has to be equal to or higher than the target number to succeed.  If it's below the target number you failed, for example:-</p>
    
    <p><em>Thaddeus rolls his eight dice.  They come up as 4, 2, 1, 2, 1, 3, 3 and 5.  His stamina of four allows him to choose only four
    of the dice so he goes with the five, four and two three's.  Adding them together gives him a value of seventeen.  His background
    experience is two, because he didn't buy it very high at character generation.  The target number was eighteen and he got a total of
    seventeen.  So he failed in his running attempt.  The GM describes how Thaddeus just reaches the outer wall but two dogs latch onto
    his ankles.  He is dragged, screaming, off the wall onto the grass where the dogs set upon him.</em></p>

</%def>
