import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconIcon, this.iconText});
  final IconData? iconIcon;
  final String? iconText;

  @override
  Widget build(BuildContext context) {
    bool textVisibility = (iconText != null);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Visibility(
          visible: textVisibility,
          child: Text(
            iconText.toString(),
            style: kLabelTextStyle,
          ),
        )
      ],
    );
  }
}
