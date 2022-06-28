import 'package:flutter/material.dart';
import 'package:ui_animation/value/colors_app.dart';
import 'package:ui_animation/value/images_app.dart';

import '../../../data/banner.dart';
import '../../../data/list_game.dart';

enum ListGameState { loading, success, errors }

class HomeVM extends ChangeNotifier {
  List<ListGame> game = [];
  List<BannerData> banner =[];

  HomeVM() {
    getList();
  }

  getList() async {
    game = [
      ListGame(avatar: ImagesApp.moba, color: ColorApp.colorMainTextApp),
      ListGame(avatar: ImagesApp.lol, color: ColorApp.bgLol),
      ListGame(avatar: ImagesApp.boxStudio, color: ColorApp.bgBox),
      ListGame(avatar: ImagesApp.lolMobile, color: ColorApp.bgLolMobile),
      ListGame(avatar: ImagesApp.smite, color: ColorApp.bgSmite)
    ];
    banner =[
      BannerData(imageBaner: ImagesApp.dota,),
      BannerData(imageBaner: ImagesApp.dota1),
      BannerData(imageBaner: ImagesApp.dota2)
    ];
    notifyListeners();
  }
}
