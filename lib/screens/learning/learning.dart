import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_mis_app/screens/learning/parent_widget.dart';
import 'package:task_mis_app/screens/learning/tap_box_a.dart';

import 'favorite_widget.dart';

class Learning extends StatelessWidget {
  const Learning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );
    return MaterialApp(
      title: 'Flutter first demo',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Back button"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [TapBoxA(), ParentWidget()],
          ),
        ]),
      ),
    );
  }
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              'Oeschinen Lake Compground',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Kanderstef, Switzerland',
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      )),
      const FavoriteWidget(),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}
