import 'package:computer_12/views/topics/topics.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import '../providers/ad_provider.dart';
import 'drawer/drawer.dart';

// class ActionButton extends StatelessWidget {
//   const ActionButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final adProvider = Provider.of<AdProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 40.0,
//         backgroundColor: const Color(0xff618989),
//         centerTitle: true,
//         title: const Text(
//           'Computer Science',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 25.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: const SizedBox(
//         child: TopicsList(),
//       ),
//       backgroundColor: const Color.fromARGB(130, 173, 223, 241),
//       bottomNavigationBar: adProvider.isAdLoaded && adProvider.bannerAd != null
//           ? SizedBox(
//               height: adProvider.bannerAd!.size.height.toDouble(),
//               width: adProvider.bannerAd!.size.width.toDouble(),
//               child: AdWidget(ad: adProvider.bannerAd!),
//             )
//           : const SizedBox(),
//       drawer: const NavDrawer(),
//     );
//   }
// }
class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    final adProvider = Provider.of<AdProvider>(context);

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
      bottomNavigationBar: adProvider.isAdLoaded && adProvider.bannerAd != null
          ? SizedBox(
              height: adProvider.bannerAd!.size.height.toDouble(),
              width: adProvider.bannerAd!.size.width.toDouble(),
              child: AdWidget(ad: adProvider.bannerAd!),
            )
          : const SizedBox(),
      drawer: const NavDrawer(),
    );
  }

  @override
  void dispose() {
    final adProvider = Provider.of<AdProvider>(context, listen: false);
    adProvider.bannerAd?.dispose();
    super.dispose();
  }
}
