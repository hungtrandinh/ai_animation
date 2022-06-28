import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_animation/value/colors_app.dart';
import 'package:ui_animation/value/images_app.dart';
import 'package:ui_animation/value/strings_app.dart';
import 'package:ui_animation/value/text_style_app.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewsTabState();
  }
}

class NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(ImagesApp.champion), fit: BoxFit.cover),
          color: Colors.red,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                    color: ColorApp.colorMainTextApp,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Text(
                      Strings.diretideEvent,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyleApp.styleNameTxtEvent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 80,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(45),
                        topLeft: Radius.circular(30)),
                    color: ColorApp.cardNews),
                child: Center(
                  child: Text(
                    Strings.news.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyleApp.styleNewsCard,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
