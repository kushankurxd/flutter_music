import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermusic/utils/colors.dart';
import 'package:fluttermusic/utils/config.dart';
import 'package:fluttermusic/utils/helper.dart';
import 'package:fluttermusic/widgets/twoDots.dart';

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
          child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: SizeConfig.widthMultiplier * 26,
            color: textLight.withOpacity(0.1),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Album cover and controls
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 10),
                  child: SizedBox(
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
                                  musicList[selectedMusic].image,
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
                                    Container(
                                        padding: EdgeInsets.all(
                                            SizeConfig.widthMultiplier * 3),
                                        decoration: BoxDecoration(
                                            color: backgroundColor,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: textLight, width: 1.6)),
                                        child: Icon(Icons.pause)),
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

              SizedBox(
                height: SizeConfig.heightMultiplier,
              ),

              //Playlist and controls
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 18,
                    right: SizeConfig.widthMultiplier * 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Name and down-arrow
                    Row(
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
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: textLight, width: 0.6),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: SizeConfig.heightMultiplier * 2,
                                color: textDark,
                              )),
                        )
                      ],
                    ),

                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.2,
                    ),
                    //Controls
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.heart_solid,
                          color: textDark.withOpacity(0.6),
                          size: SizeConfig.heightMultiplier * 2.4,
                        ),
                        Icon(
                          Icons.repeat,
                          color: textDark.withOpacity(0.6),
                          size: SizeConfig.heightMultiplier * 2.4,
                        ),
                        Icon(
                          CupertinoIcons.shuffle_thick,
                          color: textDark.withOpacity(0.6),
                          size: SizeConfig.heightMultiplier * 2.4,
                        ),
                        twoDots(),
                      ],
                    ),

                    SizedBox(
                      height: SizeConfig.heightMultiplier * 10,
                    ),
                    //Artist and music name
                    Text(
                      musicList[selectedMusic].artistName,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: textDark,
                          fontSize: SizeConfig.textMultiplier * 1.4,
                          wordSpacing: 2,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          musicList[selectedMusic].songName,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.textMultiplier * 3.4,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              wordSpacing: 2),
                        ),
                        twoDots()
                      ],
                    ),

                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),

                    //Timer - start and end
                    Padding(
                      padding:
                          EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '0:56',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: textDark,
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textMultiplier * 1.4,
                                letterSpacing: 0.2),
                          ),
                          Text(
                            musicList[selectedMusic].maxTime,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: textDark,
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textMultiplier * 1.4,
                                letterSpacing: 0.2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 14),
                child: Slider(
                  value: 0.56,
                  max: 3.02,
                  onChanged: (double value) {},
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
