import 'package:flutter/material.dart';

class WatchPage extends StatefulWidget{
  const WatchPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return WatchPageState();
  }
}
class WatchPageState extends State<WatchPage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Watch"),
      ),
    );
  }

}