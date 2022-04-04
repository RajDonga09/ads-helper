import 'package:ads_helper/interstitial_ad/interstitial_ad.dart';
import 'package:ads_helper/rewarded_ad/rewarded_ad.dart';

class AdConfig {
  static late String adMobBannerAdUnitId;
  static late String facebookBannerAdUnitId;
  static late String adMobInterstitialAdUnitId;
  static late String facebookInterstitialAdAdUnitId;
  static late String adMobRewardedAdUnitId;
  static late bool isShowFacebookBannerAds;
  static late bool isShowFacebookInterstitialAd;
  static late bool isProFeatureEnable;
  static late int coolDownsTaps;
  static late bool isAdFeatureEnable;

  // static int firstCoolDowns = 30;
  // static int secondCoolDowns = 60;

  static init({
    required String adMobBannerId,
    required String faceBookBannerId,
    required String adMobBannerInterstitialAdId,
    required String faceBookInterstitialAdId,
    required String adMobRewardAdId,
    required bool proFutureEnable,
    bool isShowFaceBookBannerAd = false,
    bool showFacebookInterstitialAd = false,
    bool adFeatureEnable = true,
    int coolDownsTap = 3,
    // int? firstCoolDown,
    // int? secondCoolDown,
  }) async {
    adMobBannerAdUnitId = adMobBannerId;
    facebookBannerAdUnitId = faceBookBannerId;
    adMobInterstitialAdUnitId = adMobBannerInterstitialAdId;
    facebookInterstitialAdAdUnitId = faceBookInterstitialAdId;
    adMobRewardedAdUnitId = adMobRewardAdId;
    isShowFacebookBannerAds = isShowFaceBookBannerAd;
    isShowFacebookInterstitialAd = showFacebookInterstitialAd;
    isProFeatureEnable = proFutureEnable;
    isProFeatureEnable = proFutureEnable;
    isAdFeatureEnable = adFeatureEnable;
    coolDownsTaps = coolDownsTap;
    // if (firstCoolDown != null) firstCoolDowns = firstCoolDown;
    // if (firstCoolDown != null) secondCoolDowns = firstCoolDown;

    /// Load Ads
    if (isAdFeatureEnable) {
      InterstitialAdUtils.loadInterstitialAd();
      RewardedAdUtils.loadRewardedAd();
    }
  }
}
