import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';

part 'helpers/sneaker_model.dart';
part 'screens/sneaker_bottom_nav_screen.dart';
part 'screens/sneaker_home_screen.dart';
part 'widgets/horizontal_card.dart';
part 'widgets/sneaker_card_type_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sneakers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF020202),
        backgroundColor: Colors.white,
        cardColor: Color(0xFFF2F8F8),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline1: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF020202),
          ),
          headline2: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF020202),
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF020202),
          ),
          headline4: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF020202),
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF808485),
          ), 
          bodyText2: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF808485),
          ), 
        )
      ),
      home: SneakerBottomNavScreen(),
    );
  }
}
