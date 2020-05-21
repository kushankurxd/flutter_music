import 'package:flutter/material.dart';
import 'package:fluttermusic/utils/colors.dart';
import 'package:fluttermusic/utils/config.dart';

class PlaylistXD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlaylistXDState();
  }
}

class _PlaylistXDState extends State<PlaylistXD> {
  int selected = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.heightMultiplier * 8,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 16,
                  right: SizeConfig.widthMultiplier * 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'PLAYLIST',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: textDark,
                          letterSpacing: 0.4,
                          fontSize: SizeConfig.textMultiplier * 1.4,
                        ),
                      ),
                      Text(
                        'Blue Neighbourhood',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.2,
                            fontSize: SizeConfig.textMultiplier * 1.7,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: textLight, width: 0.6),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(3),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: SizeConfig.heightMultiplier * 2,
                        color: textDark,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 76,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return index == selected
                        ? Padding(
                          padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,end: Alignment.center,
                                colors: [textLight.withOpacity(0.1),backgroundColor]
                              )
                            ),
                            padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 3),
                            child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.widthMultiplier * 14,
                                        right: SizeConfig.widthMultiplier * 8,
                                    bottom: SizeConfig.heightMultiplier),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SizedBox(
                                          width: SizeConfig.widthMultiplier * 38,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: textLight,
                                                        width: 0.8),
                                                    shape: BoxShape.circle),
                                                padding: EdgeInsets.all(
                                                    SizeConfig.heightMultiplier),
                                                child: Icon(Icons.pause,size: SizeConfig.heightMultiplier * 2.2,),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    'OSCAR H.',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: textDark,
                                                        letterSpacing: 0.2,
                                                        wordSpacing: 2),
                                                  ),
                                                  Text(
                                                    'The Dawn',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: SizeConfig
                                                                .textMultiplier *
                                                            2.2,
                                                        fontWeight: FontWeight.w500,
                                                        letterSpacing: 0.2,
                                                        wordSpacing: 1),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '3:02',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: textDark,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.2),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.widthMultiplier * 25),
                                    child: Slider(
                                      value: 0.80,
                                      max: 3.02,
                                      onChanged: (double value) {},
                                    ),
                                  )
                                ],
                              ),
                          ),
                        )
                        : Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 14,
                                right: SizeConfig.widthMultiplier * 8,
                                bottom: SizeConfig.heightMultiplier * 3,
                            top: SizeConfig.heightMultiplier * 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 38,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: textLight, width: 0.8),
                                            shape: BoxShape.circle),
                                        padding: EdgeInsets.all(
                                            SizeConfig.heightMultiplier),
                                        child: Icon(Icons.play_arrow,size: SizeConfig.heightMultiplier * 2.2,),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'OSCAR H.',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: textDark,
                                                letterSpacing: 0.2,
                                                wordSpacing: 2),
                                          ),
                                          Text(
                                            'The Dawn',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        2.2,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.2,
                                                wordSpacing: 1),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  '3:02',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: textDark,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.2),
                                ),
                              ],
                            ),
                          );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: SizeConfig.heightMultiplier * 11,
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 14,
              right: SizeConfig.widthMultiplier * 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: SizeConfig.widthMultiplier * 34,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: textLight, width: 0.6),
                            shape: BoxShape.circle),
                        padding: EdgeInsets.all(SizeConfig.heightMultiplier),
                        child: Icon(
                          Icons.pause,
                          color: backgroundColor,
                          size: SizeConfig.heightMultiplier * 2.2,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'OSCAR H.',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: backgroundColor,
                              fontSize: SizeConfig.textMultiplier * 1.4,
                              letterSpacing: 0.2,
                              wordSpacing: 2),
                        ),
                        Text(
                          'The Dawn',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: backgroundColor,
                              fontSize: SizeConfig.textMultiplier * 2,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                              wordSpacing: 1),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: textLight.withOpacity(0.4), width: 0.6),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    size: SizeConfig.heightMultiplier * 2,
                    color: backgroundColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
