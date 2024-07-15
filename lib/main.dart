import 'package:flutter/material.dart';
import 'package:quotes_app/screens/editPage.dart';
import 'package:quotes_app/screens/favouritePage.dart';
import 'package:quotes_app/screens/homePage.dart';
import 'package:quotes_app/screens/infoPage.dart';
import 'package:quotes_app/screens/infoPage2.dart';
import 'package:quotes_app/screens/quotesPage.dart';
import 'package:quotes_app/screens/splashPage.dart';
import 'package:quotes_app/utils/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        MyRoutes.splashPage: (context) => SplashScreen(),
        MyRoutes.infoPage: (context) => InfoPage(),
        MyRoutes.infoPage2: (context) => InfoPage2(),
        MyRoutes.homePage: (context) => HomeScreen(),
        MyRoutes.quotePage: (context) => QuotePage(),
        MyRoutes.editPage: (context) => Editpage(),
        MyRoutes.favouritePage: (context) => FavouritePage(),
      },
    );
  }

void main() {
  runApp(MyApp());
}

}
