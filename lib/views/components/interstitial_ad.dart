

import 'package:facebook_audience_network/facebook_audience_network.dart';

class InterstitialAdManager {
  // Function to load and show the interstitial ad
  static void loadAndShowInterstitialAd() {
    FacebookInterstitialAd.loadInterstitialAd(
      placementId: "IMG_16_9_APP_INSTALL#299486252083346_299911042040867",
      listener: (result, value) {
        if (result == InterstitialAdResult.LOADED) {
          // Delay to give the user some time before showing the ad
          Future.delayed(const Duration(seconds: 2), () {
            FacebookInterstitialAd.showInterstitialAd(delay: 5000);
          });
        }
      },
    );
  }
}
