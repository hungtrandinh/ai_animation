import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_animation/screens/page/home%20/export.dart';

import '../../value/images_app.dart';

class SwiperBanner extends StatefulWidget {
  const SwiperBanner({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SwiperBannerState();
  }
}

class SwiperBannerState extends State<SwiperBanner> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeVM>(builder: (context, data, child) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              data.banner[index].imageBaner,
              fit: BoxFit.fill,
            );
          },
          itemCount: data.banner.length,
          pagination: const SwiperPagination(),
        ),
      );
    });
  }
}
