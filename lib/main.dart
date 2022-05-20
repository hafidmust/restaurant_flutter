import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/data/restaurant.dart';
import 'package:restaurant/ui/detail_screen.dart';
import 'package:restaurant/ui/home_page.dart';
import 'package:restaurant/ui/splashscreen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      initialRoute: "/splashscreen",
      routes: {
        "/splashscreen": (context) => SplashScreenView(),
        "/home_page": (context) => HomePage(),
        "/detail_screen": (context) => DetailScreen(
              resto: ModalRoute.of(context)!.settings.arguments
                  as RestaurantElement,
            )
      },
    );
  }
}
