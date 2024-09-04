import 'package:cpod_widgets/cpod_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SampleStateless(),
    );
  }
}

class SampleStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: buildBody(),
    );
  }

  Widget newb() {
    return Center(
      child: Image(
        image: AssetImage(
          '10-0.jpg',
          package: 'shrine_images',
        ),
      ),
    );
  }


  Widget buildBody() {
    return Column(
      children: <Widget>[
        // CpodButton( onPressed: (){print('click');}),
        Image(
          image: AssetImage(
            '10-0.jpg',
            package: 'shrine_images',
          ),
        ),

        Text('hello'),
        CpodButton(onPressed: (){;},)
      ],
    );
  }
}
