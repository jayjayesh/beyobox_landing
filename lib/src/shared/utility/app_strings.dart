class AppStrings {
  ///
  ///
  static const String socketExceptionErrorText =
      "We're sorry, there was a problem connecting to the server. Please try again later.  ";
  static const String noInternetText = 'No Internet connection';
  static const String noInternetSubText = 'Please check your internet connection or try again later.';
  static const String noInternetButtonText = 'Refresh';
  static const String noServiceProvidersFound = 'Retry';
  static const String noServiceProvidersFoundText = 'No pet service providers found for your search criteria.';
  static const String commonErrorMsg = 'Something went wrong, Try again later!';
  static const String internalServerErrorMsg = "Couldn't find";
  static const String badResponseErrorMsg = 'Bad response format';
  static const String unauthenticatedErrorMsg = 'Unauthenticated user';
  static const String noResultFoundErrorMsg = 'No result found';
  static const String requestConflictErrorMsg = 'Request no longer available, Try again later!';
  static const String thisFeatureComingSoonMsg = 'This feature is coming soon!';
  static const String noMoreOldMessagesAvailableChatBubbleMsg = 'No more old messages available';
  static const String hiChatBubbleMsg = 'hi';
  static const String welcomeChatBubbleMsg = 'welcome';
  static const String thisMessageWasDeletedChatBubbleMsg = 'This message was deleted';
  static const String toastMessageToSubsribePaidClub =
      'This is invite-only club. We have taken your request for subscription. We will invite you to join once next subscription slot opens.';

  /// empty state Strings
  static const String buttonTextYes = 'Yes';
  static const String buttonTextNo = 'No';
  static const String buttonTextOK = 'OK';
  static const String buttonTextCancel = 'Cancel';

  /// empty state Strings
  static const String appEmptyStateMsg = 'There is nothing here';

  /// method channel id which is used to create android notification channel with native kotlin code
  /// this string used in "app/src/main/kotlin/MainActivity"
  /// open this link for more info : [https://rechor.medium.com/creating-notification-channels-in-flutter-android-e81e26b33bec]
  static const String notificationMethodChannelId = 'example.com/method_channel_important_notification';

  static const String selectDefaultText = 'Select';

  /// Router : page not found
  static const String errorText = 'Error';

  ///-------- Service -----------
  static const String serviceTabBarItemTitlePrefix = 'Option';

  ///-------- Dashboard -----------
  static const String dashboardBeyoBoxSolution = 'BEYOBOX SOLUTION';
  static const String dashboardButtonTextHome = 'Home';
  static const String dashboardButtonTextService = 'Service';
  static const String dashboardButtonTextProjects = 'Projects';
  static const String dashboardButtonTextClients = 'Clients';
  static const String dashboardButtonTextBlog = 'Blog';

  ///-------- Profile -----------
  static const String preferredUserStaticText =
      'Hooray!! You are a preferred user as of now. So, you can have paid plan benefits without any subscriptions.';
}
