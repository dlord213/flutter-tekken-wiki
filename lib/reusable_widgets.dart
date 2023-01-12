import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tekken_wiki/pages/mainPages.dart';

const TextStyle appBarTextStyle =
    TextStyle(fontFamily: "Work Sans", fontSize: 24.0);

var headingTextStyle =
    TextStyle(fontSize: 16.0, letterSpacing: 4, color: Colors.white);

Widget returnContainer({required Widget widget}) {
  return Container(
    margin: const EdgeInsets.all(12.0),
    child: widget,
  );
}

Widget returnSliverAppBar(
    {required String title, required String logo, required bool isWebP}) {
  var stringPath;
  if (isWebP) {
    stringPath = "assets/logos/$logo.webp";
  } else {
    stringPath = "assets/logos/$logo.png";
  }

  return SliverAppBar(
    expandedHeight: 240.0,
    pinned: true,
    scrolledUnderElevation: 10,
    flexibleSpace: FlexibleSpaceBar(
      title: Text(title, style: appBarTextStyle),
      centerTitle: false,
      background: Image.asset(stringPath,
          fit: BoxFit.scaleDown, opacity: const AlwaysStoppedAnimation(.5)),
    ),
  );
}

class createSlideCharacterIcon extends StatefulWidget {
  final String fileName;
  final String charName;
  final mainRoute;

  const createSlideCharacterIcon(
      {Key? key,
      required this.fileName,
      required this.charName,
      required this.mainRoute})
      : super(key: key);

  @override
  State<createSlideCharacterIcon> createState() =>
      _createSlideCharacterIconState();
}

class _createSlideCharacterIconState extends State<createSlideCharacterIcon> {
  var mainFontStyle = TextStyle(fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => widget.mainRoute));
        },
        child: ClipRRect(
          child: Column(
            children: [
              SizedBox(
                height: 280,
                child: ClipRRect(borderRadius: BorderRadius.circular(24), child: Image.asset("assets/portrait_menu_characters/${widget.fileName}"))
              ),
              Text(widget.charName, style: mainFontStyle)
            ],
          ),
        ),
      ),
    );
  }
}

Widget createCharacterIcon({var game, var char}) {
  var brightnessVariable = SchedulerBinding.instance.window.platformBrightness;
  bool isDarkMode = brightnessVariable == Brightness.dark;

  if (isDarkMode) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(children: [
              Image.asset("assets/tekken_$game/$char.webp", width: 544),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("$char".toUpperCase(),
                          style: const TextStyle(
                              fontFamily: "Work Sans", fontSize: 12.0)),
                    )),
              )
            ])),
      ],
    );
  } else {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(children: [
              Image.asset("assets/tekken_$game/$char.webp", width: 120),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("$char".toUpperCase(),
                          style: const TextStyle(
                              fontFamily: "Work Sans",
                              fontSize: 12.0,
                              color: Colors.white)),
                    )),
              )
            ])),
      ],
    );
  }
}

Widget createTextWithImage({var imagePath, var heading}) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset("assets/$imagePath")),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(6.0)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(heading, style: TextStyle(color: Colors.white)),
            )),
      )
    ],
  );
}

class createContainerHeader extends StatefulWidget {
  final String title;
  const createContainerHeader({Key? key, required this.title})
      : super(key: key);

  @override
  State<createContainerHeader> createState() => _createContainerHeaderState();
}

class _createContainerHeaderState extends State<createContainerHeader> {
  late var brightnessVariable =
      SchedulerBinding.instance.window.platformBrightness;
  late bool isDarkMode = brightnessVariable == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    if (isDarkMode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.black54,
            ),
            height: 50,
            alignment: Alignment.centerRight,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(widget.title, style: headingTextStyle),
            )),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.deepOrangeAccent.shade200,
            ),
            height: 50,
            alignment: Alignment.centerRight,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(widget.title, style: headingTextStyle),
            )),
      );
    }
  }
}
