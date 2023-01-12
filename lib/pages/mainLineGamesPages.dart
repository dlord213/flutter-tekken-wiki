import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'package:tekken_wiki/reusable_widgets.dart';

class tekkenOnePage extends StatefulWidget {
  const tekkenOnePage({Key? key}) : super(key: key);

  @override
  State<tekkenOnePage> createState() => _tekkenOnePageState();
}

class _tekkenOnePageState extends State<tekkenOnePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return CustomScrollView(
              slivers: [
                returnSliverAppBar(
                    title: "TEKKEN (1994)", logo: "tekken_1", isWebP: false),
                SliverStickyHeader(
                    header: createContainerHeader(title: "Story"),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                              "A worldwide martial arts tournament sponsored by a giant financial group, the Mishima Zaibatsu, is nearing its finale. A large purse of prize money and the King of the Iron Fist title are the rewards - but a competitor must defeat the Zaibatsu's ruthless leader, Heihachi Mishima, to win. Only one will have the chance to defeat Heihachi and take home the prize money and fame - however, some competitors have motivations beyond wealth and notoriety."),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                              "One such competitor is Kazuya Mishima, Heihachi Mishima's son. When Kazuya was a child, Heihachi threw him off a cliff, ostensibly to find out whether he was resilient enough to inherit the Mishima Zaibatsu; Heihachi's reasoning was that, if Kazuya were truly strong enough, he would be able to survive the fall and climb back up. Kazuya barely survived the fall, which left him with the prominent scar on his chest. Fueled by hatred for his father, he enters the tournament to exact his revenge."),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                              "Kazuya reaches the final battle and defeats his father in combat. Taking his father to the very same cliff he was tossed off of in his childhood, Kazuya exacts revenge by dropping Heihachi over the cliff edge."),
                        ),
                      ]),
                    )),
                SliverStickyHeader(
                  header: createContainerHeader(title: "Gameplay"),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    createTextWithImage(
                        heading: "Kazuya vs Yoshimitsu",
                        imagePath: "tekken_1/1.webp"),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                          "Tekken was one of the earliest 3D animated fighting games, applying many of the concepts found in Virtua Fighter by Sega. As with Virtua Fighter 2 released around the same time, Tekken was also among the very first 3D animated console video games running at 60 frames per second."),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                          "Tekken dedicates a button to each limb of the fighter, making learning special attacks more of an intuitive process. The player can watch the animation on screen and figure out the appropriate command: if the character kicks low with their right leg, the move is likely to be executed by pressing down and right kick, or a similar variation."),
                    ),
                  ])),
                ),
                SliverStickyHeader(
                  header: createContainerHeader(title: "Characters"),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    children: [
                      createCharacterIcon(char: "anna", game: "1"),
                      createCharacterIcon(char: "armor king", game: "1"),
                      createCharacterIcon(char: "devil", game: "1"),
                      createCharacterIcon(char: "ganryu", game: "1"),
                      createCharacterIcon(char: "heihachi", game: "1"),
                      createCharacterIcon(char: "JACK", game: "1"),
                      createCharacterIcon(char: "jack2", game: "1"),
                      createCharacterIcon(char: "kazuya", game: "1"),
                      createCharacterIcon(char: "king", game: "1"),
                      createCharacterIcon(char: "kuma", game: "1"),
                      createCharacterIcon(char: "kuni", game: "1"),
                      createCharacterIcon(char: "law", game: "1"),
                      createCharacterIcon(char: "lee", game: "1"),
                      createCharacterIcon(char: "michelle", game: "1"),
                      createCharacterIcon(char: "nina", game: "1"),
                      createCharacterIcon(char: "paul", game: "1"),
                      createCharacterIcon(char: "wang", game: "1"),
                      createCharacterIcon(char: "yoshi", game: "1"),
                    ],
                  ),
                ),
                SliverStickyHeader(
                  header: createContainerHeader(title: "Unlockables / Secrets"),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    const ListTile(
                        title: Text("Devil Kazuya"),
                        subtitle: Text("Beat 8 stages in Galaga")),
                    const ListTile(
                        title: Text("Sub-bosses"),
                        subtitle: Text(
                            "With any character, beat every character and the sub-boss.")),
                    const ListTile(
                        title: Text("Heihachi"),
                        subtitle: Text(
                            "With any character, beat every character up to and including Heihachi without continuing.")),
                    const ListTile(
                        title: Text("Galaga Mini Game Continue Code"),
                        subtitle: Text(
                            "After you see the number of ships you've hit on the screen, press the Select button. You should hear a sound indicating it worked. You will now be able to replay that stage.")),
                  ])),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class tekkenTwoPage extends StatefulWidget {
  const tekkenTwoPage({Key? key}) : super(key: key);

  @override
  State<tekkenTwoPage> createState() => _tekkenTwoPageState();
}

class _tekkenTwoPageState extends State<tekkenTwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          returnSliverAppBar(
              title: "TEKKEN 2", logo: "tekken_2", isWebP: false),
          SliverStickyHeader(
            header: createContainerHeader(title: "Story"),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Two years have passed since Kazuya Mishima won the first King of Iron Fist Tournament, nd threw his defeated father, Heihachi Mishima, off of a cliff, presumably to his death. Kazuya chooses to hold a second tournament to mark another step on his path to domination, even as rumors that he has made a deal with the devil begin to circulate. During the course of the tournament, Kazuya meets the competitor Jun Kazama, who he views as mysterious and without fear. Later, he is shocked to discover that Heihachi survived being thrown from a cliff two years prior, and has entered the tournament. Heihachi defeats Kazuya in the final round of the tournament. He takes Kazuya’s unconscious body to an active volcano and tosses him into the crater."),
              ),
            ])),
          ),
          SliverStickyHeader(
              header: createContainerHeader(title: "Gameplay"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The gameplay in Tekken 2 is much like its predecessor, but improves on almost every attribute. It still features an infinite playing field, and uses the same fighting system that utilizes four buttons. It continues to use 2D backgrounds in its stages albeit now more detailed and occasionally moving during battle. The number of moves and combos has been doubled compared to its predecessor. Tekken 2 also had lighting effects impressive for its time, making some arenas look remarkable. Characters still looked blocky but with a noticeable polygon improvement to give them a more polished look. Additionally, the heads of fighters could now move during battle. Some technical fixes were also made by Namco."),
                ),
                createTextWithImage(
                    imagePath: "tekken_2/1.jpg",
                    heading: "Armor King vs Jack-2"),
                const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                        "Tekken 2 went through three distinct revisions. The initial arcade release, denoted as Ver.A in the test mode menu, was more similar to the first game and lacked polish, with some characters being significantly overpowered while others such as Kuma were lacking updated moves to set them apart from the previous game aside from a generic back throw.\n\nAn update was released a month later, with the arcade version proudly displaying a Ver.B logo on the title screen. Tekken 2 Ver.B featured bug fixes, damage balancing, block stun recovery, an improved juggle system, several new moves and modified AI. A second minor update for the arcades, still called Tekken 2 Ver.B on the title screen but labeled Ver.C (or Ver.D) in the test menu and on a sticker on the arcade PCB, enables all hidden characters from the beginning rather than unlocking them through Time Release, and the hidden character cheat codes are disabled, having been made redundant. The Arcade History port is based on this updated version.\n\nThe third and final revision was the PlayStation home version, which featured all of the Tekken 2 Ver.B changes plus a few bug fixes and modified AI once again.\n\nImproving upon its predecessor, the home version of Tekken 2 introduced new Team Battle, Time Attack, Survival and Practice modes alongside the previous game's Versus Mode. Additionally, the first game's Test Mode was now renamed Option Mode. Tekken 2 also introduced the option of auto-saving data to the Memory Card.")),
                createTextWithImage(
                    imagePath: "tekken_2/2.jpg", heading: "Bruce vs Alex")
              ]))),
          SliverStickyHeader(
            header: createContainerHeader(title: "Characters"),
            sliver: SliverGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0,
                childAspectRatio: 1.2,
                children: [
                  createCharacterIcon(char: "alex", game: "2"),
                  createCharacterIcon(char: "angel", game: "2"),
                  createCharacterIcon(char: "anna", game: "2"),
                  createCharacterIcon(char: "armor king", game: "2"),
                  createCharacterIcon(char: "baek", game: "2"),
                  createCharacterIcon(char: "bruce", game: "2"),
                  createCharacterIcon(char: "devil", game: "2"),
                  createCharacterIcon(char: "ganryu", game: "2"),
                  createCharacterIcon(char: "heihachi", game: "2"),
                  createCharacterIcon(char: "jack", game: "2"),
                  createCharacterIcon(char: "jun", game: "2"),
                  createCharacterIcon(char: "kazuya", game: "2"),
                  createCharacterIcon(char: "king", game: "2"),
                  createCharacterIcon(char: "kuma", game: "2"),
                  createCharacterIcon(char: "kuni", game: "2"),
                  createCharacterIcon(char: "law", game: "2"),
                  createCharacterIcon(char: "lee", game: "2"),
                  createCharacterIcon(char: "lei", game: "2"),
                  createCharacterIcon(char: "michelle", game: "2"),
                  createCharacterIcon(char: "nina", game: "2"),
                  createCharacterIcon(char: "paul", game: "2"),
                  createCharacterIcon(char: "pjack", game: "2"),
                  createCharacterIcon(char: "roger", game: "2"),
                  createCharacterIcon(char: "wang", game: "2"),
                  createCharacterIcon(char: "yoshi", game: "2"),
                ]),
          ),
          SliverStickyHeader(
            header: createContainerHeader(title: "Unlockables / Secrets"),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const ListTile(
                  title: Text("Choose Victory Animation"),
                  subtitle: Text(
                      "After winning a round and you see the replay showing, pressing each button will result in a different victory animation. This also works when the opponent wins.")),
              const ListTile(
                  title: Text("Fight as Kazuya in purple suit"),
                  subtitle: Text("Highlight Kazuya and press start button.")),
              const ListTile(
                  title: Text("Big Characters"),
                  subtitle: Text(
                      "In arcade mode while selecting your character, hold Select and press X.")),
              const ListTile(
                  title: Text("Big Head Mode"),
                  subtitle: Text(
                      "Hold the select button while choosing your character, continue holding it until the match begins.")),
              const ListTile(
                  title: Text("Fight as Alex"),
                  subtitle: Text("Highlight Roger and press Square.")),
              const ListTile(
                  title: Text("Sky Mode"),
                  subtitle: Text(
                      "	Unlock all characters, then hold Select + Up when choosing a character. Keep holding them until the fight begins.")),
              const ListTile(
                  title: Text("Wireframe mode"),
                  subtitle: Text(
                      "Unlock all characters, then hold L2 + L1 while selecting your character. Keep holding them until the match begins.")),
              const ListTile(
                  title: Text("Plump-size character"),
                  subtitle: Text(
                      "Press and hold the select button before the 'VS' screen appears. Continue to hold the button until the match begins and your character will turn fat. If you do this trick again, your character will be even fatter in the next match.")),
              const ListTile(
                  title: Text("Angel"),
                  subtitle: Text(
                      "Beat the Devil with Kazuya. Press Kick for Angel.")),
              const ListTile(
                  title: Text("Anna"),
                  subtitle: Text("Beat the game with Nina.")),
              const ListTile(
                  title: Text("Armor King"),
                  subtitle: Text("Beat the game with King.")),
              const ListTile(
                  title: Text("Baek"),
                  subtitle: Text("Beat arcade mode with Law.")),
              const ListTile(
                  title: Text("Bruce"),
                  subtitle: Text("Beat Arcade Mode with Lei")),
              const ListTile(
                  title: Text("Devil"),
                  subtitle: Text(
                      "Beat the Devil with Kazuya. Press Punch for Devil.")),
              const ListTile(
                  title: Text("Ganryu"),
                  subtitle: Text("Beat the game with Michelle.")),
              const ListTile(
                  title: Text("Kazuya"),
                  subtitle: Text(
                      "Beat Devil using any sub-boss and have every sub-boss unlocked.")),
              const ListTile(
                  title: Text("Kuma"),
                  subtitle: Text("Beat arcade mode with Paul.")),
              const ListTile(
                  title: Text("Kunimitsu"),
                  subtitle: Text("Beat arcade mode with Yoshimitsu.")),
              const ListTile(
                  title: Text("Lee"),
                  subtitle: Text("	Beat arcade mode with Heihachi.")),
              const ListTile(
                  title: Text("P. Jack"),
                  subtitle: Text("Beat arcade mode with Jack 2.")),
              const ListTile(
                  title: Text("Roger and Alex"),
                  subtitle: Text(
                      "	On stage 3, win the last round with 5% energy or less left.")),
              const ListTile(
                  title: Text("Wang Jinrey"),
                  subtitle: Text("Beat the game with Jun.")),
              const ListTile(
                  title: Text("New Title Screen (Kazuya's Face)"),
                  subtitle:
                      Text("Unlock all Sub Bosses including Alex and Roger")),
              const ListTile(
                  title: Text("Hidden Music Tracks"),
                  subtitle: Text(
                      "Put the game disk in a CD Player. The disk will have 3 tracks on it; tracks 1 and 3 are just be really long tracks that don't play anything, but the second is a hidden music track.")),
            ])),
          )
        ],
      ),
    ));
  }
}

class tekkenThreePage extends StatefulWidget {
  const tekkenThreePage({Key? key}) : super(key: key);

  @override
  State<tekkenThreePage> createState() => _tekkenThreePageState();
}

class _tekkenThreePageState extends State<tekkenThreePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomScrollView(
      slivers: [
        returnSliverAppBar(title: "TEKKEN 3", logo: "tekken_3", isWebP: true),
        SliverStickyHeader(
          header: createContainerHeader(title: "Story"),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Fifteen years after the King of Iron Fist Tournament 2, Jun Kazama is living a quiet life in Yakushima with her son, Jin Kazama. Jin’s father is Kazuya Mishima, the former owner of the Mishima Zaibatsu. Kazuya is presumed dead after being defeated in the final round of the King of Iron Fist Tournament 2 by his father, Heihachi Mishima, and thrown into a volcano."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Having reclaimed the Mishima Zaibatsu, Heihachi Mishima has established the Tekken Force, a private corporate army. One day, Heihachi learns that a Tekken Force squad conducting an excavation in Central America have been annihilated by a mysterious being. He suspects that the mysterious being is Ogre, a legendary ‘god of fighting’. Heihachi believes that capturing Ogre will give him the power to rule the world."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Following Ogre’s awakening, martial arts masters from across the world start disappearing. In Yakushima, Jun senses the impending danger and begins to prepare Jin for the outcome, instructing Jin to find Heihachi Mishima if anything happens to her. Jun’s intuition proves right, and she and Jin are attacked one night by Ogre. During the attack, Jin is knocked unconscious. When he wakes up, his surroundings have been burned to the ground and his mother is nowhere to be seen. Unbeknownst to Jin, a part of Kazuya's Devil, which sought to possess Jin in his mother's womb, returns and is able to possess him now that he no longer has Jun's protection. Devil brands Jin's upper left arm in the process."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Driven by revenge and guided by his mother’s wishes, Jin seeks out Heihachi and reveals that he is Kazuya’s son. He tells his grandfather about Ogre’s attack and asks that he be taught the means of defeating Ogre."),
            ),
            createTextWithImage(
                imagePath: "tekken_3/jin_outfit.webp", heading: "Jin's Outfit"),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "As Jin’s training progresses, Heihachi begins to suspect that his grandson possesses the same dangerous power as his father."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Four years later, Heihachi announces the King of Iron Fist Tournament 3, believing that a clash of strong fighters will draw Ogre out. Jin, who has grown into an impressive fighter, enters with the intention of killing Ogre and avenging the loss of his mother. He progresses through the tournament and reaches the final round, where he confronts Ogre’s true form. Something inside Jin snaps, and he emerges as the victorious one upon killing Ogre."),
            ),
            createTextWithImage(
                imagePath: "tekken_3/jin_tattoo.png", heading: "Jin's Tattoo"),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Moments later, Jin is gunned down by a squadron of Tekken Force led by Heihachi. Having intended on disposing of Jin from the start, Heihachi fires a final gunshot into his grandson's head. The attempt to kill Jin fails; revived by the Devil Gene within him, he reawakens and makes quick work of the soldiers. He turns his attention to Heihachi and slams him through the wall of the temple. Heihachi survives the fall, but Jin, in mid-air, sprouts black, feathery wings and strikes Heihachi one last time. He then flies off into the night, leaving his grandfather staring after him."),
            ),
            createTextWithImage(
                imagePath: "tekken_3/1.webp", heading: "Awakening")
          ])),
        ),
        SliverStickyHeader(
          header: createContainerHeader(title: "Gameplay"),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Tekken 3 maintains the same core fighting system and concept as its predecessors, but brings many improvements, including significantly more detailed graphics and animations, and faster, more fluid gameplay. Fifteen new characters were added to the game's roster"),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Tekken 3 added a wider variety of sound effects for characters. The music is also significantly different and pushed the limits of the PlayStation's graphical capabilities, and the porting from the arcade was only possible through compression."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Tekken 3 added emphasis on the third axis, allowing all characters to sidestep in or out of the background by lightly pressing the arcade stick (or tapping the controller button in the console version) towards the corresponding direction. Another big change in movement was that jumping was toned down, no longer allowing fighters to jump to extreme heights, keeping leaps to reasonable, realistic heights. It made air combat more controllable, and put more use to sidestep dodges, as jumping no longer functioned as a universal dodge move."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The improved engine allowed for quick recoveries from knock-downs, more escapes from tackles and stuns, better juggling and extra newly-created combo throws. However, the AI in Tekken 3 was also toned down compared to its predecessors, making fights significantly easier to beat."),
            )
          ])),
        ),
        SliverStickyHeader(
          header: createContainerHeader(title: "New Game Modes"),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            createTextWithImage(
                imagePath: "tekken_3/ball_1.jpg", heading: "Tekken Ball"),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "A one-on-one game of beach volleyball in which the player must use kicks and punches to knock the ball to the opponent's side."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The mode has three balls to choose from: the Beach Ball is listed as Beginner and does 60% damage; the Gum Ball is listed as Expert and does 80% damage; and the Iron Ball is listed as Grand Master and does 100% damage."),
            ),
            createTextWithImage(
                imagePath: "tekken_3/force_1.jpg", heading: "Tekken Force"),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "A player takes a character through a side-scrolling mini-game, fighting against the Tekken Force military in four stages. At the end of each stage is a boss character from the playable roster. The boss the player fights against in each stage depends on which character the player chose, with the exception of the fourth stage where the boss is Heihachi Mishima."),
            )
          ])),
        ),
        SliverStickyHeader(
          header: createContainerHeader(title: "Characters"),
          sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 6.0,
              childAspectRatio: 1.2,
              children: [
                createCharacterIcon(char: "anna", game: "3"),
                createCharacterIcon(char: "bryan", game: "3"),
                createCharacterIcon(char: "doctor", game: "3"),
                createCharacterIcon(char: "eddy", game: "3"),
                createCharacterIcon(char: "gon", game: "3"),
                createCharacterIcon(char: "heihachi", game: "3"),
                createCharacterIcon(char: "hwoarang", game: "3"),
                createCharacterIcon(char: "jack", game: "3"),
                createCharacterIcon(char: "jin", game: "3"),
                createCharacterIcon(char: "king", game: "3"),
                createCharacterIcon(char: "kuma", game: "3"),
                createCharacterIcon(char: "law", game: "3"),
                createCharacterIcon(char: "lei", game: "3"),
                createCharacterIcon(char: "mokujin", game: "3"),
                createCharacterIcon(char: "nina", game: "3"),
                createCharacterIcon(char: "ogre", game: "3"),
                createCharacterIcon(char: "paul", game: "3"),
                createCharacterIcon(char: "tiger", game: "3"),
                createCharacterIcon(char: "true ogre", game: "3"),
                createCharacterIcon(char: "xiaoyu", game: "3"),
                createCharacterIcon(char: "yoshi", game: "3"),
              ]),
        ),
        SliverStickyHeader(
          header: createContainerHeader(title: "Unlockables / Secrets"),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            const ListTile(
                title: Text("Play as Anna"),
                subtitle: Text("Hightlight Nina and Press Start.")),
            const ListTile(
                title: Text("Play as Tiger"),
                subtitle: Text("Highlight Eddy and press Start.")),
            const ListTile(
                title: Text("Choose Victory Animation"),
                subtitle: Text(
                    "After winning a round and you see the replay showing, pressing each button will result in a different victory animation. This also works when the opponent wins.")),
            const ListTile(
                title: Text("Different costumes"),
                subtitle: Text(
                    "Highlight either Law, Jin, or Xiang. Select one using the Start button.")),
            const ListTile(
                title: Text("Alternate winning pose"),
                subtitle:
                    Text("After you defeat your opponent, press LK + RK.")),
            const ListTile(
                title: Text("Unlock Gon Easily"),
                subtitle: Text(
                    "Get a high score on Survival mode, then enter the following as your name: 'GON'")),
            const ListTile(
                title: Text("Alternative End For Gun Jack"),
                subtitle: Text(
                    "Lost the game 10 times with Gun Jack and hold both kicks after every round.")),
            const ListTile(
                title: Text("Unlock Gon (Alternative Method)"),
                subtitle: Text(
                    "To unlock Gon, you must beat it in Tekken Ball (it will appear as your first opponent), or in Arcade mode (it appears randomly).")),
            const ListTile(
                title: Text("Anna's Zebra Skin costume"),
                subtitle: Text(
                    "Play with Anna 25 times in a row, then select her by pressing Start.")),
            const ListTile(
                title: Text("Dr. Bosconovitch"),
                subtitle: Text(
                    "Collect the bronze, silver and gold keys in Tekken Force by completing it three times. Then play through it one more time. After you beat the boss of the last stage, you will be taken to an underground cave and defeat Dr. Bosconovitch.")),
            const ListTile(
                title: Text("Jack's Tank Top"),
                subtitle: Text(
                    "Play as Jack 10 times, then select him by pressing Start.")),
            const ListTile(
                title: Text("Jin's School Uniform"),
                subtitle: Text(
                    "Play as Jin 50 times, then select him by pressing Start.")),
            const ListTile(
                title: Text("Tekken Ball Mode and Gon"),
                subtitle:
                    Text("Beat the game with all non-hidden game characters.")),
            const ListTile(
                title: Text("Theater Mode"),
                subtitle: Text(
                    "Beat the game in arcade mode with all non-hidden characters.")),
            const ListTile(
                title: Text("Xiaoyu's School Uniform"),
                subtitle: Text(
                    "Play as Xiaoyu 50 times, then select her by pressing Start.")),
            const ListTile(
                title: Text("School Background"),
                subtitle: Text(
                    "First you must have unlocked Jin or Xiaoyu's school uniforms. Once you've done that select a two-player game and choose Jin or Xiaoyu by pressing Triangle before your opponent selects their player. You'll then get to fight in a school yard background.")),
            const ListTile(
                title: Text("Unlock Gun Jack's Full Ending"),
                subtitle: Text(
                    "After you unlock Gun Jack's Bad Ending by beating Arcade Mode once. Save your game and beat Arcade Mode a second time to unlock Gun Jack's Good Ending. Go to Theater Mode to view his Full Ending.")),
            const ListTile(
                title: Text("Listen to a Song"),
                subtitle: Text(
                    "If you put Tekken 3 into your computer, or a CD player, and go to Track 2, you can listen to a 2:37 song called The King Of Iron Fist Tournament 3: Enter The Tekken.")),
            const ListTile(
                title: Text("Make Mokujin Sound as a Wooden Block"),
                subtitle: Text(
                    "On Mokujin's picture, hold down until the match begins.")),
            const ListTile(
                title: Text("Tekken and Tekken 2 Videos"),
                subtitle: Text(
                    "While in Theater mode, if you have save data from Tekken or Tekken 2 on your memory card. You can view any unlocked FMVs from either game.")),
          ])),
        )
      ],
    )));
  }
}

class tekkenFourPage extends StatefulWidget {
  const tekkenFourPage({Key? key}) : super(key: key);

  @override
  State<tekkenFourPage> createState() => _tekkenFourPageState();
}

class _tekkenFourPageState extends State<tekkenFourPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          returnSliverAppBar(title: "TEKKEN 4", logo: "tekken_4", isWebP: true),
          SliverStickyHeader(
            header: createContainerHeader(title: "Story"),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "After The King of Iron Fist Tournament 3, Heihachi failed to apprehend Ogre. Determined not to fail, Heihachi had his researchers gather Ogre’s skin tissue, hoof fragments, and blood samples for genetic experiments. Unfortunately, Heihachi’s goal of creating a new life form by splicing Ogre’s genome with his own was unsuccessful."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Heihachi learned, after extensive experimentation, that the Devil Gene was needed to successfully splice Ogre’s genetic code into another living organism. Unfortunately, Heihaci’s own genome lacked the Devil Gene. However, there was someone who had the gene, Jin Kazama."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Jin was shot and mortally wounded by Heihachi after defeating Ogre in The King of Iron Fist Tournament 3. As his life slipped away, Jin transformed into a devil and mysteriously vanished.\n\nAlthough his quest to find Jin became futile, Heihachi did discover a 20-year-old photograph that stirred his curiosity. The photograph had an image of a burnt corpse riddled with laceration wounds and deformed, protruding, wing-like limbs.\n\nHeihachi was convinced it was a picture of his son, Kazuya, whom he hurled into the volcano 20 years ago. With all of his resources redirected into finding the body, the search ultimately led to a biotech firm called G Corporation, a company known for making unparalleled developments in the area of biogenetics research. G Corporation found Kazuya’s body and began conducting research on his genetic data to examine the true nature of the devil that existed within him. Heihachi also found out that Kazuya’s remains and research data were stored at G Corporation’s Nebraska and Nepal research facilities, respectively.\n\nUnbeknownst to Heihachi, Kazuya was resurrected by G Corporation and had an agenda of his own. Kazuya’s aspiration was to fuse his two selves into one so that he could truly utilize the power of the Devil Gene and seek vengeance against Heihachi and the Mishima Zaibatsu."),
              ),
              createTextWithImage(
                  imagePath: "tekken_4/story_1.webp", heading: "Jin's Story"),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "On a chilly Christmas night, Heihachi decided to send his Tekken Force to infiltrate the research labs in hopes of recovering both the research data and Kazuya’s remains. The assault on the Nepal lab went smoothly, whereas the infiltration of the Nebraska facility did not go according to plan. From the helicopter, Heihachi noticed on the tactical status monitor screen that his troops met some sort of resistance. As the figure responsible for this emerged from the shadows, Heihachi was shocked to find out that it was his own son, Kazuya."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "With Heihachi ruining his plans of unification, Kazuya disappeared into the facility’s ruins after taking his anger out on Heihachi’s pitiful soldiers."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "With Kazuya back in the picture, Dr. Abel, Heihachi’s lead scientific advisor, compelled him to figure out a way to capture Kazuya immediately. With a malicious smile, Heihachi devised a way to accomplish this."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Two years have now passed since The King of Iron Fist Tournament 3. The Mishima Zaibatsu has announced The King of Iron Fist Tournament 4, with the grand prize being the sole ownership of the Mishima Zaibatsu. Kazuya enters the tournament knowing that it’s merely a trap to draw him out of hiding. To Kazuya, the prize means less than his pursuit of revenge against his father, Heihachi."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "After defeating many opponents, Kazuya arrives at Stage 7 for a match against his son, Jin Kazama. Having trained in traditional karate during the two years between the tournaments, Jin entered the The King of Iron Fist Tournament 4 to destroy the Zaibatsu and put an end to the cursed Mishima bloodline; however, he is captured by Tekken Force on the way to his match with Kazuya and taken to Hon-Maru. Faced with no opponent, Kazuya is reported as the default winner of their match. Sensing Heihachi's interference in Jin's disappearance, Kazuya proceeds to the final stage."),
              ),
              createTextWithImage(
                  heading: "Jin Kazama", imagePath: "tekken_4/story_3.jpg"),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "There, Kazuya meets Heihachi and he asks what he has done to Jin. Heihachi says that he will tell him after their fight. Kazuya loses to Heihachi and is taken by him to Hon-Maru.\n\nJin is suspended between two pillars by chains wound around his forearms."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "As Kazuya sees his son for the first time, Devil suddenly takes over. 'So, you were with him after all, my half...' Heihachi realizes Kazuya is not himself, and asks, 'Who are you?!' with Devil replying, 'I am what you refer to as 'Devil.' Twenty years ago, I lost a part of myself when you nearly killed me. Now, I'll retrieve what's rightfully mine from him! The time has come for my resurrection!'"),
              ),
              createTextWithImage(
                  imagePath: "tekken_4/story_2.jpg", heading: "Kazuya Mishima"),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Devil goes on: 'You saved me the trouble of having to search for him. For your troubles, I'll give you a taste of my power!' He uses a telekinetic ability to knock Heihachi out of the room, and tries to draw Jin's devil out of him to reclaim it. Devil is unable to trigger Jin's full devil transformation, and speculates whether it is because of Jin's 'Kazama blood'. With some effort, Kazuya wrests back control of himself and, implying that he has successfully 'fused his two selves', says, 'I see... Didn't know about this method of unifying our power.' He calls for Jin to rise."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Jin stirs, and frees himself from the chains. He seethes, 'You! If only you were dead... Once I kill you, it'll all be over!' Jin and Kazuya fight, with Jin emerging as the victor."),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Heihachi reemerges and mocks Kazuya's prone form: 'What a pathetic wretch... You worthless coward.' He challenges Jin with the intention of killing him and taking his Devil Gene for himself. However, Heihachi is also defeated by Jin."),
              ),
              createTextWithImage(
                  imagePath: "tekken_4/story_5.jpg", heading: "Jin with Wings"),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    "Jin holds Heihachi up by his gi, and the wings of Jin's Devil form emerge as he prepares to deliver the killing blow. However, before the strike can make contact, a bright light distracts Jin, and he turns to see a brief vision of his mother, Jun Kazama. Struck with emotion and clarity of mind, he lets Heihachi go. 'Thank my mother... Jun Kazama.' he tells Heihachi, before walking away and taking flight through Hon Maru's roof. Several feathers drift to the floor, one of which is white rather than black."),
              ),
            ])),
          ),
          SliverStickyHeader(
            header: createContainerHeader(title: "Gameplay"),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const Text(
                  "Tekken 4 introduced significant new gameplay changes from the previous games in the series. For the first time, it allowed players to maneuver around an arena interacting with walls and other obstacles for extra damage. The game engine had been tweaked to be more focused on the environment, causing the characters to move more slowly and fluidly than in Tekken Tag Tournament and Tekken 3."),
              const Text(
                  "The game introduced a brand new graphics system, that featured increased lighting, dynamic physics, and smoother surfaces. The music in Tekken 4 is also different from Tekken 3, toning down the energy for a calmer and a more diverse soundtrack. Tekken 4 heavily toned down combos as a result, arguably having them at the weakest in the series."),
              createTextWithImage(
                  imagePath: "tekken_4/fight.png",
                  heading: "Kazuya vs Hwoarang"),
              const Text(
                  "The Sidestep was also nerfed to cover much less distance in comparison to previous games, but the game also introduced the mechanic of side walking to allow continuous movement to the sides. Notably, sidestepping and side walking were moved to the command of u or b. Jumping could only be done forward unlike all other installments, while it was no longer possible to move backwards while crouching; something that would actually remain in succeeding games."),
              const Text(
                  "In high-level tournament play, it became apparent that the engine changes caused the game to heavily favor quick jabs and punches, upsetting some fans due to the decline in usefulness of more complex moves and strategies. This also came at a time when jabs were not at a universal speed, with characters like Steve Fox having an easy advantage due to his jab being faster than most of the others."),
              createTextWithImage(
                  imagePath: "tekken_4/fight-2.jpg", heading: "Steve Fox"),
              const Text(
                  "Jin Kazama especially was very overpowered, and if one were to look at the tournament records, he was used by nearly every top player. In terms of technicals, the PlayStation 2 version of Tekken 4 was also the first in the series to be playable in higher quality progressive scan display mode, noticeably a feature absent from its successor Tekken 5. The PAL version is also playable at 60 Hz.")
            ])),
          ),
          SliverStickyHeader(
              header: createContainerHeader(title: "Tekken Force"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Text(
                    "Tekken 4 includes a beat em' up mini-game available from the outset called Tekken Force. Similar to the previous minigame found in Tekken 3, it presents the player with an over-the-shoulder perspective as they fight wave upon wave of Heihachi Mishima's Tekken Force soldiers through four stages, eventually facing Heihachi himself. The player can pick up health and power-ups while they fight waves of enemies. In the mini-game, it is discovered that the Tekken Force soldiers possesses different ranks in the organization, evident in different amounts of stamina, strength, and skill."),
                createTextWithImage(
                    imagePath: "tekken_4/force-1.jpg", heading: "Hwoarang"),
                createTextWithImage(
                    imagePath: "tekken_4/force-2.jpg", heading: "Jin")
              ]))),
          SliverStickyHeader(
            header: createContainerHeader(title: "Characters"),
            sliver: SliverGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0,
                childAspectRatio: 1.2,
                children: [
                  createCharacterIcon(char: "bryan", game: "4"),
                  createCharacterIcon(char: "christie", game: "4"),
                  createCharacterIcon(char: "combot", game: "4"),
                  createCharacterIcon(char: "eddy", game: "4"),
                  createCharacterIcon(char: "heihachi", game: "4"),
                  createCharacterIcon(char: "hwoarang", game: "4"),
                  createCharacterIcon(char: "jin", game: "4"),
                  createCharacterIcon(char: "julia", game: "4"),
                  createCharacterIcon(char: "kazuya", game: "4"),
                  createCharacterIcon(char: "king", game: "4"),
                  createCharacterIcon(char: "kuma", game: "4"),
                  createCharacterIcon(char: "law", game: "4"),
                  createCharacterIcon(char: "lee", game: "4"),
                  createCharacterIcon(char: "lei", game: "4"),
                  createCharacterIcon(char: "marduk", game: "4"),
                  createCharacterIcon(char: "miharu", game: "4"),
                  createCharacterIcon(char: "nina", game: "4"),
                  createCharacterIcon(char: "panda", game: "4"),
                  createCharacterIcon(char: "paul", game: "4"),
                  createCharacterIcon(char: "steve", game: "4"),
                  createCharacterIcon(char: "violet", game: "4"),
                  createCharacterIcon(char: "xiaoyu", game: "4"),
                  createCharacterIcon(char: "yoshi", game: "4"),
                ]),
          ),
          SliverStickyHeader(
            header: createContainerHeader(title: "Unlockables / Secrets"),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const ListTile(
                  title: Text("Attack All Enemies (Tekken Force Mode)"),
                  subtitle: Text(
                      "When using a move combination with King in Tekken Force mode, it will damage all enemies standing close to you as well. Though it makes fights easy, it tends to eat up valuable time.")),
              const ListTile(
                  title: Text("Display Attack Names during game."),
                  subtitle: Text(
                      "In Arcade/Time Attack/Team Battle/VS mode, press Select during the game and you will see the names of your attack moves. Every time you enter a command attack, its Japanese name will be displayed.")),
              const ListTile(
                  title: Text("Practice Mode Move Percentage"),
                  subtitle: Text(
                      "Enter Practice mode and select any character. Then press start and choose the command list. Now press and hold any of the shoulder buttons (R1,R2,L1,L2) and you should see the precentage of how many times you have performed that move in practice mode instead of the button combination for the move.")),
              const ListTile(
                  title: Text("Unlock Theater Mode"),
                  subtitle: Text("Beat the game once in Story mode.")),
              const ListTile(
                  title: Text("Choose Victory Animation"),
                  subtitle: Text(
                      "After winning a round and you see the replay showing, pressing each button will result in a different victory animation. This also works when the opponent wins.")),
              const ListTile(
                  title: Text("Alternate Ling Xiaoyu costume"),
                  subtitle: Text(
                      "After beating story mode with Ling Xiaoyu highlight her in the character selection screen and press Triangle.")),
              const ListTile(
                  title: Text("Play as Eddy Gordo"),
                  subtitle: Text(
                      "You must first complete story mode once with Christie. On character select screen, highlight Christie and press TRIANGLE.")),
              const ListTile(
                  title: Text("Play as Miharu"),
                  subtitle: Text(
                      "You must first complete story mode once with Xiaoyu. During character select screen, highlight Xiaoyu and press CIRCLE.")),
              const ListTile(
                  title: Text("Play as Panda"),
                  subtitle: Text(
                      "In the character select screen highlight Kuma and press either Triangle or Circle.")),
              const ListTile(
                  title: Text("Play As Violet"),
                  subtitle: Text(
                      "Highlight Lee at the character selection screen and press Circle.")),
              const ListTile(
                  title: Text("Dojo Stage"),
                  subtitle: Text("Clear Tekken Force mode.")),
              const ListTile(
                  title: Text("Statue Stage"),
                  subtitle: Text("Complete Story Mode with Steve Fox.")),
            ])),
          )
        ],
      ),
    ));
  }
}

class tekkenFivePage extends StatefulWidget {
  const tekkenFivePage({Key? key}) : super(key: key);

  @override
  State<tekkenFivePage> createState() => _tekkenFivePageState();
}

class _tekkenFivePageState extends State<tekkenFivePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            returnSliverAppBar(
                title: "TEKKEN 5", logo: "tekken_5", isWebP: true),
            SliverStickyHeader(
              header: createContainerHeader(title: "Story"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The King of Iron Fist Tournament 4 concluded with a face-off between three generations of the Mishima family – Heihachi Mishima, Kazuya Mishima, and Jin Kazama – in Hon-Maru. Jin ultimately defeated his grandfather and father and fled the temple in his devil form."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Shortly afterwards, just as Heihachi and Kazuya are coming to, numerous Jack-4 robots deployed by G Corporation crash through Hon-Maru's walls and attack. Kazuya and Heihachi begin fighting as a team against the robots. During the battle, Kazuya escapes after betraying Heihachi and throwing him into the path of the robots. While Heihachi is restrained, the robots self-destruct, destroying Hon-Maru. A mysterious character, Raven, watches the scene from a nearby cliff."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Meanwhile, Jin Kazama's Devil Gene causes him to lose control. He blacks out shortly after fleeing Hon-Maru and wakes up in a destroyed forest. He realizes that his devil form caused the destruction. Jin retreats to Yakushima, but is plagued by nightmares that trigger his Devil Gene. Realizing he cannot go on like this, he sets out to try and destroy the evil at its root."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The King of Iron Fist Tournament 5 is announced by the Mishima Zaibatsu. With Heihachi Mishima believed dead, it is unclear to the competitors who has called the competition."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Jin enters the tournament and makes it to the final round, where he is confronted with the monstrous form of his great grandfather, Jinpachi Mishima. Jinpachi was imprisoned beneath Hon-Maru 44 years ago by Heihachi and has been possessed by a malevolent entity."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/story-1.jpg", heading: "Jin Kazama"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Jinpachi was finally freed from his prison when the Jack-4s destroyed Hon-Maru. Now, the mysterious entity is consuming Jinpachi's mind. Jinpachi announced the tournament with the hope that someone would emerge with the power to kill him and put an end to the entity’s reign of terror before it starts. The entity is implied to have affected Jin’s Devil Gene, triggering the evil that had built up inside him.\n\nJin defeats Jinpachi Mishima, who dissolves into dust and disappears. Now, Jin is the owner of the Mishima Zaibutsu. He assumes the throne and smiles in a sinister way, hinting at events to follow."),
                ),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Gameplay"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Tekken 5 is credited for taking the series back to its roots. It incorporates a faster, more fluid fighting system, improved graphics, returning characters, and some of the Tekken series' trademark infinite stages. New to Tekken 5 is the Crush System which affects the vulnerability of a character while they attack. For example, a move with jumping properties, such as a hop kick, will be completely invulnerable during most of its animation time to all of an opponent's low attacks."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/menu.jpg", heading: "Main Menu"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "It also retains its wall juggling concept from Tekken 4, but the element is effectively less easy to abuse and easier to defend against. Tekken 5 also introduced a Ranking system for the first time."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The home version is a collector's edition of sorts, as it includes full arcade emulations of Tekken, Tekken 2, Tekken 3 and StarBlade. Tekken 5 also allowed players to customize their fighter for the first time, allowing them to change the colors of their outfits, buy additional costumes, and equip them with items by using money gained from playing the Story, Survival, Time Attack, the side-story Devil Within, and Arcade Battle modes."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/costume.webp",
                    heading: "Asuka's Costume"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "A number of characters who were absent from Tekken 3 or Tekken 4 returned, such as Anna Williams, Bruce Irvin, Wang Jinrei and others. This, combined with seven newly introduced characters, gave Tekken 5 a roster of 37 characters, almost as many as the 'all-stars' Tekken Tag Tournament game."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/selection.jpg",
                    heading: "Selection Screen"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Due to the huge imbalance in the original version of the game, most notably concerning the likes of Steve and Kazuya, an arcade-exclusive update was released, known as Tekken 5.1. Aside from attempting to balance the game (ground moves now inflicted 70% damage instead of 100%), 5.1 also changed the health bar from yellow to green."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/fight-2.jpg", heading: "Fight")
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Devil Within (Game Mode)"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The Devil Within mode is a fighting minigame in direct lineage to the Tekken Force modes in Tekken 3 and Tekken 4. This minigame follows Jin Kazama as he searches G Corporation after hearing rumours that his missing mother may be there. Being somewhat story oriented, the player is not permitted to use their own choice of characters like previous iterations."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Along with fighting various Jack models and G Corp minions in the mini-game, the player must pursue minor key quests to proceed. The game has five bosses: Modified Gun Jack, Clone-Heihachi, True Ogre, the Soul Sphere, and Monstrous Ogre. This mode is one of the two ways to unlock the playable version of Devil Jin."),
                ),
                createTextWithImage(
                    imagePath: "tekken_5/devilwithin.jpg", heading: "Gameplay"),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Characters"),
              sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: 1.2,
                  children: [
                    createCharacterIcon(char: "anna", game: "5"),
                    createCharacterIcon(char: "asuka", game: "5"),
                    createCharacterIcon(char: "baek", game: "5"),
                    createCharacterIcon(char: "bruce", game: "5"),
                    createCharacterIcon(char: "bryan", game: "5"),
                    createCharacterIcon(char: "christie", game: "5"),
                    createCharacterIcon(char: "devil", game: "5"),
                    createCharacterIcon(char: "eddy", game: "5"),
                    createCharacterIcon(char: "feng", game: "5"),
                    createCharacterIcon(char: "ganryu", game: "5"),
                    createCharacterIcon(char: "heihachi", game: "5"),
                    createCharacterIcon(char: "hwoarang", game: "5"),
                    createCharacterIcon(char: "jack", game: "5"),
                    createCharacterIcon(char: "jin", game: "5"),
                    createCharacterIcon(char: "jinpachi", game: "5"),
                    createCharacterIcon(char: "julia", game: "5"),
                    createCharacterIcon(char: "kazuya", game: "5"),
                    createCharacterIcon(char: "king", game: "5"),
                    createCharacterIcon(char: "kuma", game: "5"),
                    createCharacterIcon(char: "law", game: "5"),
                    createCharacterIcon(char: "lee", game: "5"),
                    createCharacterIcon(char: "lei", game: "5"),
                    createCharacterIcon(char: "marduk", game: "5"),
                    createCharacterIcon(char: "mokujin", game: "5"),
                    createCharacterIcon(char: "nina", game: "5"),
                    createCharacterIcon(char: "panda", game: "5"),
                    createCharacterIcon(char: "paul", game: "5"),
                    createCharacterIcon(char: "raven", game: "5"),
                    createCharacterIcon(char: "roger", game: "5"),
                    createCharacterIcon(char: "steve", game: "5"),
                    createCharacterIcon(char: "wang", game: "5"),
                    createCharacterIcon(char: "xiaoyu", game: "5"),
                    createCharacterIcon(char: "yoshi", game: "5"),
                  ]),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Unlockables / Secrets"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const ListTile(
                    title: Text("Alternate Mokujin sounds"),
                    subtitle: Text(
                        "To hear different hit sounds for Mokujin, hold DOWN on the D-Pad or joystick before a match in which you are controlling him. Mokujin will now sound like a block of wood when damaged.")),
                const ListTile(
                    title: Text("Arcade History Dip Switches"),
                    subtitle: Text(
                        "While at the Press Start screen for any of the Arcade History games, hold the select button and you will be given a list of dip switches. You can use these for such things as changing number of rounds or unlocking hidden characters, such as Baek in Tekken 2.")),
                const ListTile(
                    title: Text("Choose Victory Animation"),
                    subtitle: Text(
                        "After winning a round and you see the replay showing, pressing each button will result in a different victory animation. This also works when the opponent wins.")),
                const ListTile(
                    title: Text("Chooses Female Mokujin"),
                    subtitle: Text("Press X while selecting Mokujin")),
                const ListTile(
                    title: Text("Chooses Panda"),
                    subtitle: Text("Press X while selecting Kuma")),
                const ListTile(
                    title: Text("Easy rank-up in Arcade Mode"),
                    subtitle: Text(
                        "When playing arcade mode simply quit the match before you lose the second round and you won't get a demotion or lose any experience.")),
                const ListTile(
                    title: Text("Asuka Black Geisha Costume"),
                    subtitle: Text(
                        "Circle button (After purchasing her extra costume for 500,000)")),
                const ListTile(
                    title: Text("Asuka School Uniform"),
                    subtitle: Text(
                        "Triangle button (After purchasing her extra costume for 500,000)")),
                const ListTile(
                    title: Text("Jinpachi's Movie"),
                    subtitle: Text(
                        "To unlock Jinpachi's movie in Theater mode, you have to lose to him and get a game over using any character in Story Battle mode.")),
                const ListTile(
                    title: Text("Stage Select for Devil Within"),
                    subtitle: Text(
                        "Beat Devil Within once to unlock the stage select feature.")),
                const ListTile(
                    title: Text("Star Blade in Arcade History"),
                    subtitle: Text(
                        "You have to unlock Star Blade from Devil Within. Go to the first room in Stage 4-2, there is a breakable wall underneath the higher ledge. Transform to Devil Jin and press L1+Square to blast at the wall.\n\nThere will be some tiles appear after the wall is destroyed. Jump over the tiles and move on to the next room. There will be a spaceship from Star Blade in the middle of the room. Collect it and continue to beat Stage 4 to unlock Star Blade.")),
                const ListTile(
                    title: Text("Theater Mode"),
                    subtitle: Text(
                        "Finish Story mode once using any character to unlock Theater mode. Movies for each character will be unlock once you finish their story.")),
                const ListTile(
                    title: Text("Final Stage 2"),
                    subtitle: Text(
                        "Play 200 matches in arcade mode or beat the Devil Within game.")),
                const ListTile(
                    title: Text("Unlocking Random"),
                    subtitle: Text(
                        "When you unlock Heihachi you will also unlock Random for Character selection.")),
                const ListTile(
                    title: Text("Hidden Anna Scene"),
                    subtitle: Text(
                        "In the fourth Story Mode match against Lee, lose to him on purpose and you'll see Anna being insulted by him.")),
                const ListTile(
                    title: Text("Hidden Marshall Law scene"),
                    subtitle: Text(
                        "While playing with Law in story mode, lose the fight against Paul to get a short scene.")),
                const ListTile(
                    title: Text("Hidden Yoshimitsu Scene"),
                    subtitle: Text(
                        "To see this interesting scene featuring Yoshimitsu and Raven start a story mode game and choose Yoshimitsu. When you get to the fourth fight which should be against Raven, loose on purpose. A funny scene between the two combatants should come up.")),
                const ListTile(
                    title: Text("Perform Jin's Secret Win Pose"),
                    subtitle: Text(
                        "Jin has a different Win Pose. During replay hold X+O and he will say: The Mishima Bloodline ends here!")),
                const ListTile(
                    title: Text("Play as Schoolgirl Ling"),
                    subtitle: Text(
                        "Ling has a fifth costume that can be selected by pressing the 'L1' button.")),
                const ListTile(
                    title: Text("Play only as Devil Jin in Devil Within"),
                    subtitle: Text(
                        "After beating all stages at least in Medium difficulty, you can go to New Game or Stage Select and before starting the game, hold Select, L2 and R3 (press down and hold Right Stick) and then start the game. You will play only as Devil Jin without a dropping health bar but your ranged attacks still need you to fill the red bar.")),
                const ListTile(
                    title: Text("Secret Ling winning pose."),
                    subtitle: Text(
                        "When dressed in Ling's schoolgirl outfit, win a battle and as soon as it plays the replay hold down Triangle and Square and you will see her secret pose.")),
              ])),
            )
          ],
        ),
      ),
    );
  }
}

class tekkenSixPage extends StatefulWidget {
  const tekkenSixPage({Key? key}) : super(key: key);

  @override
  State<tekkenSixPage> createState() => _tekkenSixPageState();
}

class _tekkenSixPageState extends State<tekkenSixPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            returnSliverAppBar(
                title: "TEKKEN 6", logo: "tekken_6", isWebP: true),
            SliverStickyHeader(
              header: createContainerHeader(title: "Story"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Following Jin Kazama's victory against his great-grandfather, Jinpachi Mishima, in the previous King of Iron Fist Tournament, he is now the new head of the Mishima Zaibatsu special forces. Jin uses the company's resources to declare independence, becoming a global superpower, severing its national ties and openly declaring war against all nations over the following year. Meanwhile, Kazuya Mishima, Jin's father, who has risen to lead G Corporation, places a bounty on his son's head. In retaliation, Jin announces the sixth King of Iron Fist Tournament to lure Kazuya out."),
                ),
                createTextWithImage(
                    imagePath: "tekken_6/story-2.jpg", heading: "Azazel"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "As the war continues to erupt, the field leader of Mishima Zaibatsu's Tekken Force, Lars Alexandersson, has rebelled from the army along with several of his soldiers. However, Lars loses his memory during an attack by the G Corporation and spends some time recovering it. Accompanied by an android, Alisa Bosconovitch, Lars ventures throughout the world, avoiding the Mishima Zaibatsu's manhunt for him while also trying to recover his past.\n\nIt is eventually revealed that Lars is actually the illegitimate son of Heihachi Mishima, who has gone into hiding since his supposed demise in the last tournament, and has been trying to take the Mishima Zaibatsu from Jin's hands. After coming into contact with several allies, including his adoptive brother, Lee Chaolan, Lars confronts the G Corporation and Mishima Zaibatsu's headquarters. Jin reveals he had sent Alisa to spy on Lars' actions all along. Taking control of Alisa, Lars is forced to confront his former teammate, who leaves with Jin to Egypt."),
                ),
                createTextWithImage(
                    imagePath: "tekken_6/story-1.jpg",
                    heading: "Kazuya's Campaign"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Helped by one of his allies, Raven, Lars goes to Egypt. He meets an astrologist named Zafina who fears an ancient evil that will destroy the world: Azazel. Azazel is a demonic monster currently bound in an ancient temple. Lars confronts his half-brother Kazuya in front of the door leading to Azazel's chamber and fights him. As Kazuya escapes, Lars and Raven seemingly defeat Azazel. Outside the temple, Lars is forced to damage the opposing Alisa. Enraged, Lars beats up Jin, when he mocks her Alisa's failure. Following his defeat, Jin admits that his reason for launching the war was to awaken Azazel as it can only take a physical form through the negative energies of the world, and destroy him. In doing this, he would free himself from the Devil Gene in his body. Revealing Azazel can only be destroyed by someone with the Devil Gene, Jin confronts and attacks the revived Azazel, sending them both plummeting to the desert.\n\nLars requests Lee to fix Alisa and goes on another mission. Raven unearths Jin's body in the desert and notes that Jin still has the Devil mark on his arm."),
                ),
                createTextWithImage(
                    imagePath: "tekken_6/story-3.webp", heading: "Devil Jin")
              ])),
            ),
            SliverStickyHeader(
                header: createContainerHeader(title: "Gameplay"),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "A new gameplay feature in Tekken 6 called the 'rage' system has been added, giving characters more damage per hit when their health is below a certain point. Once activated, a reddish energy aura appears around the character, and their health bar starts to flicker in red. The rage aura can be customized with different colors and effects to appear like fire, electricity, and ice, among others."),
                  ),
                  createTextWithImage(
                      heading: "Rage System", imagePath: "tekken_6/rage.jpg"),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Another gameplay feature added is the 'bound' system. Every character has several moves that, when used on an opponent that is currently midair in a juggle combo, will cause the opponent to be smashed hard into the ground, bouncing them off the floor in a stunned state and leaving them vulnerable to another combo or additional attack. As of the Bloodline Rebellion update, successfully parrying a low attack will also put a character into a bound state."),
                  ),
                  createTextWithImage(
                      heading: "Bound System", imagePath: "tekken_6/bound.gif"),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Tekken 6 features bigger stages with more interactivity than its predecessors, such as featuring a new set of Stage Gimmicks where walls or floors can be broken to reveal extended fighting areas. It also has a large number of stages, almost four times more than Tekken 5 and more than double that of Tekken 2 that had the most before. The character customization feature has been enhanced, and certain items have implications in some aspects of gameplay."),
                  ),
                  createTextWithImage(
                      heading: "Selection Screen",
                      imagePath: "tekken_6/select.jpg"),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "The Online Modes are made up of Ranked Matches and Player Matches, a basis that has stayed on for TTT2 and Tekken 7. Ranked Matches is an online versus mode, where the player can promote their character to a higher ranking. Player Matches mode is also a versus mode, however the matches are not ranked and the player is free to play against an online opponent of choice."),
                  ),
                  createTextWithImage(
                      heading: "Customization",
                      imagePath: "tekken_6/customize.jpg")
                ]))),
            SliverStickyHeader(
              header: createContainerHeader(title: "Scenario Campaign"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "The console versions (excluding the PSP version) also include an extra mode entitled 'Scenario Campaign'. In this mode, the player can move freely in an environment similar to that of a third-person role-playing game. Players can also pick up weapons such as poles and Gatling guns, along with lootable items, money, and power-ups which can be found inside crates that are scattered all throughout the playing environment. Players can move freely between fights, but when a group of enemies are encountered, the gameplay switches to the traditional, two-dimensional Tekken style. This mode originally only had single player offline. Namco released a patch on January 18, 2010, that allows online Co-op mode for Scenario Campaign. Both the PlayStation 3 and Xbox 360 versions of the game include an online versus multiplayer mode over PlayStation Network and Xbox Live respectively."),
                ),
                createTextWithImage(
                    heading: "Gameplay", imagePath: "tekken_6/campaign.jpg")
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Characters"),
              sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: 1.2,
                  children: [
                    createCharacterIcon(char: "alisa", game: "6"),
                    createCharacterIcon(char: "anna", game: "6"),
                    createCharacterIcon(char: "armor king", game: "6"),
                    createCharacterIcon(char: "asuka", game: "6"),
                    createCharacterIcon(char: "azael", game: "6"),
                    createCharacterIcon(char: "baek", game: "6"),
                    createCharacterIcon(char: "bruce", game: "6"),
                    createCharacterIcon(char: "bob", game: "6"),
                    createCharacterIcon(char: "bryan", game: "6"),
                    createCharacterIcon(char: "christie", game: "6"),
                    createCharacterIcon(char: "devil", game: "6"),
                    createCharacterIcon(char: "dragunov", game: "6"),
                    createCharacterIcon(char: "eddy", game: "6"),
                    createCharacterIcon(char: "feng", game: "6"),
                    createCharacterIcon(char: "ganryu", game: "6"),
                    createCharacterIcon(char: "heihachi", game: "6"),
                    createCharacterIcon(char: "hwoarang", game: "6"),
                    createCharacterIcon(char: "jack", game: "6"),
                    createCharacterIcon(char: "jin", game: "6"),
                    createCharacterIcon(char: "julia", game: "6"),
                    createCharacterIcon(char: "kazuya", game: "6"),
                    createCharacterIcon(char: "king", game: "6"),
                    createCharacterIcon(char: "kuma", game: "6"),
                    createCharacterIcon(char: "lars", game: "6"),
                    createCharacterIcon(char: "law", game: "6"),
                    createCharacterIcon(char: "lee", game: "6"),
                    createCharacterIcon(char: "lei", game: "6"),
                    createCharacterIcon(char: "leo", game: "6"),
                    createCharacterIcon(char: "lili", game: "6"),
                    createCharacterIcon(char: "marduk", game: "6"),
                    createCharacterIcon(char: "miguel", game: "6"),
                    createCharacterIcon(char: "mokujin", game: "6"),
                    createCharacterIcon(char: "nina", game: "6"),
                    createCharacterIcon(char: "panda", game: "6"),
                    createCharacterIcon(char: "paul", game: "6"),
                    createCharacterIcon(char: "raven", game: "6"),
                    createCharacterIcon(char: "roger", game: "6"),
                    createCharacterIcon(char: "steve", game: "6"),
                    createCharacterIcon(char: "wang", game: "6"),
                    createCharacterIcon(char: "xiaoyu", game: "6"),
                    createCharacterIcon(char: "yoshi", game: "6"),
                    createCharacterIcon(char: "zafina", game: "6"),
                  ]),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Unlockables / Secrets"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const ListTile(
                    title: Text("Selectable Win Poses"),
                    subtitle: Text(
                        "Just before the win sequence plays at the end of a match, hold left punch, right punch, left kick or right kick to select your win pose. Some characters may have more or less win poses than others.")),
                const ListTile(
                    title: Text("Comic Effect in English and Japanese"),
                    subtitle: Text("Beat the Last level of Scenario Mode.")),
              ])),
            )
          ],
        ),
      ),
    );
  }
}

class tekkenSevenPage extends StatefulWidget {
  const tekkenSevenPage({Key? key}) : super(key: key);

  @override
  State<tekkenSevenPage> createState() => _tekkenSevenPageState();
}

class _tekkenSevenPageState extends State<tekkenSevenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            returnSliverAppBar(
                title: "TEKKEN 7", logo: "tekken_7", isWebP: true),
            SliverStickyHeader(
              header: createContainerHeader(title: "Story"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "After the events of Tekken 6, though Azazel was destroyed by Jin Kazama, the war between the Mishima Zaibatsu and G Corporation continues to ravage the world. The game's story is told from the perspective of a reporter whose wife and son are killed in the crossfire, leading him to begin writing an exposé on the Mishima Zaibatsu and G Corporation. Nina Williams leads the Zaibatsu in Jin's absence, attempting to locate him, but Heihachi Mishima takes advantage of the vacuum of power and forces Nina to work for him, regaining control of the Zaibatsu. Heihachi makes a deal with Claudio Serafino, head of the powerful Sirius Marksmen organization, to help him expose his son, G Corporation head Kazuya Mishima, believing public opinion will shift in the Zaibatsu's favor if Kazuya's Devil Gene is revealed. Claudio senses a powerful force in the Far East that is unconnected to either Jin or Kazuya."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/story-3.gif",
                    heading: "Kazuya & Akuma"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The reporter researches the Mishima family history, learning that Heihachi's coup against his father Jinpachi and the death of his wife Kazumi both occurred in the same year he threw his son Kazuya into a ravine. Meanwhile, the United Nations intelligence group has located Jin, but he evades capture long enough to be rescued by his half-uncle Lars Alexandersson. Lars takes Jin to recuperate at Violet Systems, where Jin's adoptive uncle Lee Chaolan has repaired Alisa Bosconovitch following her seemingly permanent shutdown in the previous game. The Zaibatsu attacks the compound, but the trio is able to secure Jin. The reporter, having rendezvoused with Lee and Lars, tries to kill Jin in his sleep, but is discouraged by Lars, who says Jin is the only person capable of stopping the conflict. According to Lee, the reason behind Heihachi fathering Lars was to confirm that he did not possess the Devil Gene, proving it originated from the Hachijos, Kazumi's family."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/story-2.gif", heading: "Claudio"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The force sensed by Claudio is eventually revealed to be Akuma, who made a promise to Kazumi that he would kill Heihachi and Kazuya if she fails to, as she predicted both of them would engulf the world in war and destruction. He defeats Heihachi after their temporary alliance on fending off an attack by an army of Jack-6's at the Mishima Dojo, and proceeds to G Corporation's Millennium Tower. Heihachi survives, but declares himself dead to the public to continue his plans in secret. He then captures and spreads images of a transformed Kazuya worldwide before using an orbital laser weapon to obliterate Millennium Tower. Kazuya survives the attack and destroys the satellite, with the wreckage destroying a town and again slandering the Zaibatsu.\n\nThe reporter uses this opportunity to inform Zaibatsu about his exposé, but to his surprise, Heihachi offers to meet him in person. Heihachi recounts his love of Kazumi and the night he learned that she possessed the Devil Gene and was sent by her family to kill him, regretfully being forced to kill her in self-defense, which eventually marked the feud amongst the Mishima clansmen as of the present. Suspecting that Kazuya had inherited the Devil Gene, Heihachi threw him off a cliff, believing the boy's survival would confirm his fears. Heihachi has the reporter escorted back to Lars before traveling to a volcano for a final battle with Kazuya. Vengeful over his parents' betrayals, with Heihachi being the one who never told him about Kazumi's assassinations on them before her death in the first place, Kazuya finally kills Heihachi in battle and throws his body into the volcano. Moments later, Akuma appears and attacks Kazuya; the result of their battle is unknown."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/story-1.gif",
                    heading: "Heihachi vs Kazuya"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "In the aftermath, Jin awakens and meets with Lee, Lars, and Alisa, promising to put an end to the war once and for all by defeating Kazuya. The reporter, reflecting on all he has learned, completes and publishes his exposé."),
                ),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Gameplay"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "The combo system in Tekken 7 retains some of the aspects of Tekken Revolution, in which it is no longer possible to bound a character during a combo."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/screw.gif", heading: "King's Screw"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "In order to compensate for the lack of bounds, many moves were given new combo dynamics in order to extend combos. Low parries will still cause a bound effect as they do in Tekken 6: Bloodline Rebellion."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Screw  moves are the new staple for many juggle-based combos, as the juggle version of screw property makes the player’s juggled opponent spin and land in a very vulnerable slump-like state where extra combos and damage are guaranteed; may also be referred to as kirimomi or tailspin."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "One of the new features is the introduction of a new type of move called Power Crush. These moves absorb damage from a mid or a high attack, and it still continues despite taking damage."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/power-crush.gif",
                    heading: "Kazuya's Crush"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "After the inclusion of Geese Howard, Wall Bounce was later applied to the rest of the characters in Season 2. Wall Bounce can only be applied by certain moves with pushback properties, when the opponent is standing/crouching."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/wall-bounce.gif",
                    heading: "Hwoarang's Bounce Move"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Auto Combo, re-introduced in Season 2, as it was originally Story Mode only on certain main story’s chapters. It can only be applied by pressing either LP or RP for mostly three times respectively. Players can set Auto Combo on or off for the gameplay."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Rage Art, an additional, last resort attack a character can use while in Rage Mode, which occurs with less than 25% health remaining and is indicated by their health bar flashing red."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/rage-art.gif", heading: "Rage Art"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Rage Drive, functioning the same as a Rage Art. Rage Drives are different in that they do not cause a cinematic string of attacks and instead can be combo-ed out of once landed. They generally have extra effects that normal moves do not have."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/rage-drive.gif",
                    heading: "Rage Drive"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Stage Effects, Like in Tekken 6 and Tekken Tag Tournament 2, Stage Gimmicks also return, including the Balcony Break introduced in Tag 2. Floor Break and balcony breaks now cause an effect similar to a Tag Assault in Tag 2 where the opponent is flung up instead of into a bound state. Wall Breaks have not been affected. On initial release, only one stage in Tekken 7 had floor breaks and, for the first time, had several within the same stage. As of the release of Season Pass 3 DLC, there are now two stages with floor breaks: Forgotten Realm and Cave of Enlightenment."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Tekken 7 changes certain movement mechanics, such as back walking (which now works as it does in Tekken Revolution with the characters taking longer strides when walking backwards as opposed to shuffling). Back rolls from a grounded state have been removed in favor of a new wakeup animation where the opponent gets off the floor while moving back. Ankle kicks are accompanied by a new back roll animation that creates separation after executing one."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "New camera effects have been added such as dynamic slowdown on trade and certain high-impact hits and a slow-motion effect that occurs on when both characters attack at the same time and one or both characters could be knocked out by the next hit. For networked matches, players can now specify if they want to be on the left or right side at all times, regardless if they are coming in as player one or two in the match itself, and the camera will change to reflect that."),
                ),
                createTextWithImage(
                    imagePath: "tekken_7/slow-motion.gif",
                    heading: "Slow Motion"),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Tekken Bowl"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                Text("On August 2017, the Tekken Bowl mini-game returned as a DLC, known as the Ultimate Tekken Bowl. It was revealed in a trailer, which shows Harada, the producer of the game, leaving the Namco-Bandai building to demonstrate his bowling skills at the Bowling Lanes. Harada is last seen posing one of Paul's win animations. This version of Tekken Bowl is noticeably more realistic than the previous versions. The mode, along with other customization and swimsuit DLC, were released on August 31, 2017."),
                createTextWithImage(imagePath: "tekken_7/bowl.gif", heading: "Bowl Mode")
              ]))
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Characters"),
              sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: 1.2,
                  children: [
                    createCharacterIcon(char: "akuma", game: "7"),
                    createCharacterIcon(char: "alisa", game: "7"),
                    createCharacterIcon(char: "anna", game: "7"),
                    createCharacterIcon(char: "armor king", game: "7"),
                    createCharacterIcon(char: "asuka", game: "7"),
                    createCharacterIcon(char: "bob", game: "7"),
                    createCharacterIcon(char: "bryan", game: "7"),
                    createCharacterIcon(char: "chloe", game: "7"),
                    createCharacterIcon(char: "claudio", game: "7"),
                    createCharacterIcon(char: "devil", game: "7"),
                    createCharacterIcon(char: "dragunov", game: "7"),
                    createCharacterIcon(char: "eddy", game: "7"),
                    createCharacterIcon(char: "eliza", game: "7"),
                    createCharacterIcon(char: "fahkuhram", game: "7"),
                    createCharacterIcon(char: "feng", game: "7"),
                    createCharacterIcon(char: "ganryu", game: "7"),
                    createCharacterIcon(char: "geese", game: "7"),
                    createCharacterIcon(char: "gigas", game: "7"),
                    createCharacterIcon(char: "heihachi", game: "7"),
                    createCharacterIcon(char: "hwoarang", game: "7"),
                    createCharacterIcon(char: "jack", game: "7"),
                    createCharacterIcon(char: "jin", game: "7"),
                    createCharacterIcon(char: "josie", game: "7"),
                    createCharacterIcon(char: "julia", game: "7"),
                    createCharacterIcon(char: "katarina", game: "7"),
                    createCharacterIcon(char: "kazumi", game: "7"),
                    createCharacterIcon(char: "kazuya", game: "7"),
                    createCharacterIcon(char: "king", game: "7"),
                    createCharacterIcon(char: "kuma", game: "7"),
                    createCharacterIcon(char: "kunimitsu", game: "7"),
                    createCharacterIcon(char: "lars", game: "7"),
                    createCharacterIcon(char: "law", game: "7"),
                    createCharacterIcon(char: "lee", game: "7"),
                    createCharacterIcon(char: "lei", game: "7"),
                    createCharacterIcon(char: "leo", game: "7"),
                    createCharacterIcon(char: "leroy", game: "7"),
                    createCharacterIcon(char: "lidia", game: "7"),
                    createCharacterIcon(char: "lili", game: "7"),
                    createCharacterIcon(char: "marduk", game: "7"),
                    createCharacterIcon(char: "miguel", game: "7"),
                    createCharacterIcon(char: "negan", game: "7"),
                    createCharacterIcon(char: "nina", game: "7"),
                    createCharacterIcon(char: "noctis", game: "7"),
                    createCharacterIcon(char: "panda", game: "7"),
                    createCharacterIcon(char: "paul", game: "7"),
                    createCharacterIcon(char: "raven", game: "7"),
                    createCharacterIcon(char: "shaheen", game: "7"),
                    createCharacterIcon(char: "steve", game: "7"),
                    createCharacterIcon(char: "violet", game: "7"),
                    createCharacterIcon(char: "xiaoyu", game: "7"),
                    createCharacterIcon(char: "yoshi", game: "7"),
                    createCharacterIcon(char: "zafina", game: "7"),
                  ]),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Unlockables / Secrets"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const ListTile(title: Text("Beastly Horn Hair Accessory Upgrade"), subtitle: Text("When equipping this item in Customization, it'll tell you the appearance will change after reaching a certain rank. You can upgrade this item twice. Black horns which are larger, and the red huge horns. Once you get to 20 Dan, Genbu, the red rank. Your horns will be at max upgrade.")),
                    const ListTile(title: Text("Hardest Difficulty"), subtitle: Text("If you finish the Epilogue in Story Mode, you'll unlock the hardest difficulty setting. It has a 10 star rating and is designated for players who are Kings of the Iron Fist.")),
                    const ListTile(title: Text("Special Chapter"), subtitle: Text("If you complete the Epilogue of Story Mode, you'll unlock the Special Chapter, which is a boss fight in which you battle Shin Akuma as Devil Kazuya.")),
                    const ListTile(title: Text("Special Chapter (secret Akuma Boss)"), subtitle: Text("Successfully complete Story mode to unlock the 'Instant Carnage' special chapter, which involves Devil Kazuya fighting Akuma in a final match. You can select this match in Story mode, after clearing all story chapters.")),
                    const ListTile(title: Text("Unlock All Items in the game"), subtitle: Text("Win/Lose 2000 battles across all modes (offline and online)")),
                    const ListTile(title: Text("Play As Violet"), subtitle: Text("You can play as Violet, who is Lee's alter ego from Tekken 4. Go to the character select screen and bring up the costume presets, and scroll over to the third and fourth costume slots. Selecting either of these will change Lee's name to Violet on the display. Despite looking different from Lee, Violet plays exactly the same way.")),
                    const ListTile(title: Text("Fight Akuma in Arcade Mode"), subtitle: Text("Get atleast one perfect round in Arcade Mode. When you reach the final stage, you will fight Akuma instead of Kazumi.")),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
