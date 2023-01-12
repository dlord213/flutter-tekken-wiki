import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:tekken_wiki/reusable_widgets.dart';

class tekkenTagTournamentPage extends StatefulWidget {
  const tekkenTagTournamentPage({Key? key}) : super(key: key);

  @override
  State<tekkenTagTournamentPage> createState() => _tekkenTagTournamentPageState();
}

class _tekkenTagTournamentPageState extends State<tekkenTagTournamentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            returnSliverAppBar(title: "Tekken Tag Tournament", logo: "tekken_tag", isWebP: true),
            SliverStickyHeader(
              header: createContainerHeader(title: "Story"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament is a non-canon game, having no storyline. According to Namco, it brought back the characters that did not return to Tekken 3: Baek Doo San, Bruce Irvin, Jun Kazama, and Kunimitsu. Their ages are unchanged from the previous Tekken games. It is more of a compilation of the Tekken series giving fans the opportunity to play as almost every character in the series up to that point, including many of those that had apparently been killed off in the main Tekken storyline. Of all the returning characters, Kazuya Mishima was the most heavily promoted, as he was featured prominently on the game's cover art and promotional material."),
                ),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Gameplay"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament was notable for having the largest character roster in the series up to that point, boasting a total of 39 playable characters. 37 characters return from previous installments in the series, and two new characters, Tetsujin, a costume swap of Mokujin, and Unknown, the boss character in this game, were introduced.\n\nThe most prominent feature is its tag system. A player selects two characters and may tag out between them to utilize special combos and throws. When in Team Battle mode, the fights are also tag fights unless there is one person left on a team where they will fight alone."),
                ),
                createTextWithImage(imagePath: "tekken_tag/1.jpg", heading: "Selection Screen"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament has characters that have special network partners. This consists of special Netsu Power allegiances, team throws, special interludes, and special Game Over screens. Netsu Power is the temporary state the player's selected player is in when the lifebar outline is flashing red. It is also known as the Anger Power, because it activates when your on screen character gets hit a set number of times and the off screen characters gets angry. The number of hits required for the Netsu activation depends on which characters are teamed up."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Certain pairs of characters, when selected as a tag team, have special intros, win poses, lose poses, Tag Throws and also Netsu ratings. The Netsu ratings affect gameplay, and whether a character 'liked', was indifferent to, or 'disliked' another, would result in faster or slower ability to gain a damage boost when their partner was damaged. The special intros, win and lose poses are more lore based, and do not directly map onto the Netsu system, though the Netsu system can give hints as to who will have a special interaction. Some special intros can only be seen if the characters are wearing certain costumes."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament included a mini-game called Tekken Bowl, that challenged the player to use a team of characters to play a bowling game. Depending on the player's selected character, different attributes would be placed into effect in the mini-game."),
                ),
                createTextWithImage(imagePath: "tekken_tag/bowl.webp", heading: "Bowling Mode")
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "HD Update"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament HD is a high-definition update to the original game. It was included in Tekken Hybrid and showcased enhanced graphics and included trophies."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("This HD re-release, however, removes the 1 on 1 single player and 1 on 1 VS game modes."),
                ),
                createTextWithImage(heading: "HD Logo", imagePath: "tekken_tag/hd.webp"),
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
                    createCharacterIcon(char: "alex", game: "tag"),
                    createCharacterIcon(char: "angel", game: "tag"),
                    createCharacterIcon(char: "anna", game: "tag"),
                    createCharacterIcon(char: "armor king", game: "tag"),
                    createCharacterIcon(char: "baek", game: "tag"),
                    createCharacterIcon(char: "bruce", game: "tag"),
                    createCharacterIcon(char: "bryan", game: "tag"),
                    createCharacterIcon(char: "devil", game: "tag"),
                    createCharacterIcon(char: "eddy", game: "tag"),
                    createCharacterIcon(char: "ganryu", game: "tag"),
                    createCharacterIcon(char: "gjack", game: "tag"),
                    createCharacterIcon(char: "heihachi", game: "tag"),
                    createCharacterIcon(char: "hwoarang", game: "tag"),
                    createCharacterIcon(char: "jack", game: "tag"),
                    createCharacterIcon(char: "jin", game: "tag"),
                    createCharacterIcon(char: "julia", game: "tag"),
                    createCharacterIcon(char: "jun", game: "tag"),
                    createCharacterIcon(char: "kazuya", game: "tag"),
                    createCharacterIcon(char: "king", game: "tag"),
                    createCharacterIcon(char: "kuma", game: "tag"),
                    createCharacterIcon(char: "kunimitsu", game: "tag"),
                    createCharacterIcon(char: "law", game: "tag"),
                    createCharacterIcon(char: "lee", game: "tag"),
                    createCharacterIcon(char: "lei", game: "tag"),
                    createCharacterIcon(char: "michelle", game: "tag"),
                    createCharacterIcon(char: "mokujin", game: "tag"),
                    createCharacterIcon(char: "nina", game: "tag"),
                    createCharacterIcon(char: "ogre", game: "tag"),
                    createCharacterIcon(char: "panda", game: "tag"),
                    createCharacterIcon(char: "paul", game: "tag"),
                    createCharacterIcon(char: "pjack", game: "tag"),
                    createCharacterIcon(char: "roger", game: "tag"),
                    createCharacterIcon(char: "tetsujin", game: "tag"),
                    createCharacterIcon(char: "tiger", game: "tag"),
                    createCharacterIcon(char: "true ogre", game: "tag"),
                    createCharacterIcon(char: "unknown", game: "tag"),
                    createCharacterIcon(char: "wang", game: "tag"),
                    createCharacterIcon(char: "xiaoyu", game: "tag"),
                    createCharacterIcon(char: "yoshi", game: "tag"),
                  ]),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Unlockables / Secrets"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const ListTile(title: Text("Choose Victory Animation"), subtitle: Text("After winning a round and you see the replay showing, pressing each button will result in a different victory animation. This also works when the opponent wins.")),
                    const ListTile(title: Text("Alternate Opening Movie"), subtitle: Text("When you beat the game, you'll usually get to see a short movie of Jin and a few other Tekken characters practicing in a monastery. However, this isn't the only ending movie you can get. After you've unlocked all the animal characters (Roger/Alex, Kuma/Panda, etc), the ending movie will change occasionally. Instead of seeing human characters train, you'l watch the animal characters train on the tropical island level.")),
                    const ListTile(title: Text("Armor King's alternate outfit"), subtitle: Text("Beat Arcade Mode with Armor King. Then to use the new outfit, at the character select screen choose Armor King with the Start button.")),
                    const ListTile(title: Text("Gold Tetsujin"), subtitle: Text("	Win 10 battles in Survival/Versus Mode.")),
                    const ListTile(title: Text("Play as Unknown"), subtitle: Text("After unlocking Unknown, highlight Roger, and go right.")),
                    const ListTile(title: Text("Unlock Tekken Bowl"), subtitle: Text("Unlock True Ogre.")),
                    const ListTile(title: Text("Begin round as tag partner"), subtitle: Text("During the character vs screen or replay, press and hold the Tag button before the next match begin to fight as your tag partner (2nd character)")),
                    const ListTile(title: Text("Junkbox"), subtitle: Text("Score 200 Points In Tekken Bowl.")),
                    const ListTile(title: Text("Theater"), subtitle: Text("Complete Arcade Mode once.")),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}

class tekkenTagTwoPage extends StatefulWidget {
  const tekkenTagTwoPage({Key? key}) : super(key: key);

  @override
  State<tekkenTagTwoPage> createState() => _tekkenTagTwoPageState();
}

class _tekkenTagTwoPageState extends State<tekkenTagTwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            returnSliverAppBar(title: "TEKKEN TAG TOURNAMENT 2", logo: "tekken_tag_2", isWebP: true),
            SliverStickyHeader(
              header: createContainerHeader(title: "Story"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Unlike the original Tekken Tag Tournament, the game's sequel features a storyline although it is still not the series canon. However, certain characters' endings are canon, which are followed in the sequel game Tekken 7. In the story, Heihachi Mishima has developed a rejuvenation serum, which has the ability to regress his appearance and power. After consuming it, Heihachi hosts another King of Iron Fist Tournament, sensing powerful challengers who would come to the tournament."),
                ),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Gameplay"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("As in the original Tekken Tag Tournament, matches involve each player selecting two fighters to fight with. Players are able to switch their fighters out at any time, allowing the inactivate character to gradually recover some life they might have lost. If the life bar of either of a player's fighters runs out, that player loses the round. If time runs out, the player who has the most cumulative life remaining amongst their fighters wins the round.\n\nThe gameplay expands on the tag mechanics featured in the first Tekken Tag, allowing for extended tag combos and combined moves. New techniques include combined Tag Throws which, if timed properly, can be escaped from. Tag combos which can be done simultaneously with both characters participating in the combo at the same time. Tag Crashes could be performed when the player was on the ground and their partner's health bar flashed red."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("The game inherits gameplay features from Tekken 6, such as 'Bound' and walled arenas, some of which featuring walls and floors that can be broken through during the fight. Character customization is also featured, similar to past Tekken games."),
                ),
                createTextWithImage(imagePath: "tekken_tag_2/parry.gif", heading: "Feng's Parry"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Additionally, damage scaling has been altered, as grounded or slumping enemies now only take 60% of damage from an attack as opposed to a full 100% like in previous games."),
                ),
                createTextWithImage(imagePath: "tekken_tag_2/combo.gif", heading: "Stage Gimmick"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Features suggested by Katsuhiro Harada include recording in Practice mode as well as a Tutorial, to make the game more accessible for new players. The game features a stage gimmick system. For instance, an example of the system shown has the player slamming their opponent into wall, which breaks and the opponent goes flying, landing in a new area where the fight continues. As the opponent falls, the tag partner is waiting at the bottom to continue the combo."),
                ),
                createTextWithImage(imagePath: "tekken_tag_2/combo_2.gif", heading: "Jun's Combo"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("The game features various modes, allowing players to choose between Tag Team (2 vs 2), Single (1 vs 1), or Handicap Matches ( 2 vs 1 or 1 vs 2), options for four players to play in a single match, and various online modes. Along with returning modes such as Arcade, Versus, Team Battle, Time Attack and Survival, a new mode called Fight Lab allows players to train a Combot through various challenges. The game also features various items that can alter the gameplay, ranging from weapons such as firearms and hammer hats to superficial items such as specialized KOs, and allows players to customize their fighters with various accessories."),
                ),
                createTextWithImage(heading: "Main Menu", imagePath: "tekken_tag_2/menu.PNG"),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("In the Unlimited version, the player can switch a ratio between Tag mode or Solo mode. There is also a Pair Play mode, in which a maximum of 2 to 4 players can play, like in the previous installment Tekken Tag Tournament. The Solo Mode uses a term of Tekken 6 styles while the Tag Mode uses the previous Tekken Tag 2 styles, such as the Rage, combo and stage systems."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("The Wii U Edition includes the return of the mini-game Tekken Ball from Tekken 3 and a Mushroom Battle mode in which various mushrooms from the Mario series litter the arena, causing players to grow or shrink in size or take extra damage. It also features optional touch-based controls using the system's gamepad, as well as costumes based on Nintendo media franchise."),
                ),
                createTextWithImage(imagePath: "tekken_tag_2/ball.jpg", heading: "Ball Mode"),
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Wii U Exclusive Features"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("All of the characters in the Wii U Edition are given at least one alternate costume based on a Nintendo character from various series such as Super Mario, The Legend of Zelda, and Star Fox, and all DLC characters for the other versions are included for free in the Wii U Edition.\n\nOther features include Mushroom Battle, which allows for characters to pick up Super Mushroom items for unique Nintendo power-ups, Touch panel moves with the Wii U Gamepad, and the beach volley battle mode Tekken Ball."),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("The Wii U edition also features a Tekken Supporters mode, where fight money can be spent to unlock bonus items and boost a character's popularity on online leaderboards. The mode also features unique responses from each character when the maximum amount of money is gifted. The Wii U version has the most detailed set of customization options for the game, including the option to Paint characters, where the user can draw and color on the characters and then use this as a customization in game."),
                )
              ])),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Prologue (Demo Game)"),
              sliver: SliverList(delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Tekken Tag Tournament 2 Prologue is a demo of the game that was included in Tekken Hybrid. There are four playable characters to choose from based on their appearance in Tekken: Blood Vengeance."),
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
                    createCharacterIcon(char: "alex", game: "tag_2"),
                    createCharacterIcon(char: "alisa", game: "tag_2"),
                    createCharacterIcon(char: "angel", game: "tag_2"),
                    createCharacterIcon(char: "anna", game: "tag_2"),
                    createCharacterIcon(char: "armor king", game: "tag_2"),
                    createCharacterIcon(char: "asuka", game: "tag_2"),
                    createCharacterIcon(char: "baek", game: "tag_2"),
                    createCharacterIcon(char: "bruce", game: "tag_2"),
                    createCharacterIcon(char: "bob", game: "tag_2"),
                    createCharacterIcon(char: "bryan", game: "tag_2"),
                    createCharacterIcon(char: "christie", game: "tag_2"),
                    createCharacterIcon(char: "combot", game: "tag_2"),
                    createCharacterIcon(char: "devil", game: "tag_2"),
                    createCharacterIcon(char: "dr b", game: "tag_2"),
                    createCharacterIcon(char: "dragunov", game: "tag_2"),
                    createCharacterIcon(char: "eddy", game: "tag_2"),
                    createCharacterIcon(char: "feng", game: "tag_2"),
                    createCharacterIcon(char: "forest law", game: "tag_2"),
                    createCharacterIcon(char: "ganryu", game: "tag_2"),
                    createCharacterIcon(char: "heihachi", game: "tag_2"),
                    createCharacterIcon(char: "hwoarang", game: "tag_2"),
                    createCharacterIcon(char: "jack", game: "tag_2"),
                    createCharacterIcon(char: "jaycee", game: "tag_2"),
                    createCharacterIcon(char: "jin", game: "tag_2"),
                    createCharacterIcon(char: "jinpachi", game: "tag_2"),
                    createCharacterIcon(char: "kazuya", game: "tag_2"),
                    createCharacterIcon(char: "king", game: "tag_2"),
                    createCharacterIcon(char: "kuma", game: "tag_2"),
                    createCharacterIcon(char: "kunimitsu", game: "tag_2"),
                    createCharacterIcon(char: "lars", game: "tag_2"),
                    createCharacterIcon(char: "law", game: "tag_2"),
                    createCharacterIcon(char: "lee", game: "tag_2"),
                    createCharacterIcon(char: "lei", game: "tag_2"),
                    createCharacterIcon(char: "leo", game: "tag_2"),
                    createCharacterIcon(char: "lili", game: "tag_2"),
                    createCharacterIcon(char: "marduk", game: "tag_2"),
                    createCharacterIcon(char: "michelle", game: "tag_2"),
                    createCharacterIcon(char: "miguel", game: "tag_2"),
                    createCharacterIcon(char: "miharu", game: "tag_2"),
                    createCharacterIcon(char: "mokujin", game: "tag_2"),
                    createCharacterIcon(char: "nina", game: "tag_2"),
                    createCharacterIcon(char: "ogre", game: "tag_2"),
                    createCharacterIcon(char: "panda", game: "tag_2"),
                    createCharacterIcon(char: "paul", game: "tag_2"),
                    createCharacterIcon(char: "pjack", game: "tag_2"),
                    createCharacterIcon(char: "raven", game: "tag_2"),
                    createCharacterIcon(char: "roger", game: "tag_2"),
                    createCharacterIcon(char: "sebastian", game: "tag_2"),
                    createCharacterIcon(char: "slimbob", game: "tag_2"),
                    createCharacterIcon(char: "steve", game: "tag_2"),
                    createCharacterIcon(char: "tiger", game: "tag_2"),
                    createCharacterIcon(char: "true ogre", game: "tag_2"),
                    createCharacterIcon(char: "unknown", game: "tag_2"),
                    createCharacterIcon(char: "violet", game: "tag_2"),
                    createCharacterIcon(char: "wang", game: "tag_2"),
                    createCharacterIcon(char: "xiaoyu", game: "tag_2"),
                    createCharacterIcon(char: "yoshi", game: "tag_2"),
                    createCharacterIcon(char: "zafina", game: "tag_2"),
                  ]),
            ),
            SliverStickyHeader(
              header: createContainerHeader(title: "Unlockables / Secrets"),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const ListTile(
                        title: Text("Play as Devil Kazuya"),
                        subtitle: Text("At the character select screen, highlight Kazuya. Then press Up/Left Triangle and Circle, and start the match with your second partner.")),
                    const ListTile(
                        title: Text("Unknown"),
                        subtitle: Text("Complete Arcade Mode 1 time.")),
                    const ListTile(
                        title: Text("Start match with second partner."),
                        subtitle: Text("Hold the TAG button at the 'get ready for the next battle' message to start the match with your second partner")),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}

