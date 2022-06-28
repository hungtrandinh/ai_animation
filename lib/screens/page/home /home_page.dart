import 'package:flutter/material.dart';
import 'package:ui_animation/screens/widgets/list_game_top_home.dart';
import 'package:ui_animation/screens/widgets/swiper_banner_home.dart';
import 'package:ui_animation/value/colors_app.dart';
import 'package:ui_animation/value/images_app.dart';
import 'package:ui_animation/value/strings_app.dart';
import '../../widgets/news_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Image.asset(
              ImagesApp.logo,
              height: 50,
              width: 100,
            ),
          ),
          leading: const Icon(
            Icons.notifications,
            color: ColorApp.colorMainTextApp,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: ColorApp.colorMainTextApp,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: const ListGameTopHome()),
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20, top: 25),
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red,
                                      blurRadius: 5.0,
                                      spreadRadius: 5,
                                    )
                                  ]),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(
                                  left: 22, right: 22, top: 5, bottom: 23),
                              child: SwiperBanner())
                        ],
                      ))
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: ColorApp.colorMainTextApp,
                          indicatorPadding:const EdgeInsets.only(left: 10,right: 10),
                          labelColor: ColorApp.colorMainTextApp,
                          unselectedLabelColor:
                              ColorApp.colorMainTextApp.withOpacity(0.5),
                          controller: _tabController,
                          tabs: <Widget>[
                            const Tab(
                              child: Text(
                                Strings.news,
                              ),
                            ),
                          const Tab(
                            child: Text(Strings.teamRanking),
                          ),
                            const Tab(
                              child: Text(Strings.stream),
                            ),
                            Tab(
                              child: ClipRRect(
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(ImagesApp.showGrid),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 10,
                      child: TabBarView(
                        controller: _tabController,
                        children:const   <Widget>[
                          NewsTab(),
                          Center(
                            child: Text("It's rainy here"),
                          ),
                          Center(
                            child: Text("It's sunny here"),
                          ),
                          Center(
                            child: Text("It's sunny here"),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
