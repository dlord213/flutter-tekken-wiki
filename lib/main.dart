import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekken_wiki/pages/mainPages.dart';
import 'package:tekken_wiki/reusable_widgets.dart';

void main() {
  runApp(MaterialApp(
    home: const MainApplication(),
    themeMode: ThemeMode.system,
    theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        colorScheme: const ColorScheme.light(),
        listTileTheme: ListTileThemeData(
          textColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(
            color: Colors.deepOrangeAccent,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            centerTitle: true,
            titleTextStyle: appBarTextStyle,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            ),
            foregroundColor: Colors.white,
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            )),
        fontFamily: "Work Sans",
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 56.0, fontWeight: FontWeight.w600, color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
        ),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
            indicatorColor: Colors.white,
            iconTheme: MaterialStateProperty.all(const IconThemeData(
              color: Colors.black,
            )),
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
            )),
            height: 65.0,
            backgroundColor: Colors.deepOrangeAccent)),
    darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(),
        listTileTheme: const ListTileThemeData(
          tileColor: Colors.transparent,
        ),
        primaryColor: Colors.black12,
        appBarTheme: const AppBarTheme(
            color: Colors.black,
            centerTitle: true,
            titleTextStyle: appBarTextStyle,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            foregroundColor: Colors.white,
            surfaceTintColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            )),
        fontFamily: "Work Sans",
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 56.0, fontWeight: FontWeight.w600),
        ),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
          )),
          backgroundColor: Colors.black,
          height: 65.0,
          surfaceTintColor: Colors.black,
        )),
    debugShowCheckedModeBanner: false,
  ));
}

class MainApplication extends StatefulWidget {
  const MainApplication({Key? key}) : super(key: key);

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  int _selectedIndex = 0;

  var appBarTextStyle =
      GoogleFonts.workSans(fontWeight: FontWeight.bold, fontSize: 24.0);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var pageIndex = [
    const homePage(),
    const gamesPage(),
    const charactersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return pageIndex.elementAt(_selectedIndex);
        }),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: NavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              animationDuration: const Duration(seconds: 1),
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.videogame_asset_outlined), label: "Games"),
                NavigationDestination(
                    icon: Icon(Icons.person_outline_outlined), label: "Characters"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
