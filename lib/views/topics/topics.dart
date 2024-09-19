import 'package:computer_12/views/components/cards.dart';
import 'package:flutter/material.dart';
import 'package:computer_12/views/pages/unit1.dart';
import 'package:computer_12/views/pages/unit2.dart';
import 'package:computer_12/views/pages/unit3.dart';
import 'package:computer_12/views/pages/unit4.dart';
import 'package:computer_12/views/pages/unit5.dart';
import 'package:computer_12/views/pages/unit6.dart';
import 'package:computer_12/views/pages/unit7.dart';

import '../components/interstitial_ad.dart';

class TopicsList extends StatelessWidget {
  const TopicsList({super.key});

  // Function to navigate after the ad
  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          TopicsCards(
            title: 'DataBase',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, const DataBase());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Data Communication and Networking',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, NetWork());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Web Technology II',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, const WebDevelopment());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Programming in C',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, const ProgrammingC());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Objected Oriented Programming',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, OoP());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Software Process Model',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, SpM());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TopicsCards(
            title: 'Recent Trend in Technology',
            onPressed: () {
              InterstitialAdManager.loadAndShowInterstitialAd(context, () {
                navigateToPage(context, TechnologyChaper());
              });
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
