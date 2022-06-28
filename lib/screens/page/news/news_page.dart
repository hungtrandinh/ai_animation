import 'package:flutter/material.dart';

import '../../animation/value_change_animated.dart';

class NewsPage extends StatefulWidget{
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewsPageState();
  }

}
class NewsPageState extends State<NewsPage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ValueChangeAnimated()
    );
  }

}