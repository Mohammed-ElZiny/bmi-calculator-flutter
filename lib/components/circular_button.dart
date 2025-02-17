import 'package:flutter/material.dart';


class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  CircularButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape:CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints:BoxConstraints.tightFor(
        width:56.0,
        height:56.0,
      ),
      onPressed:onPressed,
      child:Icon(icon),

    );
  }
}

