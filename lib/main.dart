import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_animation/screens/page/home%20/export.dart';
import 'package:ui_animation/screens/page/news/export.dart';
import 'package:ui_animation/screens/page/profile/export.dart';
import 'package:ui_animation/screens/page/watch/export.dart';
import 'package:ui_animation/value/colors_app.dart';
import 'package:ui_animation/value/strings_app.dart';
import 'package:ui_animation/value/text_style_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    WatchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeVM>(create: (context) => HomeVM())
      ],
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Text(
                  Strings.home,
                  style: _selectedIndex != 0
                      ? GoogleFonts.montserrat(
                          textStyle: TextStyleApp.styleTxtNamePage)
                      : GoogleFonts.montserrat(
                          textStyle: TextStyleApp.styleFocusTxtNamePage),
                ),
                label: "\u2022"),
            BottomNavigationBarItem(
                icon: Text(
                  Strings.news,
                  style: _selectedIndex != 1
                      ? GoogleFonts.montserrat(
                          textStyle: TextStyleApp.styleTxtNamePage)
                      : GoogleFonts.montserrat(
                          textStyle: TextStyleApp.styleFocusTxtNamePage),
                ),
                label: "\u2022"),
            BottomNavigationBarItem(
              icon: Text(
                Strings.watch,
                style: _selectedIndex != 2
                    ? GoogleFonts.montserrat(
                        textStyle: TextStyleApp.styleTxtNamePage)
                    : GoogleFonts.montserrat(
                        textStyle: TextStyleApp.styleFocusTxtNamePage),
              ),
              label: "\u2022",
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "\u2022"),
          ],
          selectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          currentIndex: _selectedIndex,
          selectedItemColor: ColorApp.colorFocusTxtNamePage,
          unselectedItemColor: ColorApp.colorMainTextApp,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
