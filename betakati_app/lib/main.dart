import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() {
  runApp(const MyApp());
}

Color brandColor = Color(0xFFD7C0AE);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      ColorScheme lightColorScheme;
      ColorScheme darkColorScheme;

      if (lightDynamic != null && darkDynamic != null) {
        lightColorScheme = lightDynamic.harmonized()..copyWith();
        lightColorScheme = lightColorScheme.copyWith(secondary: brandColor);
        darkColorScheme = darkDynamic.harmonized();
      } else {
        lightColorScheme = ColorScheme.fromSeed(seedColor: brandColor);
        darkColorScheme = ColorScheme.fromSeed(
            seedColor: brandColor, brightness: Brightness.dark);
      }

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: lightColorScheme.background,
            title: const Center(
              child: Text(
                'BETAKATI_APP',
                style: TextStyle(fontFamily: 'firaCode'),
              ),
            ),
          ),
          backgroundColor: lightColorScheme.background,
          body: const SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/xxx.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Ajdin Kuduzoivc",
                    style: TextStyle(
                        fontFamily: 'FiraCode',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Center(
                  child: Text(
                    "IT Student",
                    style: TextStyle(
                        fontFamily: 'FiraCode',
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.call_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "062044193",
                      style:
                          TextStyle(fontFamily: 'firaCode', color: Colors.blue),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "ajdin.kuduzovic@gmail.com",
                      style:
                          TextStyle(fontFamily: 'firaCode', color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
