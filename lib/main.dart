import 'package:flutter/material.dart';
import 'package:flutter_pokedex/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      builder: (BuildContext context,child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lol Heros',
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.latoTextTheme()
          ),
          home: const HomePage()),
    );
  }
}
