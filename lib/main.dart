import 'package:flutter/material.dart';

import 'components/item_card.dart';
import 'screens/1_no_connection.dart';
import 'screens/404_error.dart';

List<Widget> screenList = [
  Error404Screen(),
  /*NoConnectionScreen(),
  Error404Screen(),
  Error404Screen2(),
  SomethingWentWrongScreen(),
  FileNotFoundScreen(),
  SomethingWrongScreen(),
  ErrorScreen(),
  Error2Screen(),
  LocationAccessScreen(),
  ConnectionLostScreen(),
  BrokenLinkScreen(),
  ArticleNotFoundScreen(),
  NoSpaceScreen(),
  NoResultFoundScreen(),
  PaymentFaildScreen(),
  TimeErrorScreen(),
  LocationErrorScreen(),
  RouterOfflineScreen(),
  ConnectionFaildScreen(),
  NoFileScreen(),
  CameraAccessScreen(),*/
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Flutter Error State Pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home:
          Body(), /*PageView.builder(
      itemCount: screenList.length,
      itemBuilder: (context,index){
        return screenList[index];
      },),*/
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  ItemCard(
                    title: '404',
                    shopName: 'Error Page',
                    svgSrc: "assets/icons/burger_beer.svg",
                    press: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Error404Screen()));
                    },
                  ),
                  ItemCard(
                    title: "No",
                    shopName: 'Connectiion Screen',
                    svgSrc: "assets/icons/burger_beer.svg",
                    press: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NoConnectionScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
