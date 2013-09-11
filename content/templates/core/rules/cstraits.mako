<%inherit file="_sidebar_rules.mako"/>

<%def name="title()">Traits</%def>

<%def name="body()">

<script>
  $(function() {
    $( "#tabs1, #tabs2" ).tabs({
        collapsible: true, 
        active: false,
    });
  });
  </script>

    <h3>Traits</h3>
    
    <p>Traits are the semi-permenant characteristics of a character.  They do not give a stat but represent a descriptive quality which applies
    a specific mechanic to gameplay. Some of these traits have positive effects and some have negative effects.</p>
    
    <p>Players can buy traits for their character during character creation.  They buying of negative traits will cost them build points which they can use to buy
    other stats. Positive traits cost build points to buy because they are beneficial to the character.</p>
    
    <p>So the benefit of buying negative traits is that they can give you more points to build your character with at character creation.  The downside is
    that your character will have to live with them because traits do not go away easily.  If a player finds a way to get rid of a characters trait then they
    must buy them off with experience. If they don't then the GM is well within his rights to impose a trait of an equal value upon the character.</p>
    
    <h4>Critical Traits</h4>
    
    <p>Traits awarded during gameplay are usually negative and result from criticals in combat.  These take the form of physical traumas that last, such as
    limps, disibilities and scars.  Mental critical traits take the form of Post Traumatic Stress such as phobias and disorders.</p>
    
    <p>These are treated just as any other trait, they must be used in gameplay.</p>
    
    <h4>Bad Critical Traits</h4>
    
    <p>If you've had a look at the results of the criticals, and read their descriptions, then you would have noticed that some have pretty bad consequences.
    This, believe it or not, is intentional.  It adds an element of danger, and luck, in combat which we feel is lacking in other games.  If your character
    receives one of these sorts of traits we have only one piece of advice. Shrug your shoulders and make a new character.</p>
    
    <h4>Traits Lists</h4>
    
    <div id="tabs1">
        <ul>
            <li><a href="#tabs-1">Positive Character Traits</a></li>
            <li><a href="#tabs-2">Negative Character Traits</a></li>
            <li><a href="#tabs-3">Critical Damage Traits</a></li>
            <li><a href="#tabs-4">Post Traumatic Stress Traits</a></li>
        </ul>
        <div id="tabs-1">
            <p>
                <table class="full-table">
                    <tr>
                       <th>Name</th>
                       <th>Type</th>
                       <th>Description</th>
                    </tr>
                    <tr>
                       <td>Ambidextrous</td>
                       <td>Psychical</td>
                       <td>Character receives no penalty for using an off-hand weapon.</td>
                    </tr>
                    <tr>
                       <td>Analytical</td>
                       <td>Mental</td>
                       <td>For all Planning tests the character recieves a +6 bonus to his JUDG roll.</td>
                    </tr>
                    <tr>
                       <td>Associates</td>
                       <td>Social</td>
                       <td>The character begins with a rank 3 ally group that regenerates at 1 favour point per week.</td>
                    </tr>
                    <tr>
                       <td>Astral Ghost</td>
                       <td>Miscellaneous</td>
                       <td>Astral beings suffer a penalty of -2 to their perception to find or spot the character.</td>
                    </tr>
                    <tr>
                       <td>Authority</td>
                       <td>Social</td>
                       <td>If the character joins an organization they start with 1 level of authority higher than the rest
                       of the group. For example if they are playing as soldiers, the character will become the squad sergeant.</td>
                    </tr>
                    <tr>
                       <td>Benefactor</td>
                       <td>Social</td>
                       <td>Character has a level 6 ally who regenerates at  1 favour point per week.</td>
                    </tr>
                    <tr>
                       <td>Blade Adept</td>
                       <td>Psychical</td>
                       <td>Character may use his parry to dodge projectiles rather than dodge.</td>
                    </tr>
                    <tr>
                       <td>Blind Fighter</td>
                       <td>Psychical</td>
                       <td>Character receives no penalty for fighting in the dark or low lit areas.</td>
                    </tr>
                    <tr>
                       <td>Brutal</td>
                       <td>Psychical</td>
                       <td>Characters damage multipliers act as if his strength is one higher.</td>
                    </tr>
                    <tr>
                       <td>Defiant</td>
                       <td>Mental</td>
                       <td>Characters Mind Damage Indicator doubles at character generation.</td>
                    </tr>
                    <tr>
                       <td>Egotistic</td>
                       <td>Social</td>
                       <td>Character is very forceful in conversation, they gain an extra d6 die for social tests when they
                       are the Initiator but suffer a minus d6 penalty when they are the defender.</td>
                    </tr>
                    <tr>
                       <td>Eidetic  Memory</td>
                       <td>Mental</td>
                       <td>The player may ask the GM to refresh their memory with information that character should remember
                       but the player has otherwise forgotten.</td>
                    </tr>
                    <tr>
                       <td>Expert</td>
                       <td>Mental</td>
                       <td>The Character has put a considerable amount of time and effort into perfecting his work. He may
                       choose one background which he can raise to 5D6 knowledge and +10 experience but must pay the appropriate cost.</td>
                    </tr>
                    <tr>
                       <td>Extravagant</td>
                       <td>Social</td>
                       <td>Character starts with three extra fame points and accumulates an extra fame point when they are awarded.</td>
                    </tr>
                    <tr>
                       <td>Fast Reaction</td>
                       <td>Psychical</td>
                       <td>When caught by surprise character may still dodge and parry attacks on that round but cannot attack.</td>
                    </tr>
                    <tr>
                       <td>Fortunate</td>
                       <td>Miscellaneous</td>
                       <td>When rolling on the radom loot table the GM rolls twice and goes with the most rewarding outcome
                       to the player.</td>
                    </tr>
                    <tr>
                       <td>Friendly Face</td>
                       <td>Social</td>
                       <td>All NPC's treat the character as if his infamy is 3 points lower than it's actual value and he
                       gains an extra d6 to manipulation rolls.</td>
                    </tr>
                    <tr>
                       <td>Gun Slinger</td>
                       <td>Psychical</td>
                       <td>Character reduces the time it takes to draw a weapon to a free action and the reload action costs
                       only one third of it's normal value.</td>
                    </tr>
                    <tr>
                       <td>Hard to Kill</td>
                       <td>Psychical</td>
                       <td>Character gains 2d6 to his CONS roll when stabilizing a wound naturally.</td>
                    </tr>
                    <tr>
                       <td>Hip</td>
                       <td>Social</td>
                       <td>Character is down with the kids and all the latest trends or news, he gains a +12 when making fame/infamy
                       rolls.</td>
                    </tr>
                    <tr>
                       <td>Lackeys</td>
                       <td>Miscellaneous</td>
                       <td>Character recieves 1d4 followers.</td>
                    </tr>
                    <tr>
                       <td>Lucky</td>
                       <td>Miscellaneous</td>
                       <td>Character recieves three bonus trope slots.</td>
                    </tr>
                    <tr>
                       <td>Pioneer</td>
                       <td>Mental</td>
                       <td>The character likes to think outside the box when it comes to creating things. When attempting to create
                       something new, or unique, the character is granted a bonus of 2d6 to the roll if he has an appropriate
                       background.</td>
                    </tr>
                    <tr>
                       <td>Precise</td>
                       <td>Psychical</td>
                       <td>Character can substitute his CORD for STRG to calculate damage multipliers, including booster.</td>
                    </tr>
                    <tr>
                       <td>Property</td>
                       <td>Miscellaneous</td>
                       <td>Character starts the game large piece of property worth the equivalent of 250 thousand dollars.</td>
                    </tr>
                    <tr>
                       <td>Sixth Sense</td>
                       <td>Miscellaneous</td>
                       <td>When an Astral being is observing the character they may make an INTU roll versus the creatures RESO
                       to notice its presence.</td>
                    </tr>
                    <tr>
                       <td>Skillful</td>
                       <td>Mental</td>
                       <td>The Character may choose one background for which practical tasks are completed in half the time.</td>
                    </tr>
                    <tr>
                       <td>Sub-Cultured</td>
                       <td>Social</td>
                       <td>Character doesn't move with the vast majority of society, and its whims, but instead focuses on a
                       singular group or class. This group could be anything from the aristocracy,to an art movement, planetary
                       cult or even the club scene. When interacting with the group the character receives a +5 bonus to fame
                       or infamy (whichever is higher), and a +6 to all interaction tests.</td>
                    </tr>
                    <tr>
                       <td>Tough</td>
                       <td>Psychical</td>
                       <td>Characters Body Damage Indicator doubles at character gen.</td>
                    </tr>
                    <tr>
                       <td>Vigilant</td>
                       <td>Social</td>
                       <td>What time would call paranoia this player simply calls care. He always wears concealing clothing,
                       never gives his real name to the untrusted and always tries to keep a low profile. Character receives
                       1 less infamy when awarded and gains a  +6 stealth bonus against technology tracking tests.</td>
                    </tr>
                    <tr>
                       <td>Wise</td>
                       <td>Mental</td>
                       <td>The character is very down to earth when its comes to the truth of things. He gains a 2d6 bonus to
                       resist misdirection.</td>
                    </tr>
                    <tr>
                       <td>Worldly</td>
                       <td>Mental</td>
                       <td>The character is a bastion of general knowledge and facts which he has picked up over the years. He may
                       add 1d6 to any comprehension test if he has no background to link to the skills.</td>
                    </tr>
                    <tr>
                       <td>Zen</td>
                       <td>Mental</td>
                       <td>The Character is skilled at remaining calm and ignoring painful wounds. He gains a bonus of 2d6
                       when trying to remain conscious after taking critical damage.</td>
                    </tr>
                </table> 
            </p>
        </div>
        <div id="tabs-2">
            <p>
                <table class="full-table">
                    <tr>
                       <th>Name</th>
                       <th>Type</th>
                       <th>Description</th>
                    </tr>
                    <tr>
                       <td>Addiction</td>
                       <td>Mental</td>
                       <td>The character begins game with an addiction to a specific illegal recreational drug.</td>
                    </tr>
                    <tr>
                       <td>Amnesia</td>
                       <td>Miscellaneous</td>
                       <td>Character suffers from selective amnesia over a section of the their life. What happened
                       in this time period? Who knows? Probably the GM.</td>
                    </tr>
                    <tr>
                       <td>Astral Beacon</td>
                       <td>Miscellaneous</td>
                       <td>The Characters astral presence is very intense. This does not mean it is stronger or more
                       powerful but it certainly gets the attention of Astral beings. Astral beings receive a bonus of
                       2d6 to find or spot the character.</td>
                    </tr>
                    <tr>
                       <td>Bad Luck</td>
                       <td>Miscellaneous</td>
                       <td>Character is unlucky and so all tropes act as if they are one slot higher.</td>
                    </tr>
                    <tr>
                       <td>Bleeder</td>
                       <td>Physical</td>
                       <td>Character suffers a 2d6 penalty to CONS checks to stabilize when taking a critical wound.</td>
                    </tr>
                    <tr>
                       <td>Cash Debt</td>
                       <td>Social</td>
                       <td>Character has to give 10% of his earnings over to the debt collects or face people coming around
                       to make sure he pays up.</td>
                    </tr>
                    <tr>
                       <td>Clumsy</td>
                       <td>Physical</td>
                       <td>When in a situation where the character must catch, grab or throw an object he suffers a 2d6
                       penalty to his CORD or REAC.</td>
                    </tr>
                    <tr>
                       <td>Coward</td>
                       <td>Mental</td>
                       <td>The character is not in the least bit brave and so has a tendency to react to horrifying
                       situations more dramatically than most of the people around him. The character takes an additional
                       mind critical when ever he takes mind critical damage.</td>
                    </tr>
                    <tr>
                       <td>Cursed</td>
                       <td>Miscellaneous</td>
                       <td>The Character has been cursed by someone.When it comes to random phenomena  the DM alway rolls
                       twice and chooses the worst situation if this character is involved.</td>
                    </tr>
                    <tr>
                       <td>Dare Devil</td>
                       <td>Mental</td>
                       <td>This character suffers a 2d6 penalty to JUDG and INTU rolls when in a position to try something
                       physically dangerous.</td>
                    </tr>
                    <tr>
                       <td>Delicate</td>
                       <td>Physical</td>
                       <td>Any extreme motion such as travelling in a vehicle, watching a fast film or playing a computer
                       game causes the character to suffer a 1d6 penalty to all stats for 3d6 minutes.</td>
                    </tr>
                    <tr>
                       <td>Dependent</td>
                       <td>Social</td>
                       <td>Characters life style costs are fifty percent higher  to take consideration of his responsibilities.</td>
                    </tr>
                    <tr>
                       <td>Distinctive</td>
                       <td>Social</td>
                       <td>The character gains +3 infamy points at character generation and gains an additional +1 every
                       time he gains infamy.</td>
                    </tr>
                    <tr>
                       <td>Goal</td>
                       <td>Mental</td>
                       <td>Whatever goal the character chooses he cannot resist any opportunity, that presents itself, which
                       could bring him closer to achieving it. If he attempts to resist the temptation he must pass an
                       improbable RESO test.</td>
                    </tr>
                    <tr>
                       <td>Gullible</td>
                       <td>Mental</td>
                       <td>The character suffers a 2d6 penalty to defend against misdirection tests and illusions.</td>
                    </tr>
                    <tr>
                       <td>Ignorant</td>
                       <td>Mental</td>
                       <td>The character has a personal belief that knowledge is for suckers. When it comes to COMP or JUDG
                       tests, which do not require a background,  the character suffers a 2d6 penalty to his rolls.</td>
                    </tr>
                    <tr>
                       <td>Illiterate</td>
                       <td>Mental</td>
                       <td>Due to poor upbringing or a learning difficulty the character cannot read and write.</td>
                    </tr>
                    <tr>
                       <td>Insanity</td>
                       <td>Mental</td>
                       <td>The character begins game with an insanity. This is randomly rolled on the Post Traumatic Stress
                       charts. The character may roll twice but must pick one or the other.</td>
                    </tr>
                    <tr>
                       <td>Job</td>
                       <td>Social</td>
                       <td>The character has a boss, usually related to their lifestyle who expects results. The character
                       must spend a minimum of three hours a day working.</td>
                    </tr>
                    <tr>
                       <td>Lazy eyes</td>
                       <td>Physical</td>
                       <td>Character suffers a 2d6 penalty penalty to perform monotonous activities such as Guard Duty.</td>
                    </tr>
                    <tr>
                       <td>Life Debt</td>
                       <td>Social</td>
                       <td>Someone at some point has saved the characters life and he owes them for it. If they call him for
                       a favour he must make an challenging RESO test to turn them down.</td>
                    </tr>
                    <tr>
                       <td>Low Pain Tolerance</td>
                       <td>Physical</td>
                       <td>The characters pain threshold is lower than average.  When taking critical damage the character
                       suffers a 2d6 penalty to remain concious.</td>
                    </tr>
                    <tr>
                       <td>Maimed</td>
                       <td>Physical</td>
                       <td>The character must roll on the critical damage location chart and then take the Damaged Location
                       trait he receives. The player may roll twice but must choose one or the other.</td>
                    </tr>
                    <tr>
                       <td>Moral Code</td>
                       <td>Mental</td>
                       <td>The character has a moral code which influences their daily life. The player chooses three black and
                       white principles that their character should not break.  If they do so then they must roll for a temporary
                       hysteria.</td>
                    </tr>
                    <tr>
                       <td>Nemesis</td>
                       <td>Social</td>
                       <td>The character has really pissed someone off at some point in their life. This person being of sound
                       judgment has decided that they will stalk the character to the ends of the earth and laugh as all they
                       hold dear has been reduced to nothing but ashes and rubble. The Nemesis is a special NPC who will make
                       the players life difficult whenever he can.</td>
                    </tr>
                    <tr>
                       <td>Pariah</td>
                       <td>Social</td>
                       <td>When spending favour points the pariah spends an additional point because talking to him for most
                       people is considered a favour.</td>
                    </tr>
                    <tr>
                       <td>Sensitive System</td>
                       <td>Physical</td>
                       <td>Characters biological defsenses are more reactive than average. When resisting a harmful toxin the
                       character treats it as if it is two levels higher. </td>
                    </tr>
                    <tr>
                       <td>Sickly</td>
                       <td>Physical</td>
                       <td>The characters immune system has never been up to scratch. The character suffers a 2d6 penalty to his
                       CONS rolls when battling any pathogen.</td>
                    </tr>
                    <tr>
                       <td>Square</td>
                       <td>Social</td>
                       <td>The character isn't hip and he's certainly not with it. He suffers a 2d6 penalty  when making fame/infamy
                       rolls.</td>
                    </tr>
                    <tr>
                       <td>Unfit</td>
                       <td>Physical</td>
                       <td>The character leads an unhealthy sedantery lifestyle and so suffers from fatigue far more quickly than his
                       counterparts. The character becomes tired in half the time it takes to effect a normal character.</td>
                    </tr>
                    <tr>
                       <td>Uninspiring</td>
                       <td>Social</td>
                       <td>Usually referred to as "Whathisface?" or "You know, the drummer" this character seems to never catch the
                       publics attention. He reduced any fame award by 1 point to a minimum of zero.</td>
                    </tr>
                 </table>  
            </p>
        </div>
        <div id="tabs-3">
            <p>
                <table class="full-table">
                    <tr>
                       <th>Name</th>
                       <th>Description</th>
                    </tr>
                    <tr>
                       <td>Anosmia</td>
                       <td>Character sense of smell has been destroyed, they have no feild of scrutiny when smell is involved.</td>
                    </tr>
                    <tr>
                       <td>Bad Hair</td>
                       <td>Characters hair is permantly mussed due to his scalp being heavily scarred, all interaction rolls are at -1 die
                       due to the destractive nature.</td>
                    </tr>
                    <tr>
                       <td>Bad Joint</td>
                       <td>Character joint is stiff and tends to make a clicking noise when in motion, they suffer -1 die to cordination
                       when the activity involves using the specific joint.</td>
                    </tr>
                    <tr>
                       <td>Blind</td>
                       <td>Character sense of sight has been destroyed, they have no feild of scrutiny when vision is involved.</td>
                    </tr>
                    <tr>
                       <td>Brain Damaged</td>
                       <td>Character is rendered more or less unplayable and remains in a catonic or comatosed state. They require one of the
                       following three things... really expensive surgury to fix the damage,  a permanent place in a care home or the sweet
                       embrace of death to end their suffering.</td>
                    </tr>
                    <tr>
                       <td>Bum Ticker</td>
                       <td>Characters heart has been damaged, their stamina is reduced by 1 die until heart is repaired or replaced. Whilst in
                       this state if a character fails a stamina roll by 12 they suffer a heart attack and take a crit rating 0 kintetic
                       critical to the heart.</td>
                    </tr>
                    <tr>
                       <td>Crippled</td>
                       <td>Characters body has been damaged so severly that they might wish whatever hit them had killed them. Their Strength,
                       coordination and stamina are temporily reduced by 2 dice. Their movmentis also hampered meaning untilthe damage is
                       repaired the cannot walk, jog , sprint or jump only move at their crawling speed in a limping movment.</td>
                    </tr>
                    <tr>
                       <td>Damaged ear</td>
                       <td>Character sense of Hearing has been damage, their feild of scrutiny when sound is involved is halved and round down.
                       If both ears are damaged it is reduced to none.</td>
                    </tr>
                    <tr>
                       <td>Dead Limb</td>
                       <td>Character limb has been damaged in such a way that only hangs limp and dead due to nerve damage, any tests made with
                       that limb is automatic failure including lifting and walking.</td>
                    </tr>
                    <tr>
                       <td>Heavily Scarred</td>
                       <td>Characters entire body looks like a piece of crispy bacon left in the sun, all interaction tests whilst made in this
                       state are reduced to 1 die except for intimidation which receives a bonus of +1 die. Characters coordination is also 
                       reduced by 1 die due to the skin stiffening as it heals.</td>
                    </tr>
                    <tr>
                       <td>Incoprehsible</td>
                       <td>Characters mouth has been damaged to the point where they can no longer make coherant noise, anyone trying to anderstand
                       them must make a difficult comprehsion test.</td>
                    </tr>
                    <tr>
                       <td>Missing Arm</td>
                       <td>Characters arm has been severed or removed due to the trauma inflicted upon it. Any tests made with this limb are
                       automatically failures due to rather obvious reasons.</td>
                    </tr>
                    <tr>
                       <td>Missing Eye</td>
                       <td>Characters field of scrutiny is halved when vision is involved, if the other eye is also damaged the trait is upgraded
                       to blind.</td>
                    </tr>
                    <tr>
                       <td>Missing Foot</td>
                       <td>Character foot has been severed or destroyed, they can no longer jog, sprint or jump.</td>
                    </tr>
                    <tr>
                       <td>Missing Forelimb</td>
                       <td>Characters forelimb has been severed or destroyed, any tests many which require the use of the forelimb are automatic
                       failures.</td>
                    </tr>
                    <tr>
                       <td>Missing hand</td>
                       <td>Characters hand has been destroyed or severed, any tests which involved the use of the hand on its own are automatic
                       failures, tasks which require the use of two hands suffer a penalty of -1 die.</td>
                    </tr>
                    <tr>
                       <td>Missing Leg</td>
                       <td>Characters leg has been severed or removed due to the trauma inflicted upon it. Any tests made with this limb are
                       automatically failures due to rather obvious reasons.</td>
                    </tr>
                    <tr>
                       <td>Mute</td>
                       <td>Characters mouth has been damaged to the point where they simply cannot talk at all apart from incoherant noises.</td>
                    </tr>
                    <tr>
                       <td>Paraplegic</td>
                       <td>The Characters spine has been damaged in a way which has made him loose any feeling or control of his legs making any
                       task which involved their use impossible.</td>
                    </tr>
                    <tr>
                       <td>Permant Ulcer</td>
                       <td>Character stomach has been damage and an ulcer has formed. The character suffers -1 to all attribute tasks due to the
                       dsitractive and painful nature of the ulcer.</td>
                    </tr>
                    <tr>
                       <td>Poor Digestion</td>
                       <td>The Character liver has been damaged in a way which affects their entire digestive tract. Character feels larthargic and
                       tired a good deal of the time as their metabolism is affected reducing their stamina by 3 die.</td>
                    </tr>
                    <tr>
                       <td>Quadraplegic</td>
                       <td>The characters spine has been damaged to the point where they cannot move or feel any of their limbs making any task
                       which requires their use impossible.</td>
                    </tr>
                    <tr>
                       <td>Scarred Face</td>
                       <td>Characters face looks like a old boot left out in the rain, all interaction tests whilst made in this state are
                       reduced to 1 die except for intimidation which receives a bonus of +1 die.</td>
                    </tr>
                    <tr>
                       <td>Sickly</td>
                       <td>The character has received internal injuries that have failed to heal properly leading to minor health issues reducing
                       the character con by 2 points.</td>
                    </tr>
                    <tr>
                       <td>Wheezer</td>
                       <td>The Characters lungs have healed badly from their trauma, he suffers -1 to his cord when stealthing due to the weezing
                       noise he now makes, suffers -1 to con when resisting air born viruses and looses 1 point from his movement when jooging and
                       2 when sprinting.</td>
                    </tr>
                    <tr>
                       <td>Scarred torso</td>
                       <td>Characters torso looks like an someone pushed them through a bramble and glass factory. Characters coordination is also
                       reduced by 1 die due to the skin stiffening as it heals.</td>
                    </tr>
                 </table>
            </p>
        </div>
        <div id="tabs-4">
            <p>
                <table class="full-table">
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Mechanics</th>
                    </tr>
                    <tr>
                       <td>Agoraphobia</td>
                       <td>The Sufferer becomes afraid of being in situations where they do not have a clear means of escaping their enviroment in
                       case something terrible happens.</td>
                       <td>for enviroments that have no clear exit or entrance the character treats them as if they have an enviromental fear rating
                       of 2. For small enclosed space this is upgraded to a fear rating 4.</td>
                    </tr>
                    <tr>
                       <td>Addiction</td>
                       <td>To cope with the trauma of the event that has given the character this trait the character has become addicted to a substance
                       that has ramifications on their health such as alchohol or narcotics.</td>
                       <td> The player may choose which substance it is and then automatically becomes addicted to it. See chemical rules in the
                       inventory section.</td>
                    </tr>
                    <tr>
                       <td>Amnesia</td>
                       <td>Characters memories are locked away within their subconcious or are simply erased as a way to cope with some horrible
                       trauma inflicted upon them. They cannot remember anything about themselves at all.</td>
                       <td>All characters background skills are unavailable until the character regains his memory through therapy. Alternativly
                       he remembers 1 rank of background knowledge or skill every 1d20 days.</td>
                    </tr>
                    <tr>
                       <td>Anxiety</td>
                       <td>The characters general mood becomes rife with panic and fearful assumtions over every detail, a noise in the night must be
                       a burglar, the cough must be lung cancer, clearly the guy night door I never see leave the house is up to something... So on and
                       so forth.</td>
                       <td>Character treats fear ratings as if they were one step higher.</td>
                    </tr>
                    <tr>
                       <td>Atmosphere</td>
                       <td>The character becomes fearful of specific atmospheric property such as rain, snow, mist, sunny days or simply the dark.
                       Anytime the general atmosphere around them takes the decided property they become fearful. </td>
                       <td>When in the presence of this phobia the atmosphere has a fear rating equal to 1D6 plus the character resolve value. The 
                       atmopshere must be common or happen regulary, the DM chooses what it is but is encouraged to make it present when the character
                       gains this trait.</td>
                    </tr>
                    <tr>
                       <td>Attennion defecit</td>
                       <td>Characters mind has a tendency to wander from one thought to another especially if the new thought is more interesting or
                       appealing to them. If they're trying to focus on a task they will usually become preoccupied with something more fun.</td>
                       <td>Character must pass a difficult resolve test before attempting a task which most people would consider to be boring, such
                       as hard work. If the character passes they can attempt the task if they fail the wander off to find something more appealing.</td>
                    </tr>
                    <tr>
                       <td>Belief</td>
                       <td>The character beleives in a beleif or idea that he must bring to fruition or bring to the masses for some arbitary reason.
                       Examples include making everyone beleive they will live longer if they only eat fibre, Making all crimes punishable by death,
                       delivering your own version of the divine comedy to the masses whom must accept it as truth, Convincing everyone the planetary
                       ruler is a new type of vampire that has no vampire traits what so ever or even showing everyone that the correct way to eat a
                       steak is with tomatoe sauce. The Beleif must be somewhat delusional, irrational or simply absurd. </td>
                       <td>The Character will spend his every waking hour attempting to get the masses to come around to his way of thinking.
                       Attempting to ignore their duties for one day requires a difficult resolve roll that increases by one difficulty step per day
                       he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Cataonia</td>
                       <td>Character is reduced to a catatonic state similar to a coma which is impossable to escape from.</td>
                       <td> Character requires expensive state of the art therapy (If it exists in the setting) or is simply reduced to a body in a
                       hospital bed. Character will snap out of this state in 3D10+10 years.</td>
                    </tr>
                    <tr>
                       <td>Caution</td>
                       <td>The character becomes overly cautious due to the trauma that has given them this trait. They will make themselves rules
                       for survival and deice against any action which may lead to harm or disaster.</td>
                       <td>The character will simply refuse to do anything that might put them in considerable danger or will obviously lead to it.
                       To bypass this they can make a single hard Resolve test and should they fail they will adamently refuse to do the task.</td>
                    </tr>
                    <tr>
                       <td>Cotards Delusion</td>
                       <td>The character beleives that they no longer exist or are infact dead. </td>
                       <td>The character must roleplay the delusion that they are dead.  This can include refusal to eat, withdrawal from reality,
                       inability to comprehend corporeal nature and complete disinterest in social activity.</td>
                    </tr>
                    <tr>
                       <td>Death Wish</td>
                       <td>The Sufferer disregards their own safety when it comes to dangerous situations this might be because they feel they should
                       already be dead or see no problem with dying</td>
                       <td>Character judgment is reduced by -3 die when it comes to dangerous situations and character refuses to use cover of any
                       sort in combat.</td>
                    </tr>
                    <tr>
                       <td>Defiant Disorder</td>
                       <td>Character sees any type of command from both individuals and organizations as some sort of threat or insult. </td>
                       <td>He must pass a difficult resolve test to do as he's told or he'll do the absolute opposite simply out of pure maniacle
                       spite.</td>
                    </tr>
                    <tr>
                       <td>Delirium</td>
                       <td>The character becomes delerious with their thoughts muddled and confused. They make little sense as their mind is reduced
                       to a chaotic disorganized state that is both frightening and obtuse to them.</td>
                       <td>Character is at a negative modifier of two dice to all actions he takes.</td>
                    </tr>
                    <tr>
                       <td>Delusion of grandeur</td>
                       <td>Character beleives he is far more imporatant that he actually is. He will treat most people as if they are beneath him.
                       He will beleive he has some sort of divine purpose or is infact something really special.</td>
                       <td>Character must pass an challenging resolve test if they wish to be humble or set aside their beleif that they are imporant
                       for one moment. If not they will treat everyone around them as if they are below them.</td>
                    </tr>
                    <tr>
                       <td>Delusion of oppression</td>
                       <td>The Character beleives that they are being oppressed or kept from succeeding by some oppressive figurehead or anyone who
                       has authority over them. If they are actually opressed they over exaggerate the strength of it to a considerable degree.</td>
                       <td>The character reacts to any commands given by anyone with absolute distain and anger. The character suffers -3 die to all
                       interaction tests when dealing with authority. If someone they do not know instructs them to do something they must make a
                       challenging resolve test to agree, should they fail they will react with aggression.</td>
                    </tr>
                    <tr>
                       <td>Delusion of poverty</td>
                       <td>The Character beleives that he is poor no matter how much wealth he has aquired. He becomes a miser and does not wish to
                       use any of the money or things he has accumilated in his lifetime.</td>
                       <td>The character refuses to spend any money they possess or use any items within their possession if they can avoid it. They
                       will insist on going with the cheapest option or not having something at all. If the Player wishes to buy something new or
                       good they must pass a challenging judgment or resolve test (Whichever is higher) to make the purchase.</td>
                    </tr>
                    <tr>
                       <td>Delusional Companions</td>
                       <td>The character bleives that inanimate objects around them or a specific object is/are actually sentient. The Character
                       will treat the object with the respect and consideration they would treat a living freind or relative.</td>
                       <td>The character chooses an object (or several) and gives them a seperate personality. The personality for the object is
                       then created by the DM who treats the object as an NPC only the character can interact with.</td>
                    </tr>
                    <tr>
                       <td>Delusions of betrayle/Jealousy</td>
                       <td>Character beleives that someone close to them or a freind is actually betraying them in someway. If it is a lover they
                       might beleive their person is having an affair, If it is a freind they might beleive this person is actually plotting their
                       downfall.</td>
                       <td>Player chooses one NPC or PC that is close to them in some way and forever treats them with upmost suspicion. If the
                       character wishes to trust something they say they must pass a difficult judgment or empathy test (Whichever is higher) to
                       evaluate their motives.</td>
                    </tr>
                    <tr>
                       <td>Delusions of Conspiracy</td>
                       <td>The Character beleives there is some hidden truth or great secret that is being kept from everyone. The Secret is
                       fantastic, absurd and brilliant in its complexity and only the character can see it for what it is, of course it dosen't
                       actually exist and is all in their mind.</td>
                       <td>Character must pass a difficult judgment test when dealing with any important information or they will come to the
                       conclusion it is part of the conspiray and keep it to themselves for furthur investigation.</td>
                    </tr>
                    <tr>
                       <td>Delusions of Control</td>
                       <td>The character beleives that some unknown or unseen force in controlling the world around them and everthing they interact
                       with. A form of paranoia they think that an external force has some form of control over their thoughts and actions.</td>
                       <td>Character chooses an organization either private or public and declares "War" on them as revenge, how they do so is upto
                       the characters choice. However they must make a challenging resolve roll to resist any opportunity to get revenge on the group.</td>
                    </tr>
                    <tr>
                       <td>Delusions of guilt</td>
                       <td>The Character beleives they have transgressed the world in some way usually be focusing on something they have done in the
                       past and blowing its significants so far out of proportion that dwarves what they have actually done.</td>
                       <td>If a character is accused of any action and to be punished weither by actual law officers or mob justice the character will
                       accept his guilt with open arms for he feels as if he deserves the punishment that will surely follow. If the character wishes
                       to resist such a situation they must pass a difficult resolve test to claim innocence.</td>
                    </tr>
                    <tr>
                       <td>Delusions of reference</td>
                       <td>The character beleives that everything in the world is directed at them, they see hidden messages in everything or
                       beleive that the man on the television is talking to them directly.</td>
                       <td>Character beleives that all information is aimed at them in some way for direct to secret messages. To attempt to
                       ignore a message or information they must pass a difficult comprehsion test or else they will take note of it or try
                       to "Crack" its meaning.</td>
                    </tr>
                    <tr>
                       <td>Depersonalization</td>
                       <td>The characters mind takes a back seat and just watches the world go by without interacting in the least. To other
                       the character simply locks up and becomes unresponsive to anything but the most basic of interaction such as feeding,
                       sleeping and bathing.</td>
                       <td>Characters must pass an challenging resolve roll to communicate with people around him and an improbable resolve
                       roll to attempt to perform any task.</td>
                    </tr>
                    <tr>
                       <td>Depression</td>
                       <td>The Character becomes moody and deepressed, whatever has happened to them has caused them to become somewhat dour and
                       nihilistic in their world view and mood. They see and feel little joy in doing anything and beleive that there really isn't
                       any point to living or doing anything. They carry on however beleiving there is little else to do.</td>
                       <td>If the caracter fails any task they do not see the point in attempting it again until the next day or requires a fellow
                       player to make a difficult empathy task to get them to retry again later.</td>
                    </tr>
                    <tr>
                       <td>Derealization</td>
                       <td>The event which caused the character to gain this trait have distrurbed his grip on reality causing him to occasionaly
                       gain a form of depersonalization as he questions his own existance and the nature of reality around him.</td>
                       <td>Due to the alienating affects of derealization the character suffers a -3 to his reaction stat to a minimum of 1. He also
                       suffers -1 die to any background roll which requires a degree of concentration and last longer than 1 minute.</td>
                    </tr>
                    <tr>
                       <td>Disaster precaution</td>
                       <td>Character feels the need to plan for a possible death/incident/Emergency which may never actually come to fruition. If
                       he is the survivor of starvation he insist on keeping an emergency dried food box on his persons, if he has survived a great
                       fall he might insist on walking around with a parachute, if he survived a zombie attack he may insist on keeping one bullet
                       in his pocket for himself just in case or if he got lost on the side of a mountain he may insist on carrying a box of flares
                       always.</td>
                       <td>The Character chooses the emergency item and the DM can approve or vito it, It must be somewhat specfic and be for an
                       uncommon situation. for example carrying an emergency gun is a bit of a cop out considering most players get in a fire fight
                       every session. When the Character is without his emergency item he feels vulnerable and suffers -1 to all attribute dice as
                       he feels agitated, defensless and distracted.</td>
                    </tr>
                    <tr>
                       <td>Disgust</td>
                       <td>The Character feels nothing but loathing, bitterness and general distrust at the world around him. His dour nature reflects
                       the fact that he simply finds the world and everything in it detestable and abhorrant. </td>
                       <td>The character suffers -3 die to interaction tests which aren't hostile or aggressive.</td>
                    </tr>
                    <tr>
                       <td>Entities</td>
                       <td>The Character becomes terrified of a specific type of entitiy, animal or person but there must always be many of them in
                       existance. Examples include trolls, firemen, cats, wolves, vampires, mercenaries, birds, zombies or AI's.</td>
                       <td> When in the presence of this phobia the entity has a fear rating equal to 1D6 plus the character resolve value. Simply
                       mentioning the Entity creates a 1d6 fear rating for the character. The Entity must be somewhat common or have some impact in
                       the world around the character, the DM chooses what the entity is and is encouraged to make it relevant to when the character
                       gained this trait.</td>
                    </tr>
                    <tr>
                       <td>Environmental</td>
                       <td>The Character becomes terrified of a specific part of the enviroment. Examples include wooden flooring, Bushes, Fire places,
                       Trees, Sand, Glass windows, Grass, doors or even gravestones. </td>
                       <td>When in the presence of this phobia the object has a fear rating equal to 1D6 plus the character resolve value. The
                       Enviromental factor must be something which is somewhat common, The DM chooses what the enviromental thing is and is
                       encouraged to make it relevant to when the character gained this trait.</td>
                    </tr>
                    <tr>
                       <td>Erotomania</td>
                       <td>The Character beleives absolutly that someone important/rich/famous is actually in love with them and even though
                       they do not recepricate the feelings it is simply because they haven't come around to the correct way of thinking yet.</td>
                       <td>The character chooses a setting specific VIP and must roleplay an obsession with that VIP.  Any situation where the
                       GM feels that the player should perform an obsessive behaviour but doesn't he can force the character to make a difficult
                       JUDG roll to continue on as normal.</td>
                    </tr>
                    <tr>
                       <td>Event Amnesia</td>
                       <td>The event which causes the character to gain this trait is so traumatic to them that their mind simply refuses to
                       accept that it actually happened. Their subconsious blocks the memory from the character.</td>
                       <td>The Character refuses to remember the event that happened and the 1d6 hours surrounding it. If asked about what
                       happened or trying to remember the character simply can't answer or will refuse to acknowledge the question.</td>
                    </tr>
                    <tr>
                       <td>Event Overwrite</td>
                       <td>The Event that causes the character to gain this trait is so traumatic and confusing to the character that their
                       subconciouse rewrites the events. The character will remember what happened differently to everyone else and regard his
                       version of the events as the absolute truth. He will beleive that everyone else must be wrong if they question his
                       version of events.</td>
                       <td>Roll 1d6. On a 1 the character beleives he was a hero and saved the day. On a 2 another party member is resonsible
                       for what happened. On a 3 another party member is a traitor but only he knows it. On a 4 he beleives something else
                       happened entirly that is pretty mundane. on a 5 he beleives something else happened which is extraordinary and on a 6
                       he beleives he was responsible for what happened. If there is an element of truth in what happened the character
                       embellishes said truth even furthur, he might go from being the hero of the tale to the saviour of the world.</td>
                    </tr>
                    <tr>
                       <td>Explanitive</td>
                       <td>The characters thought become muddled when trying to explain things to people, he knows what he knows
                       and how he should react but cannot successfully convey that information to the people around him.</td>
                       <td>Anytime the character talks the listerners must make a difficult COMP test to understand the character.
                       This must be done before the player speaks.</td>
                    </tr>
                    <tr>
                       <td>Flash backs</td>
                       <td>The Event was so traumatic to the character that it lives with them for the rest of their natural life.
                       Forevermore they will relive the events in excrutiating detail in times of stress and when events that are
                       unfolding echo the original event.</td>
                       <td>When character is presented with a situation that is similiar or echoes the event the GM may call
                       for the character to make a difficult comprehension test. Should the character fail he starts re-living
                       the events in great detail. This may have comical or dire consequences based around the situation at hand.</td>
                    </tr>
                    <tr>
                       <td>Freak</td>
                       <td>The Character beleives there is something wrong with a part of his body either his eyes are too far
                       apart or his nose too hooked and his elbows too coarse. He''ll try and change it with surgury and alter
                       it in any way he can. When he's done he'll find another problem in another place or move back to an older
                       problem that he's just noticed still isn't right.</td>
                       <td>If the character fails a PRES roll then the GM can insist that the character becomes obsessed over a
                       part of their body that they believe caused them to fail.</td>
                    </tr>
                    <tr>
                       <td>Goal</td>
                       <td>The Character beleives there is something they must do for some arbitary reasons. The Goal must be
                       unacheivable by either impracticality or sheer impossibility. Examples include finding and destroying
                       Satan, clearing the galaxy of criminals, huning all monsters, finding all the shattered covenants,
                       Destroying the Galaxy or descending to the bottom of the abyss. The Goal consumes their minds and any
                       thing that might help even in the slightest cannot be ignored by them.</td>
                       <td> Attempting to ignore this goal requires a difficult resolve roll that increases by one difficulty
                       step per day he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Grief</td>
                       <td>The characters general mood can be described as emotional, distressed and somber. Everything the
                       character sees reminds him of some former tragedy and everything that goes wrong is a clear indication
                       that the universe hates him on a personal level. </td>
                       <td>Character chooses an area they consider safe, usually their domicile. If they wish to leave this area
                       they must pass a difficult resolve test or they will refuse and stay in the area they feel more comfortable.</td>
                    </tr>
                    <tr>
                       <td>Histronic Disorder</td>
                       <td>Character craves any sort of attention both positive and negative they may do this in a variety of ways
                       from manipulating peoples emotions towards them to overtop exhibitionist behaviour the goal is always attetion.
                       The Character must constantly seek the attention of those around him requiring him. </td>
                       <td> The GM may call on the player stating they have been rather quiet and insist they do something to get
                       themselves noticed once per day, they may make a difficult resolve test to resist the urge and remain quiet.</td>
                    </tr>
                    <tr>
                       <td>Hypocondria</td>
                       <td>The Character beleives he is ill or sick and need medication or a doctors supervision to help him with
                       his contant ails. Any ache, cramp or sneeze is some sort of evidance that somthing is wrong.</td>
                       <td>Every day the character must make a difficult JUDG test.  If this fails then he must seek out the
                       nearest medical assistance for help.  He will not cease until he receives treatment.</td>
                    </tr>
                    <tr>
                       <td>Hypomania</td>
                       <td>A Lighter form of mania a hypomanic person shifts from being upbeat, positive and productive into a tired,
                       depressed and lazy individual from day to day.</td>
                       <td>Everyday the character wakes he rolls a 1d6. On an even number the character normal and rather productive.
                       On an odd number the character is tired and moopy refusing to do most tasks let alone get out of bed requiring
                       a difficult resolve roll to perform any task more difficult than basic walking around, eating and talking.</td>
                    </tr>
                    <tr>
                       <td>Impulsive</td>
                       <td>The characters thought and actions become impulsive acting on neither logic or sense but rather pure
                       reaction.</td>
                       <td>Player must give their response to a situation to the GM within a three second period or they simply
                       do not act in that situation.</td>
                    </tr>
                    <tr>
                       <td>Infected</td>
                       <td>The character beleives he is infected with a desease or that he has some sort of parasite underneath
                       his skin. He scratches his flesh until it turns red and sore and beleives this is proof that something is
                       wrong, he makes himself ill with worry.</td>
                       <td>Character must make random PERC rolls, which if failed will cause him to witness evidence of a disease
                       underneath their skin.  The character must then make a difficult JUDG test or begin scratching or seeking
                       medical help.  This scratching inflicts a  single crit to body and reduces their resolve by one die for
                       resisting fear.</td>
                    </tr>
                    <tr>
                       <td>Insomnia</td>
                       <td>The sufferer has problems sleeping due to extreme anxiety when he is left alone with his thoughts.</td>
                       <td>Due to lack of consistant sleep the character suffers a -1 die to all his stats outside of combat
                       situations.</td>
                    </tr>
                    <tr>
                       <td>Kleptomania</td>
                       <td>Character feels the need to collect or steal things that he dosen't necessarily need. </td>
                       <td>Each day the character must take something that would get him into potential trouble wither PC's or NPC's.
                       The object must have some material worth or might get them into trouble for taking it. The GM may call on the
                       player stating they have the urge to take something once per day and may ask them to make a difficult resolve
                       test to resist the urge.</td>
                    </tr>
                    <tr>
                       <td>Mania</td>
                       <td>Someone with Mania suffers from shifting mood swings as each day they feel different. One day they might
                       wake and feel energetic, happy and easily excitable. Another they might wake to be Angry, threatening and
                       spitful.</td>
                       <td>Everyday the character wakes he rolls a 1d6. On a 1 or 2 he is freindly, excitable and generally fun but
                       will have no problems getting people in trouble or danger. On a 3 or 4 he is his normal self. On a 5 or 6 he
                       is Angry, Aggressive and spitful and has no problems with harming anyone or anything.</td>
                    </tr>
                    <tr>
                       <td>Memory</td>
                       <td>The Characters memory becomes confusing and disorganized with the character somtimes forgetting important
                       things or how to perform tasks they have done many times before.</td>
                       <td>Character rolls a D6 before he attempts any task, if he rolls an even number he can perform the task, if
                       he rolls an odd number he has forgotten how to do the task for 15 minutes.</td>
                    </tr>
                    <tr>
                       <td>Mood swings</td>
                       <td>Mood swings is a very light form of mania which has little affect on the character baring chaning their
                       disposition and attitude to the world around them as their emotions take control each day.</td>
                       <td>Everyday the character wakes he rolls a 1d4. On a 1 he is in a good mood and positive about everything.
                       On a 2 he is deepressed and finds no joy in anything. On a 3 he is fearful and worried about everything. On a
                       4 he's angry with everything around him.</td>
                    </tr>
                    <tr>
                       <td>munchausen's</td>
                       <td>Character will intentional wound himself in order to get medical treatment and in turn attention. </td>
                       <td>Every week the character must make a difficult resolve test. Should he fail he will find someway to
                       inflict a critical wound on himself that looks like either an accident or crime such as throwing himself
                       down a flight of stairs or even drinking bleach. Once the character gets the attention he craves he finds
                       himself releived until his next "Accident"</td>
                    </tr>
                    <tr>
                       <td>Nervous ticks</td>
                       <td>Due to the trauma of the even that has given the character this trait that have developed a nervous tick.
                       The tick usually manifest in the form of a muscle spasm such as a eyelid twitch or a head jerk. It does not
                       matter what it is as long as it is noticable.</td>
                       <td>When in a situation that is stressful the character begins to suffer an obvious nervous tick such as a wince.
                       In aggressive social situations they are at -1 die to resist because their opponent knows they are nervous and in
                       combat they suffer -1 die to all rolls due to the distractive nature of the ticks.</td>
                    </tr>
                    <tr>
                       <td>Night Terrors</td>
                       <td>The characters sleep patterns are constantly hampered by horrible nightmares. This leads to him avoiding
                       sleep as much as possible and when he is forced to sleep he it is restless as he tackles his fears nonstop in
                       his dreams.</td>
                       <td>Due to lack of consistant sleep the character suffers a -1 die to all his stats at all times.</td>
                    </tr>
                    <tr>
                       <td>Object</td>
                       <td>The Character beleives he must find some unatainable object from some arbitary reason. The Object must be
                       something that is either impossible to get hold of or dosen't exist. Examples include the holy grail, A perfect
                       AI, An original copy of the first internet page, The Skull of JFK, A working time machine or even the dagger that
                       killed Abel. The pursuit or desire for the object fuels the characters life. He will see evidence of its existance
                       where there is none and a trail of conspiracy regarding the object that simply dosen't exist.</td>
                       <td>Attempting to ignore possible leads to the objects location requires a difficult resolve roll that increases by one
                       difficulty step per day he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Object Hoarding</td>
                       <td>The Character becomes obsessessed with accumilating unessesary objects in their living area on the
                       understanding that they one day might be useful but problably not. Of corse the objects collected must be
                       see as important or useful to the individual. A survivalist for example
                       might stockpile canned foods, weapons, survival gear and so on whereas a scientist might stockpike books,
                       computer parts and tools.</td>
                       <td>This primarily affects the characters wallet and savings as he continues to spend money on unnessary
                       belongings for his domicile. If the character has money, he will rush out and spend it on whatever he can
                       as soon as he has it. If the character wishes to save any ammount of money they must pass a difficult resolve
                       test to hide it away either in their account or in their domicile
                       somewhere.</td>
                    </tr>
                    <tr>
                       <td>Objects</td>
                       <td>The Character becomes terrified when in the presense of a specific type of object. Examples can include
                       Glass balls, Skulls, lanterns, Televisions, lawnmowers, dishwashers, pens, vacant shoes, stuffed animals or
                       even guns. </td>
                       <td>When in the presence of this phobia the atmosphere has a fear rating equal to 1D6 plus the character
                       resolve value. The Object must be somewhat common, the DM chooses what the object is and is encouraged to make
                       it relevant to when the character got this trait.</td>
                    </tr>
                    <tr>
                       <td>Oblivious</td>
                       <td>The character becomes oblivious to the world around them. Their senses decrease in strength as they
                       fail to understand the implications of events transpiring around them and how they will affect them.</td>
                       <td>Character automatically fails all judgment, perception and intuition tests.</td>
                    </tr>
                    <tr>
                       <td>Panic Attacks</td>
                       <td>The character is prone to having panic attacks whenever a sitaution begins to turn sour.</td>
                       <td>If the character fails a narritive important task or background roll that the character thinks is
                       important... the GM may give their current enviroment a fear rating equal to 1D6 for 3d6 minutes, this only
                       affects the character of course.</td>
                    </tr>
                    <tr>
                       <td>Paranoia</td>
                       <td>The character beleives that more or less everyone is out to get them for some arbitary reason.</td>
                       <td>When the character make a PERC test the GM should supply false additional information that indicates
                       a conspiracy against the character.</td>
                    </tr>
                    <tr>
                       <td>Paranoid Schitzophrenia</td>
                       <td>The character suffers a parnoid breakdown beleiving multiple bizzare delusions about the people
                       around them or things that simply do not exist. They become both a danger to themselves and the world
                       around them.</td>
                       <td>Character must pass a challenging judgment test to realize that nobody is trying to kill or
                       harm them when entering a new area or meeting new people.</td>
                    </tr>
                    <tr>
                       <td>Person</td>
                       <td>The character beleives that there is a specific person they must find for some arbitary reason. The Person must
                       be impossible to find or simply non existant. Examples include trying to find King Arthur, The First Zombie, Their
                       dead wife, Himmlers reanimated head, A winged prophet,
                       The Hero Gilgamesh reborn or even their own doppleganger. The Person cannot actually exist, can exist but be impossible
                       to get to or simply haven't been seen for some time.
                       The Individual can be personal or impersonal to the character. The Character will spend most of his free time trying to
                       track down this individual following any leads no
                       matter how strenous or fact less any report or evidence in their search may be.</td>
                       <td> Attempting to ignore possible leads to the persons location requires a difficult resolve roll that increases
                       by one difficulty step per day he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Person</td>
                       <td>The Character grows fearful of a specific person panicking at the mere mention of their name. Examples can
                       include the character parents, a figure of authority, someone they have killed or someoone famous such as Lord
                       Dracula himself.</td>
                       <td> When in the presence of this person or if they are mentioned or reference, the individual has a fear rating
                       equal to 1D6 plus the character resolve value. The Person must have some form of impact on the characters life or
                       be very imporatant, the GM chooses the person and
                       is encouraged to make it relevant to when the character gained this trait.</td>
                    </tr>
                    <tr>
                       <td>Place</td>
                       <td>The Character beleives there is some place he must find or get to which is either impossible to get to or
                       simply dosen't exist in a psyhical sense. Examples include the garden of eden, Eldorado, The Crash site of the
                       UF vessel Jordan with all the treasures of Terra onboard,
                       The Hidden vault of the Marquis De Sade or even a dream scape they saw one evening whilst out of their mind on
                       drugs. The Location can take many properties as long as its
                       impossible to get to. The Character will be constantly looking for clues for its wereabouts. They will follow
                       rumour, heresay and any scrap of information that may lead to
                       their goal.  </td>
                       <td>Attempting to ignore possible leads to the location requires a difficult resolve roll that increases by
                       one difficulty step per day he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Pyromania</td>
                       <td>The character becomes obsessesed with fire and burning things in order to releive stress</td>
                       <td>. When in s stressful situation the character must make a difficult resolve test. Should they fail they
                       are at -1 die to all background rolls as they feel emotially charged in some way. To releive the stress and
                       return to normal they must burn at least 1 squared meter of any
                       material object distroying it partially or completley. Once they have done so the -1 die penalty goes until
                       the fail another stress test.</td>
                    </tr>
                    <tr>
                       <td>Rage</td>
                       <td>The Characters temper is permanetly out of control, the are easily angered and resort to every situation
                       with nothing but comptempt, Aggression and outright hatred.</td>
                       <td> If the character wishes to approach any problem with a clear head they must pass a difficult resolve
                       roll or instead will resort to the most aggressive (but not stupid) action.</td>
                    </tr>
                    <tr>
                       <td>Reassurance</td>
                       <td>The character continously double checks most task and reassures himself non stop to the point where he
                       makes sure his breaks work before driving his car and that his tools are all in working order.</td>
                       <td>This gives him a +1 bonus die to all tasks but they take three times longer to perform as he meticulously
                       checks, double checks and re-checks again and again.</td>
                    </tr>
                    <tr>
                       <td>Refusal</td>
                       <td>The character finds odd or unfamiliar situations to be strange and frightening. For example if the
                       character is unfamiliar with coming across dead bodies they will not want to approach them or even talk
                       to some one who is touching them. This of course extends to all things
                       that they do not usually encounter in their daily life. Examples might include such things as drug users,
                       foreigners and aliens or innanimate objects such as guns, space
                       ships and artifacts. Of course this all depends on what the character is used to, a hill billy nomad might
                       find bathing and toothpaste to be unfamiliar.</td>
                       <td>If a situation is out of the ordinary or strange to them the character must make a difficult resolve
                       test to proceed or they will simply refuse and have nothing to do with the subject at hand. They will not
                       acknowledge it or even look at it.</td>
                    </tr>
                    <tr>
                       <td>Regarding  self</td>
                       <td>Character gains bizzare delusions about themselves such as aliens have stolen a chunk of their brain,
                       they are a clone of hitler, their parents were atlantian royalty so they must be a prince, their fingers
                       are talking to them or they are a reincarnated dragon waiting to
                       regain its form and conquer the galaxy.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying this as
                       fully as he should be he can force them to have an outburst by temporarily taking control of the character.</td>
                    </tr>
                    <tr>
                       <td>Regarding animals</td>
                       <td>Character gains a bizzare delusion regarding animals or a specific animal such as cats are telling them
                       to hunt and kill jews, Birds are stealing bits of their soul and flying them away, my hamster wants me to
                       build a pyramid or elephants are a devolved race of super gods whom
                       hold the secret to immortaility and godhood.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying this as
                       fully as he should be he can force them to have an outburst by temporarily taking control of the character.</td>
                    </tr>
                    <tr>
                       <td>Regarding enemies</td>
                       <td>Character gains a bizzare delusions rgarding their enemies such as the police are actually robots whom rule
                       the world, those gang members are secretly aliens who are sneaking into my house to steal my spinal fluid, the
                       vampires need to enslave us to save us from ourselves
                       because they know best, If I keep feeding this fungus monster at the bottom of my garden he'll reward me with
                       clairvoyant powers.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying this as
                       fully as he should be he can force them to have an outburst by temporarily taking control of the character.</td>
                    </tr>
                    <tr>
                       <td>Regarding information</td>
                       <td>Character gains a bizzare delusion regarding the information around them such as Newspapers are designed
                       to steal ones thought whilst reading, The internet was created by an ancient civilization to live as chat room
                       immortals, The missing people on milk cartons are actually one
                       of the ingredients in the milk, Goverment statistic reports are actually coded messages to tell the monsters
                       when to invade.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying this as
                       fully as he should be he can force them to have an outburst by temporarily taking control of the character.</td>
                    </tr>
                    <tr>
                       <td>Regarding people</td>
                       <td>The Character gains a bizarre delusion about the people around them and how they fuction such as the world
                       is actually hollow and filled with machine that move everyone else like puppets, Everyone has been replaced with
                       aliens who wish to test him, everyone with blue eyes
                       is actually a dopple ganger from the mirror world, everyone has died in the war and I'm talking to their ghosts
                       because I'm the only person on the planet who has actual
                       thoughts and feelings.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying this
                       as fully as he should be he can force them to have an outburst by temporarily taking control of the
                       character.</td>
                    </tr>
                    <tr>
                       <td>Regarding the world</td>
                       <td>Character gains a bizzare delusion regarding the world around them such as they're on a really
                       good television show, That everything is running along a scripted sequnce that can be discovered by
                       analyzing the stars, the ocean is only thirty meters deep and down there
                       is the shadow goverment whom decide who lives and dies, this is only a game being run by several dudes
                       in their spare time.</td>
                       <td>This must be roleplayed, NPCs will react accordingly.  If GM feels the player is not roleplaying
                       this as fully as he should be he can force them to have an outburst by temporarily taking control of
                       the character.</td>
                    </tr>
                    <tr>
                       <td>Religious Delusions</td>
                       <td>The character beleives that they are divine, an agent of god, a prophet or an agent of the devil
                       therefore their actions are both infallable but also extremly important in the grand scheme of things.</td>
                       <td>Character automatically fails all judmgent tests as he beleives his divine nature should and will
                       protect him from harm.</td>
                    </tr>
                    <tr>
                       <td>Schitophrenia</td>
                       <td>The character mind sufferes a complete breakdown in both coherancy, logic and thought processing. They
                       babble, they scream, they suffer from multiple delusions and they cease functioning in a coherant state. They
                       truly have gone insane.</td>
                       <td>Characters must pass an improbable comprehsion roll to understand anything that comes out of the character
                       mouth, character must to the same to understand what is going on. He also rolls 1d4 every hour, on an odd number
                       he attacks a random person in the room in his confused
                       state.</td>
                    </tr>
                    <tr>
                       <td>Self harm</td>
                       <td>Character feels the urge to constantly damage themselves for a variety of arbitary reasons. They may cut
                       their skin with a knife when nobody is looking or simply pick at wounds until the get worse.</td>
                       <td>Characters body damage indicator is always down by one point due to the constant minor wounds they have
                       inflicted upon themselves.</td>
                    </tr>
                    <tr>
                       <td>Self Mutilation</td>
                       <td>Tattooing, Piercing, Branding, Unessesarily cyberware and reconstructive surgury. The character wants to
                       stand out and takes it to levels most people find simply unsettling or bizzare to him it dosen't matter as long
                       as he's getting something changed.</td>
                       <td>This primarily affects the characters wallet and savings as he continues to spend money on unnessary body
                       modification. If the character has money, he will rush out and spend it on whatever he can as soon as he has it.
                       If the character wishes to save any amount of money they
                       must pass a difficult resolve test to hide it away either in their account or in their domicile somewhere.</td>
                    </tr>
                    <tr>
                       <td>Social anxiety</td>
                       <td>The character does not like social situations or being around people whom he beleives might be a threat
                       to him and so fears them.</td>
                       <td>The character suffers -2 die in aggressive social sitations such as interrogation, torture or aggressive
                       negotations.</td>
                    </tr>
                    <tr>
                       <td>Submissive Disorder</td>
                       <td>Character feels the need to do as he is told no matter what the consequences are as long as someone is
                       rewarding his actions with attention. </td>
                       <td>The character will do anything he is told and must make a difficult resolve test if he disagrees with
                       actions.</td>
                    </tr>
                    <tr>
                       <td>Survivors Guilt</td>
                       <td>The character feels guilty for surviving a situation where others have died, they will want to make amends
                       for this in any way they can.</td>
                       <td>Character latches onto a recent npc/pc death and suffers a -2 die penalty to all tasks when presented or
                       experincing a similiar situation.</td>
                    </tr>
                    <tr>
                       <td>Tactile Hallucinations</td>
                       <td>The Character beleives people are touching them or imagining that somthing is touching them when nobody is
                       about. A hand on the shoulder when walking down the street, a grab when walking past a hole... So on and so forth.
                       Of course nobodies actally touching them, they just
                       beleive people are or want to.</td>
                       <td>The GM can make the character perform PERC rolls when there is nothing to percieve.  These will automatically
                       fail and should be carried out 1d4 times a session at random intervals.</td>
                    </tr>
                    <tr>
                       <td>Task</td>
                       <td>The Character beleives there is a task he must keep performing from some arbitary reason. The Task must
                       consume at least six hours of his day and be performed everyday. Examples include deciphering a code that
                       dosen't exist from random books he finds, Cataloging pieces of rubbish
                       he finds, searching for someonething that dosen't exist or is very hard to find, Writing a story that never
                       finishes. </td>
                       <td>The Task must be pointless or unfinishable. Attempting to ignore this task requires a difficult resolve
                       roll that increases by one difficulty step per day he ignores it.</td>
                    </tr>
                    <tr>
                       <td>Thought Disorder</td>
                       <td>The character thought process is reduced in such a way that they cannot even make coherant sentence or
                       thought patterns just random word senstances that have no meaning or message. The character finds focusing on
                       anything more or less impossible.</td>
                       <td>Characters must pass an challengin comprehsion roll to understand anything that comes out of the character
                       mouth, character must to the same to understand what is going on.</td>
                    </tr>
                    <tr>
                       <td>Time</td>
                       <td>The character becomes terrified at a specific time or event. Examples can include 12 O'clock, the
                       witching hour, Hyperspace travel, Sunday, Tea time, security checks, Eclipses, closing time or even
                       christmas day. </td>
                       <td>During this time the enviroment gains a fear rating equal to 1D6 plus the character resolve value. The
                       Time must be somewhat frequent or have an impact on the characters life. The GM chooses the time or event and is
                       encouraged to make it relevant to when the character gained
                       this trait.</td>
                    </tr>
                    <tr>
                       <td>Timetable</td>
                       <td>The character has a strict timetable that he has adjusted his life to and beleives certain things must
                       be done in order. He wakes everyday at a specific time and then cleans his teeth before having breakfast,
                       has lunch at mid-day and goes to bed at precicly ten thirty. The
                       timetable is unique to the individual but they beleive they must absolutly follow their artinary to the
                       letter.</td>
                       <td>If a character tries to break free of his time table and do something else he must make a difficult
                       resolve test. If he passes there is no consequence, if he fails he is at -1 die to all attribute rolls for
                       the rest of the day due to the distraction and agitation of
                       feeling that something is not right or that his day has been sullied.</td>
                    </tr>
                    <tr>
                       <td>Understanding</td>
                       <td>The Characters ability to process information is greatly hampered as their ability to comprehend
                       information becomes muddled, confused or disorganized. Characters wishing to explain things to the character
                       will have to take extra time and repeat information hoping
                       that it will get through to them.</td>
                       <td>The character must increase all COMP target numbers by three steps. This will require tests for even
                       rudimentary comprehension tasks.</td>
                    </tr>
                    <tr>
                       <td>Wrong body</td>
                       <td>The Character beleives he is stuck in the wrong body or that his body or that he was born into the wrong
                       body. He will attempt to alter it or change it but will never be satisified because no matter what he does its
                       still the wrong body.</td>
                       <td>At the earliest opputunity the character must attempt to get surgery or some kind of operation that will
                       rectify the situation. They will do anything to achieve the alteration of their appearance in order to fix this.</td>
                    </tr>
                 </table>
            </p>
        </div>
    </div>
</%def>