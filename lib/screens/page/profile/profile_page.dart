import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:ui_animation/screens/page/profile/export.dart';
import 'package:ui_animation/screens/widgets/item_list_video.dart';
import 'package:ui_animation/value/colors_app.dart';
import 'package:ui_animation/value/images_app.dart';
import 'package:ui_animation/value/strings_app.dart';
import 'package:ui_animation/value/text_style_app.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  final double radiusAvatar = 60;
  bool selected = false;
  bool facebook = true;

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileVM>(builder: (context, data, child) {
      return Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                  child: Image.asset(
                    ImagesApp.dota2,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                    left: 40,
                    top:
                        MediaQuery.of(context).size.height * 0.3 - radiusAvatar,
                    child: CircleAvatar(
                      radius: radiusAvatar,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: radiusAvatar - 6,
                        backgroundImage: const AssetImage(ImagesApp.dota1),
                      ),
                    )),
                Positioned(
                  right: 10,
                  top: MediaQuery.of(context).size.height * 0.3 + 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearPercentIndicator(
                        backgroundColor: ColorApp.colorMainTextApp,
                        width: MediaQuery.of(context).size.width - 160,
                        animation: true,
                        lineHeight: 16,
                        animationDuration: 2000,
                        percent: 0.77,
                        center: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.lever,
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyleApp.styleLeadingIndicator),
                              ),
                              Text(
                                Strings.sizeLever,
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyleApp.styleActionIndicator),
                              )
                            ],
                          ),
                        ),
                        barRadius: const Radius.circular(20),
                        progressColor: ColorApp.cardNews,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          Strings.exp,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyleApp.styleExp),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      Strings.nameUser,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyleApp.nameUser),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      Strings.stateUser,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyleApp.stateUser),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: ColorApp.cardConection,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: AnimatedAlign(
                                alignment: !facebook
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.blue, // Button color
                                    child: InkWell(
                                      splashColor: Colors.red,
                                      // Splash color
                                      onTap: () {
                                        setState(() {
                                          facebook = !facebook;
                                        });
                                      },
                                      child: const SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: Icon(
                                            Icons.facebook,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: AnimatedAlign(
                                  alignment: facebook
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastOutSlowIn,
                                  child: facebook
                                      ? Text(
                                          Strings.disconnect,
                                          style: GoogleFonts.montserrat(
                                              textStyle:
                                                  TextStyleApp.stateSocial),
                                        )
                                      : Text(
                                          Strings.connect,
                                          style: GoogleFonts.montserrat(
                                              textStyle:
                                                  TextStyleApp.stateSocial),
                                        )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: ColorApp.cardConection,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: AnimatedAlign(
                                alignment: !selected
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.indigo,
                                    // Button color
                                    child: InkWell(
                                      splashColor: Colors.red,
                                      // Splash color
                                      onTap: () {
                                        setState(() {
                                          selected = !selected;
                                        });
                                      },
                                      child: const SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: Icon(
                                            Icons.discord,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: AnimatedAlign(
                                alignment: selected
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                                child: selected
                                    ? Text(
                                        Strings.disconnect,
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyleApp.stateSocial),
                                      )
                                    : Text(
                                        Strings.connect,
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyleApp.stateSocial),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return VideoPlayer(
                url: data.myUser.urlHightLight![index],
              );
            }, childCount: data.myUser.urlHightLight!.length),
          )
        ],
      ));
    });
  }
}
