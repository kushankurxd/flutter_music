import 'package:flutter/material.dart';
import 'package:fluttermusic/screens/player.dart';
import 'package:fluttermusic/utils/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            sliderTheme: SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: SizeConfig.widthMultiplier * 1.6)
            ),
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: PlayerXD(),
        );
      });
    });
  }
}
