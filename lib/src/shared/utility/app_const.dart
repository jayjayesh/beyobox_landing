// ignore_for_file: type_annotate_public_apis

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class AppConst {
  static const String kAppName = 'kamai';
  static const String iosAppId = '';
  static const String iosAppBundleID = 'com.spikeclub.kamai';
  static const String androidAppBundleID = 'com.spikeclub.kamai';

  static const String domainBaseURL = 'http://172.16.0.196';
  static const String devBaseURL = '$domainBaseURL:8080';
  static const String staggingBaseURL = '$domainBaseURL:8080';
  static const String prodBaseURL = '$domainBaseURL:8080';

  static const String fcmServerKey = '1234567890';

  // GitLab FeedBack Configuration.

  static const String gitLabProjectId = '38250309';
  static const String gitLabApiToken = 'glpat-GJh4NGyHx45CJwWrGCYm';

  static const String kInAppWebViewBaseURL =
      kReleaseMode ? 'https://kamai1234.com/webview' : 'https://kamai1234.com/webview'; //'kamai.com';
  static const String kamaiWebSiteURL = kReleaseMode ? 'https://www.kamai1234.com' : 'https://www.kamai1234.com';
  static const String kamaiAppDownloadLink =
      kReleaseMode ? 'https://spikeclub.page.link/kamai-app' : 'https://spikeclub.page.link/kamai-app';
  static const String spreadTheWordContent =
      'Download the Kamai App for Stocks Trading & Investing. Join Jackpot Clubs for Stock Recommendations, Multibaggers, Breakouts by Certified Experts, and Stock Market Games to Earn while you Learn. \n${AppConst.kamaiAppDownloadLink}';

  static const String helpMailURL = 'contact@kamai.app';

  static const String kGoogleMapApiKey = '123456789';
  //String.fromEnvironment('kGoogleMapApiKey');
  // pk_test vs sk_test = Publishable Key and the Secret Key
  static const String kStripePublishableKey = '123456789';
  static const String kEncryptDecryptKey = 'O8Pw6h2xRWMOrS%EQt1G@5uoOPrAwMg555';
  static const String kEncryptDecryptIV = '1234567890123456';
  static const String kSentryDevDnsKey = 'https://dbaa706d762d458fa1cc07445eddb790@o1377221.ingest.sentry.io/6687823';
  static const String kSentryStaggingDnsKey =
      'https://dbaa706d762d458fa1cc07445eddb790@o1377221.ingest.sentry.io/6687823';
  static const String kSentryProductionDnsKey =
      'https://dbaa706d762d458fa1cc07445eddb790@o1377221.ingest.sentry.io/6687823';
  static const double negativeLetterSpacing = -0.5;
  static const double defaultHorizontalPadding = 20;
  static const double defaultVerticalPadding = 20;
  static const double defaultVerticalPadding5 = 5;
  static const double appBarWidgetHeightWithStatusBarHeight = 56; //85; // 100;
  static const double appBarWidgetHeight = 56; //60; //56; //85; // 100;
  static const double defaultCornerRedious = 10;
  static const double replyChatMsgCornerRedious = 5;
  static const double buttonCornerRedious = 10;
  static const double filterButtonRadius = 100;
  static const double chatBubbleCornerRedious = 10;
  static const double chatBubbleBorderAroundMediaFile = 1;
  static const double chatBubbleMarketBubbleCornerRedious = 100;
  static const double defaultSquareButtonHeight = 40;
  static const double defaultGlosyTabBarHeight = 40; //100;
  static const double starIconHeight = 21;
  static const double circularProgressIndicatorHeight = 30;
  static const double threeDotIconHeight = 20;
  static const List<double> dottedBorderDashedPattern = [5, 5];
  static const int maxLengthBioTextFieldWords = 35;
  static const int maxLengthServiceDescriptionWords = 35;
  static const double appbarElevation = 5;
  static const double gridItemSpacing = 3;
  static const double niftyBarMinWidth = 160;
  static const double niftyBarMaxWidth = 190;

  static const String defaultCurrency = r'$';
  static const String defaultCountryCorrencyCode = 'usd';
  static const String defaultCountryName = 'US';
  static const String defaultCountryCode = '1';
  static const String mobileCountryCode = '+91';
  static const int defaultMobileNumberMaxLength = 10;
  static const int defaultZipCodeMaxLength = 5;
  static const int defaultPaginationItemsPerPage = 10;

  static const String secureStorageEmailKey = 'KEY_EMAIL';
  static const String secureStoragePasswordKey = 'KEY_PASSWORD';

  //--- Models ----
  static const String servicePackageCustomeKey = 'service_package_key';
  static const String selectedCardIdAddNewCard = 'addNewCard';

  //--- API FormData Key ----
  static const String vUserIdFormDataKey = 'vUserId';
  static const String iServiceIdFormDataKey = 'iServiceId';
  static const String iOrderIdFormDataKey = 'iOrderId';
  static const String isSubscribeClubAPIKey = 'isSubscribeClubAPIKey';
  static const String messageIdAPIParamKey = 'vMessageId';
  static const String clubIdAPIParamKey = 'clubID';
  // param : MultibaggerStockDetailPage
  static const String vSymbolMultibaggerStockParamKey = 'vSymbol';
  static const String influencerAPIParamKeyPage = 'page';
  static const String influencerAPIParamKeySearchText = 'user_name';

  // param that used to fetch new chat messages
  static const String chatStartDateTimeAPIParamKey = 'start_datetime';
  // param that used to fetch chat history
  static const String chatEndDateTimeAPIParamKey = 'end_datetime';
  static const String replyToMessageIdAPIParamKey = 'replyToMessageId';
  static const String messageTextAPIParamKey = 'messageText';
  static const String messageTextHTMLAPIParamKey = 'messageHTMLText';
  static const String messageFileAPIParamKey = 'messageFile';
  static DateFormat chatMsgCreatedAtDateFormate = DateFormat('yyyy-MM-ddTHH:mm:ss');

  //--- Hero Tag ----
  static const String heroTagKamaiSplashAnimation = 'heroTagKamaiSplashAnimation';

  //--- Website ----
  static const double kWebsiteScreenWidth = 938;

  //--- Pull To Refresh ----
  static const int pullToRefreshDelay = 1;

  //--- Pagination ----
  static const int maxLimitFetchChatMsg = 100;

  //--- Dashboard ----
  static const String nifty50Symbol = 'NIFTY 50';
  static const String niftyBankSymbol = 'NIFTY BANK';
  static const String vIdJackpotClubMultibagger = 'multibaggers';
  static const String vIdJackpotClubRecommendation = 'recommendations';
  static const String mClubAttributeOwner = 'Owner';
  static const String mClubAttributeSubscribers = 'Subscribers';
  static const String mClubAttributeDescription = 'Description';
  static const String mClubAttributeDisclaimer = 'Disclaimer';
  static const String mClubAttributeSubscription = 'Subscription';

  //--- Explore page ----
  static const String defaultSelectedFilterExplorePage = 'all';

  //---- Push Notification -----

// NOTE : Default channel when not get from push notification payload
  static const String pushNotificationChannelId = 'high_importance_channel';
  static const String pushNotificationChannelName = 'High Importance Channel';
  static const String pushNotificationChannelDesc = 'notification channel for all other type';

  //---- Hive -----
  static const int hiveAdpKeyJackPotClubModel = 0;
  static const int hiveAdpKeyChatDataModel = 1;
  static const int hiveLimitedMessagesToStoreForAClub = 190;
}
