import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CpodButton extends StatelessWidget {
  final GestureTapCallback onPressed;

  const CpodButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.redAccent,
      splashColor: Colors.red,
      onPressed: () {
        if (onPressed != null) onPressed();
      },
      child: Padding(
        // padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage('assets/wp.png',
                  package:
                      'cpod_widgets' // this should be registered in project using it, see example pubspec.yam
                  ),
              width: 40.0,
            ),
/*
            Image.asset(
              'assets/wp.png',
              width: 40.0,
            ),
*/
            // Text('Help', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      // shape: StadiumBorder(),
      shape: CircleBorder(),
    );
  }
}
