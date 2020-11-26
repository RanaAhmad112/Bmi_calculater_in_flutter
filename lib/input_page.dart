import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:new RepeatContainercode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.male,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      'MALE',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
              ),),
              Expanded(child:new RepeatContainercode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.female,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      'FEMALE',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
              ),),
            ]
          ),),
          Expanded(child: RepeatContainercode(colors: Color(0xFF1D1E33),),),
          Expanded(child: Row(
              children: <Widget>[
                Expanded(child:new  RepeatContainercode(colors: Color(0xFF1D1E33),),),
                Expanded(child:new  RepeatContainercode(colors: Color(0xFF1D1E33),),),
              ]
          ),),
        ]
      ),
    );
  }
}

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
