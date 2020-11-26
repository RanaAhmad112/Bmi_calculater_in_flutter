import 'package:flutter/material.dart';
class RepeatContainercode extends StatelessWidget {
  RepeatContainercode({@required this.colors,this.cardwidget});
  final Color colors;
  final Widget cardwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardwidget,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}