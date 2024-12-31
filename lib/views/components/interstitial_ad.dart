// import 'package:facebook_audience_network/ad/ad_interstitial.dart';
// import 'package:flutter/material.dart';

// class InterstitialAdManager {
//   // Function to load and show the interstitial ad with a callback for when the ad is done loading
//   static void loadAndShowInterstitialAd(
//       BuildContext context, VoidCallback onAdComplete) {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) {
//         return const Center(
//           child: CircularProgressIndicator(
//             color: Color(0xff618989),
//           ),
//         );
//       },
//     );

//     FacebookInterstitialAd.loadInterstitialAd(
//       placementId: "IMG_16_9_APP_INSTALL#299486252083346_299911042040867",
//       listener: (result, value) {
//         if (result == InterstitialAdResult.LOADED) {
//           Navigator.of(context).pop(); // Close the loading dialog
//           FacebookInterstitialAd.showInterstitialAd();
//           Future.delayed(const Duration(milliseconds: 500),
//               onAdComplete); // Call callback after the ad
//         } else if (result == InterstitialAdResult.DISMISSED ||
//             result == InterstitialAdResult.ERROR) {
//           Navigator.of(context)
//               .pop(); // Close the loading dialog in case of error or dismissal
//           onAdComplete(); // Continue to the next page if the ad fails or is dismissed
//         }
//       },
//     );
//   }
// }
