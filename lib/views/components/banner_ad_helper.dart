import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/cupertino.dart';

class BannerAdHelper extends StatefulWidget {
  const BannerAdHelper({super.key});

  @override
  State<BannerAdHelper> createState() => _BannerAdHelperState();
}

class _BannerAdHelperState extends State<BannerAdHelper> {
  @override
  void initState() {
    super.initState();
    FacebookAudienceNetwork.init(
      testingId: "b9f2908b-1a6b-4a5b-b862-ded7ce289e41",
    );
  }

  @override
  Widget build(BuildContext context) {
    return FacebookBannerAd(
      placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964944860251047",
      bannerSize: BannerSize.STANDARD,
      listener: (result, value) {
        debugPrint("Banner Ad: $result -->  $value");
      },
    );
  }
}
