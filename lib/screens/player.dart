import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermusic/utils/colors.dart';
import 'package:fluttermusic/utils/config.dart';
import 'package:fluttermusic/utils/helper.dart';

class PlayerXD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayerXDState();
  }
}

class _PlayerXDState extends State<PlayerXD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 8),
                child: Container(
                    height: SizeConfig.heightMultiplier * 54,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 46,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                      SizeConfig.heightMultiplier * 19),
                                  bottomRight: Radius.circular(
                                      SizeConfig.heightMultiplier * 19)),
                              child: Image.asset(
                                'img/troyeSivan.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: SizeConfig.heightMultiplier * 5),
                            child: Container(
                              width: SizeConfig.widthMultiplier * 54,
                              height: SizeConfig.heightMultiplier * 9.2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.widthMultiplier * 4),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: textLight,
                                        blurRadius:
                                            SizeConfig.widthMultiplier * 6,
                                        offset: Offset(
                                            0, SizeConfig.heightMultiplier))
                                  ],
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          SizeConfig.heightMultiplier * 6))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.skip_previous,
                                    color: textDark,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        switchPlayPause();
                                      });
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(
                                            SizeConfig.widthMultiplier * 3),
                                        decoration: BoxDecoration(
                                            color: backgroundColor,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: textLight, width: 1.6)),
                                        child: playMusic
                                            ? Icon(Icons.pause)
                                            : Icon(Icons.play_arrow)),
                                  ),
                                  Icon(
                                    Icons.skip_next,
                                    color: textDark,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
