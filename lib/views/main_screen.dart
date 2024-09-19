import 'package:computer_12/views/components/app_bar.dart';
import 'package:computer_12/views/components/banner_ad_helper.dart';
import 'package:computer_12/views/topics/topics.dart';
import 'package:flutter/material.dart';
import 'drawer/drawer.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        titleText: 'Computer Science',
      ),
      body: SizedBox(
        child: TopicsList(),
      ),
      backgroundColor: Color.fromARGB(130, 173, 223, 241),
      bottomNavigationBar: BannerAdHelper(),
      drawer: NavDrawer(),
    );
  }
}
