import 'package:flutter/material.dart';
import 'package:ui_animation/screens/page/watch/export.dart';

import '../../../data/video_data.dart';

class WatchVM extends ChangeNotifier {
  List<VideoData> video = [];


  WatchVM(){
    getVideoData();
  }
  void getVideoData() {
    video = [
      VideoData(urlId: "qDbcNGgzLZ8"),
      VideoData(urlId: "OT3r922pHq4"),
      VideoData(urlId: "MvnELQSAzvQ"),
      VideoData(urlId: "fB8TyLTD7EE")
    ];
    notifyListeners();
  }
}
