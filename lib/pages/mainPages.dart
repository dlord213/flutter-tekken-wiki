import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:tekken_wiki/pages/mainLineGamesPages.dart';
import 'package:tekken_wiki/pages/spinOffGamesPages.dart';

import 'package:tekken_wiki/reusable_widgets.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 240.0,
          pinned: true,
          scrolledUnderElevation: 10,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("General", style: appBarTextStyle),
            centerTitle: true,
            background: Image.asset("assets/logos/expanded.png"),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(6.0),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            returnContainer(
                widget: const Text(
                    "This section is the GENERAL section, it contains basic information about the game series called TEKKEN (鉄拳).")),
            returnContainer(
                widget: const Text(
                    "Tekken is a series of 3D fighting games developed and published by Namco. Originally developed for arcades, versions of several sequels as well as updates and spin-off titles exist for various platforms, including the PlayStation, PlayStation 2, PlayStation Portable, PlayStation 3, Xbox 360, Nintendo 3DS, Wii U, WonderSwan, and Game Boy Advance.")),
            returnContainer(
              widget: const Text(
                  "The series itself is currently the best selling fighting game franchise in gaming history and was entered into the Guinness World Records in 2017 for having both the 'Longest-running videogame storyline' and 'Longest-running consistent videogame universe'."),
            ),
            returnContainer(
                widget: const Text(
                    "Tekken is noted as being one of the first fighting games at the time to use 3D animation. Japanese video game developer Namco began the series in 1994, with the release of the self-titled first entry.")),
            returnContainer(
                widget: const Text(
                    "Since its initial release in 1994, the Tekken franchise has sold over 48 million copies worldwide, making it one of the most successful fighting game series of all time. With its unique blend of fast-paced action, deep strategic gameplay, and stunning visuals, Tekken has become a staple of the fighting game genre and a fan-favorite for millions of gamers around the world.")),
            createTextWithImage(
                imagePath: "cover_art/tekken_8.jpg", heading: "TEKKEN 8"),
            returnContainer(
                widget: const Text(
                    "This app is about about the fighting game series that follows the events of the King of Iron Fist Tournament, hosted by the Mishima Zaibatsu, where players can play a plethora of characters to win the tournament and gain control of the company."))
          ])),
        ),
      ],
    );
  }
}

class gamesPage extends StatefulWidget {
  const gamesPage({Key? key}) : super(key: key);

  @override
  State<gamesPage> createState() => _gamesPageState();
}

class _gamesPageState extends State<gamesPage> {
  Widget createInkWellCard(
      {required bool webP,
      required String fileName,
      required String description,
      var mainRoute}) {
    String fileNameFlag;
    if (webP == true) {
      fileNameFlag = "assets/logos/$fileName.webp";
    } else {
      fileNameFlag = "assets/logos/$fileName.png";
    }

    mainRoute ??= const homePage();

    var defaultChild = Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(fileNameFlag)),
        Container(padding: const EdgeInsets.all(12.0), child: Text(description))
      ],
    );

    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mainRoute));
            },
            child: defaultChild));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Games"), scrolledUnderElevation: 7.0),
        body: CustomScrollView(
          slivers: [
            SliverStickyHeader(
                header: createContainerHeader(title: "Main Games"),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  createInkWellCard(
                      mainRoute: const tekkenOnePage(),
                      webP: false,
                      fileName: "tekken_1",
                      description: "First released in 1994 in arcades, also known retrospectively as Tekken 1 and the first entry in what would become the Tekken series and franchise."),
                  createInkWellCard(
                      mainRoute: const tekkenTwoPage(),
                      webP: false,
                      fileName: "tekken_2",
                      description: "First released in arcades in 1995, and later released for the PlayStation in 1996 and is the second installment in the Tekken fighting game series. It became one of the best-selling games of the early PlayStation era, later eclipsed by its successor Tekken 3."),
                  createInkWellCard(
                      mainRoute: const tekkenThreePage(),
                      webP: true,
                      fileName: "tekken_3",
                      description: "It was originally released in 1997 in arcades, with a home release for the PlayStation following in 1998 and is the third installment in the Tekken fighting game series. The game had a significant high energy gameplay and feel, which contributed to it being often considered the best game in the entire series by both fans and critics and one of the greatest games of its genre on the original PlayStation."),
                  createInkWellCard(
                      mainRoute: const tekkenFourPage(),
                      webP: true,
                      fileName: "tekken_4",
                      description: "It was released as an arcade game in 2001 and on the PlayStation 2 in 2002, with the tagline A New Century of Fighting. The game introduced significantly altered gameplay and mechanics compared to its predecessors and is the fourth main installment in the Tekken video game franchise, and was the second game in the Tekken series released for the PlayStation 2."),
                  createInkWellCard(
                      mainRoute: const tekkenFivePage(),
                      webP: true,
                      fileName: "tekken_5",
                      description: "First released on arcades on November 15, 2004 and ported to the PlayStation 2 home console on February 24, 2005 and is the fifth main installment in the Tekken series of fighting games. The gameplay of Tekken 5 is akin to the formula previously seen in Tekken 3, while it takes certain features that were introduced in Tekken 4."),
                  createInkWellCard(
                      mainRoute: const tekkenSixPage(),
                      webP: true,
                      fileName: "tekken_6",
                      description: "It was released in Japanese arcades on November 26, 2007 as the first game running on the PlayStation 3-based System 357 arcade board and is the sixth main installment in the Tekken franchise and the first multi-platform title. Compared to Tekken 5, notable changes in Tekken 6 were improved physics, the new Bound and Rage systems."),
                  createInkWellCard(
                      mainRoute: const tekkenSevenPage(),
                      webP: true,
                      fileName: "tekken_7",
                      description: "The latest installment in Tekken series and  runs on Unreal Engine 4, making it the first game of the series to run on this engine. The console version is based on said update. Since its first release, the game has subsequently been released in several editions with access to different downloadable content."),
                ]))),
            SliverStickyHeader(
              header: createContainerHeader(title: "Spin-off Games"),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  createInkWellCard(
                      mainRoute: const tekkenTagTournamentPage(),
                      webP: true,
                      fileName: "tekken_tag",
                      description: "The fourth installment in the Tekken fighting game series and a spin-off of the main series, focusing on tag team battles. It is not canonical to the Tekken storyline. The game was originally available as an update kit for Tekken 3, running on the same System 12 arcade board. Tekken Tag Tournament was first released on arcades in 1999. It was ported to the PlayStation 2 home console in 2000, though the PS2 version ran on an enhanced game engine with better graphics, which allowed the characters and stages to appear less angular and more detailed."),
                  createInkWellCard(mainRoute: const tekkenTagTwoPage(), webP: true, fileName: "tekken_tag_2", description: "The successor to 1999's Tekken Tag Tournament. The game was released in Japanese arcades on September 14, 2011, with a playable demo for the PlayStation 3 included with the Tekken Hybrid collection, released in North America and Europe in November 2011. An update for the arcade version, Tekken Tag Tournament 2 Unlimited, was released on March 27, 2012 in Japan. A home version based on the update was released on September 11, 2012 for the PlayStation 3 and Xbox 360. It was also ported to the Wii U as one of the system's launch titles in November 2012, subtitled Wii U Edition and featuring bonus exclusive content. Tekken Tag Tournament 2 focuses on tag team battles. As an expansive non-canonical game, it has a large roster of 61 characters, more than any other title in the Tekken series. While originally intended to only feature current characters from the canon Tekken 6, the revival of Jun Kazama as a playable character."),
                  createInkWellCard(mainRoute: const tekkenRevolutionPage(), webP: true, fileName: "tekken_revolution", description: "A free-to-play downloadable fighting game on the PlayStation Network, exclusively released for PlayStation 3 in June 2013. It has been praised for bringing back the arcade experience to the console. It also features many similar aspects with role-playing games and social games. Bandai Namco revealed that it and its downloadable content would be removed from the PlayStation Store on January 21st, 2017. The game officially ceased operations on March 20th, 2017."),

                ]),
              ),
            )
          ],
        ));
  }
}
