import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_animation/screens/page/watch/export.dart';
import 'package:ui_animation/screens/widgets/item_list_video.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({Key? key}) : super(key: key);




  @override
  State<StatefulWidget> createState() {
    return WatchPageState();
  }
}

class WatchPageState extends State<WatchPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<WatchVM>(builder: (context, data, child) {
      return Scaffold(
        body: Center(
          child: ListView.builder(
            itemCount: data.video.length,
              itemBuilder: (context,index){
            return VideoPlayer(url: data.video[index].urlId);
          }),
        ),
      );
    });
  }
}
