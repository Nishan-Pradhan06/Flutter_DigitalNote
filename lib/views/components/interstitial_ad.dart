// import 'package:facebook_audience_network/facebook_audience_network.dart';

// class InterstitialAdHelper {
//   static bool _isInterstitialAdLoaded = false;

//   static void loadInterstitialAd() {
//     FacebookAudienceNetwork.init(
//       testingId: "YOUR_TESTING_ID", // Optional for testing
//     );

//     FacebookInterstitialAd.loadInterstitialAd(
//       placementId: "IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID",
//       listener: (result, value) {
//         if (result == InterstitialAdResult.LOADED) {
//           _isInterstitialAdLoaded = true;
//         } else if (result == InterstitialAdResult.DISMISSED ||
//             result == InterstitialAdResult.ERROR) {
//           _isInterstitialAdLoaded = false;
//           loadInterstitialAd(); // Reload the ad after dismissal or error
//         }
//       },
//     );
//   }

//   static void showInterstitialAd(Function onAdDismissed) {
//     if (_isInterstitialAdLoaded) {
//       FacebookInterstitialAd.showInterstitialAd(
//         listener: (result, value) {
//           if (result == InterstitialAdResult.DISMISSED ||
//               result == InterstitialAdResult.ERROR) {
//             _isInterstitialAdLoaded = false;
//             loadInterstitialAd(); // Reload the ad after dismissal
//             onAdDismissed(); // Perform the navigation after ad is dismissed
//           }
//         },
//       );
//     } else {
//       onAdDismissed(); // If ad is not loaded, proceed with the navigation
//     }
//   }

//   static void disposeAd() {
//     FacebookInterstitialAd
//         .destroyInterstitialAd(); // Destroy ad when no longer needed
//   }
// }
