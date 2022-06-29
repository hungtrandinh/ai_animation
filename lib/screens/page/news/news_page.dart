import 'package:flutter/material.dart';
import 'package:ui_animation/screens/page/login/login_page.dart';

import '../../animation/value_change_animated.dart';
import '../register/register_page.dart';

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
      body: RegisterPage()
    );
  }

}