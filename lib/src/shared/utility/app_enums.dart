import 'package:flutter/material.dart';
import 'app_colors.dart';

// enum ScreenState {
//   free,
//   busy,
// }

enum AppEnumDashboardTab { home, services, projects, clients, blogs, contactus }

enum AppEnumUserType {
  none,
  admin,
  parent,
  provider,
}

enum AppEnumDeviceType {
  android,
  ios,
}

enum AppEnumGenderType {
  male,
  female,
  other,
}

enum AppEnumApiCallingStatus {
  none,
  loading,
  success,
  error,
}

enum AppEnumSnackbarType {
  normal,
  success,
  error,
}

extension SnackbarTypeExtension on AppEnumSnackbarType {
  Color get getToastBackgroundColor {
    switch (this) {
      case AppEnumSnackbarType.normal:
        return AppColors.toastBackGround;
      case AppEnumSnackbarType.success:
        return AppColors.toastBackGroundGreen;
      case AppEnumSnackbarType.error:
        return AppColors.toastBackGroundRed;
    }
  }

  Color get getToastTextColor {
    switch (this) {
      case AppEnumSnackbarType.normal:
        return AppColors.textBlack;
      case AppEnumSnackbarType.success:
        return AppColors.textWhite;
      case AppEnumSnackbarType.error:
        return AppColors.textWhite;
    }
  }
}

enum AppEnumTheme {
  lightTheme,
  darkTheme,
}

enum AppEnumPostVoteType {
  upVote,
  downVote,
}

enum AppEnumReactionType {
  addReaction,
  removeReaction,
}

enum AppEnumPostType {
  imagePost,
  videoPost,
}

enum AppEnumEmojiType {
  like,
  laugh,
  good,
  celebrate,
  sad,
  pray,
}

enum AppEnumStrategyType {
  option,
  future,
}

enum AppEnumChatMsgType {
  noTextNoMediaNothing, // 0
  textMessage, // 1
  image, // 2
  marketCall, // 3
  video, // 4
  gif, // 5
  sticker, // 6
}

enum AppEnumBottomTabBar {
  home,
  message,
  orders,
  profile,
}

enum AppEnumFilterServicesPageType {
  petTypeBeforeLogin,
  categoriesBeforeLogin,
  petTapped,
  petTypeViewAll,
  categoriesTapped,
  categoriesViewAll,
  servicesViewAllBeforeLogin,
  searchAllService,
  // allPopularServicesBeforeLogin,
}

enum AppEnumPaginationState {
  loading,
  free,
  reachedLastPage,
  error,
}

enum AppOnlineStatus {
  online,
  offline,
  busy,
}

extension OnlineStatusExtension on AppOnlineStatus {
  String get string {
    return toString().split('.').last;
  }

  Color get color {
    switch (this) {
      case AppOnlineStatus.online:
        return AppColors.onlineStatusOnline;

      case AppOnlineStatus.offline:
        return AppColors.onlineStatusOffline;

      case AppOnlineStatus.busy:
        return AppColors.onlineStatusBusy;

      default:
        return AppColors.onlineStatusOffline;
    }
  }
}

enum AppEnumMessageType {
  text,
  headerText,
  textBlockUser,
  image,
  multipleImages,
  video,
  audio,
  file,
}

extension MessageTypeExtension on AppEnumMessageType {
  String get string {
    return toString().split('.').last;
  }
}

enum AppEnumMessageStatus {
  sent,
  delivered,
  read,
}

enum AppEnumMessageReaction {
  none,
  like,
  dislike,
}

extension MessageReactionExtension on AppEnumMessageReaction {
  // String get image {
  //   switch (this) {
  //     case MESSAGE_REACTION.like:
  //       return AppAssets.chatReactionLikeSVG;
  //     case MESSAGE_REACTION.dislike:
  //       return AppAssets.chatReactionDislikeSVG;
  //     default:
  //       return '';
  //   }
  // }
}

enum AppEnumPopupMenuButton {
  messagePageArchivedChat,
  messagePageBlockedContact,
  chatPageUnArchivedChat,
  chatPageBlockUser,
  chatPageSearchMessage,
  chatPageArchivedChat,
  chatPageBlock,
  chatBubbleWidgetEdit,
  chatBubbleWidgetDelete,
  myServiceTypeHorizontalItemWidgetEdit,
  myServiceTypeHorizontalItemWidgetRemove,
  petDetailMessanger,
  petDetailFacebook,
  petDetailTwitter,
  petDetailLinkedin,
  orderCancel,
  orderComplete,
  orderContact,
  orderClaimRefund,
  orderClaimPayment,
  orderEscalate,
  orderAccept,
  orderDecline,
}

extension PopupMenuTypeExtension on AppEnumPopupMenuButton {
  String get title {
    switch (this) {
      case AppEnumPopupMenuButton.messagePageArchivedChat:
        return 'Archived chat';
      case AppEnumPopupMenuButton.messagePageBlockedContact:
        return 'Blocked Contact';
      case AppEnumPopupMenuButton.chatPageSearchMessage:
        return 'Search Message';
      case AppEnumPopupMenuButton.chatPageArchivedChat:
        return 'Archived Chat';
      case AppEnumPopupMenuButton.chatPageBlock:
        return 'Block';
      case AppEnumPopupMenuButton.chatPageUnArchivedChat:
        return 'Unarchive chat';
      case AppEnumPopupMenuButton.chatBubbleWidgetEdit:
        return 'Edit';
      case AppEnumPopupMenuButton.chatBubbleWidgetDelete:
        return 'Delete';
      case AppEnumPopupMenuButton.myServiceTypeHorizontalItemWidgetEdit:
        return 'Edit';
      case AppEnumPopupMenuButton.myServiceTypeHorizontalItemWidgetRemove:
        return 'Remove';
      case AppEnumPopupMenuButton.petDetailMessanger:
        return 'Messanger';
      case AppEnumPopupMenuButton.petDetailFacebook:
        return 'Facebook';
      case AppEnumPopupMenuButton.petDetailTwitter:
        return 'Twitter';
      case AppEnumPopupMenuButton.petDetailLinkedin:
        return 'Linkedin';
      case AppEnumPopupMenuButton.orderCancel:
        return 'Cancel Order';
      case AppEnumPopupMenuButton.orderComplete:
        return 'Complete Order';
      case AppEnumPopupMenuButton.orderContact:
        return 'Contact';
      case AppEnumPopupMenuButton.orderClaimRefund:
        return 'Claim Refund';
      case AppEnumPopupMenuButton.orderClaimPayment:
        return 'Claim Payment';
      case AppEnumPopupMenuButton.orderEscalate:
        return 'Escalate This Order';
      case AppEnumPopupMenuButton.orderAccept:
        return 'Accept';
      case AppEnumPopupMenuButton.orderDecline:
        return 'Decline';
      default:
        return '';
    }
  }
}
