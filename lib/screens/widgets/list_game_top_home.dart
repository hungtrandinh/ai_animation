import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_animation/screens/page/home%20/export.dart';

class ListGameTopHome extends StatefulWidget {
  const ListGameTopHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListGameTopHomeState();
  }
}

class ListGameTopHomeState extends State<ListGameTopHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeVM>(builder: (context, data, child) {
      return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.game.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  if (kDebugMode) {
                    print(1);
                  }
                },
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: data.game[index].color, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(data.game[index].avatar),
                  ),
                ),
              ),
            );
          });
    });
  }
}
