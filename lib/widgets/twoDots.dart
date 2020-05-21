import 'package:flutter/material.dart';
import 'package:fluttermusic/utils/colors.dart';
import 'package:fluttermusic/utils/config.dart';

class twoDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.widthMultiplier * 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
                color: textDark.withOpacity(0.6), shape: BoxShape.circle),
          ),
          Container(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
                color: textDark.withOpacity(0.6), shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}
