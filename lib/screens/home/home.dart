import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_mis_app/screens/home/widgets/go_premium.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [GoPremium()],
      ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(children: [
        SizedBox(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/avatar.jpg'),
            )),
        const SizedBox(width: 10),
        const Text('Hi, Clenyse!',
            style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold))
      ]),
      actions: const [Icon(Icons.more_vert, color: Colors.black, size: 40)],
    );
  }
}