import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdProvider with ChangeNotifier {
  BannerAd? _bannerAd;
  bool _isAdLoaded = false;

  bool get isAdLoaded => _isAdLoaded;
  BannerAd? get bannerAd => _bannerAd;

  AdProvider() {
    _loadBannerAd();
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          _isAdLoaded = true;
          notifyListeners();
        },
        onAdFailedToLoad: (ad, error) {
          _isAdLoaded = false;
          ad.dispose(); 
          notifyListeners();
        },
      ),
      request: const AdRequest(),
    );
    _bannerAd!.load(); 
  }

  void reloadBannerAd() {
    _bannerAd?.dispose();
    _loadBannerAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }
}
