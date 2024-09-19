import 'package:computer_12/views/topics/topics.dart';
import 'package:flutter/material.dart';
import 'components/banner_ad_components.dart';
import 'drawer/drawer.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: const Color(0xff618989),
        centerTitle: true,
        title: const Text(
          'Computer Science',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SizedBox(
        child: TopicsList(),
      ),
      backgroundColor: const Color.fromARGB(130, 173, 223, 241),
     bottomNavigationBar: const BannerAdComponents(),
      drawer: const NavDrawer(),
    );
  }
}
