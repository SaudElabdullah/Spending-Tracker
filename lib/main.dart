import 'package:flutter/material.dart';
import 'package:spending_tracker/screens/driver.dart';
import 'package:spending_tracker/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Spending Tracker',
              theme: ThemeData(
                textTheme: GoogleFonts.urbanistTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              home: const Driver(),
            );
          },
        );
      },
    );
  }
}