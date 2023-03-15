import 'package:flutter/material.dart';
import 'app_colors.dart';

// enum ScreenState {
//   free,
//   busy,
// }

enum USER_TYPE {
  none,
  admin,
  parent,
  provider,
}

enum DEVICE_TYPE {
  android,
  ios,
}

enum GenderType {
  male,
  female,
  other,
}

enum SubCategory {
  options,
  futures,
  positional,
  intradayCash,
  misc,
}

enum AttributesType {
  attributes,
  expReturn,
  marginReq,
  maxDrawDown,
  expNumTrades,
}

enum apiCallingStatus {
  none,
  loading,
  success,
  error,
}

enum SnackbarType {
  normal,
  success,
  error,
}

extension SnackbarTypeExtension on SnackbarType {
  Color get getToastBackgroundColor {
    switch (this) {
      case SnackbarType.normal:
        return AppColors.toastBackGround;
      case SnackbarType.success:
        return AppColors.toastBackGroundGreen;
      case SnackbarType.error:
        return AppColors.toastBackGroundRed;
    }
  }

  Color get getToastTextColor {
    switch (this) {
      case SnackbarType.normal:
        return AppColors.textBlack;
      case SnackbarType.success:
        return AppColors.textWhite;
      case SnackbarType.error:
        return AppColors.textWhite;
    }
  }
}

enum AppTheme {
  lightTheme,
  darkTheme,
}

enum PostVoteType {
  upVote,
  downVote,
}

enum ReactionType {
  addReaction,
  removeReaction,
}

enum PostType {
  imagePost,
  videoPost,
}

enum EmojiType {
  like,
  laugh,
  good,
  celebrate,
  sad,
  pray,
}

enum StreategyType {
  option,
  future,
}

enum ChatMsgType {
  noTextNoMediaNothing, // 0
  textMessage, // 1
  image, // 2
  marketCall, // 3
  video, // 4
  gif, // 5
  sticker, // 6
}

enum BottomTabBar {
  home,
  message,
  orders,
  profile,
}

enum FilterServicesPageType {
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

// extension ToStringFilterServicesPageType on FilterServicesPageType {
//   String get string {
//     return toString().split('.').last;
//   }
// }

// enum order status
enum ORDER_TAB_STATUS {
  active,
  completed,
  cancelled,
}

// enum order status
enum BILLING_TAB_STATUS {
  accountDetails,
  namageCards,
}

enum ORDER_STATUS_LOG_MASTER_ID {
  blankObjcToAdjustIDwithIndex,
  pending, // ID = 1
  completed, // ID = 2
  orderCanceleByProvider,
  orderCanceleByParent,
  orderCanceleByBoth,
  orderCancellationDeclinedByParent,
  orderCancellationDeclinedByProvider,
  escalated,
  orderCompletedByProvider,
  orderCompletionDeclinedByParent,
}

// extension ToStringOrderStatus on OrderStatus {
//   String get string {
//     return toString().split('.').last;
//   }
// }

enum PAGINATION_STATE {
  loading,
  free,
  reachedLastPage,
  error,
}

enum ONLINE_STATUS {
  online,
  offline,
  busy,
}

extension OnlineStatusExtension on ONLINE_STATUS {
  String get string {
    return toString().split('.').last;
  }

  Color get color {
    switch (this) {
      case ONLINE_STATUS.online:
        return AppColors.onlineStatusOnline;

      case ONLINE_STATUS.offline:
        return AppColors.onlineStatusOffline;

      case ONLINE_STATUS.busy:
        return AppColors.onlineStatusBusy;

      default:
        return AppColors.onlineStatusOffline;
    }
  }
}

enum MESSAGE_TYPE {
  text,
  headerText,
  textBlockUser,
  image,
  multipleImages,
  video,
  audio,
  file,
}

extension MessageTypeExtension on MESSAGE_TYPE {
  String get string {
    return toString().split('.').last;
  }
}

enum MESSAGE_STATUS {
  sent,
  delivered,
  read,
}

enum MESSAGE_REACTION {
  none,
  like,
  dislike,
}

extension MessageReactionExtension on MESSAGE_REACTION {
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

enum POPUP_MENU_BUTTON {
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

extension PopupMenuTypeExtension on POPUP_MENU_BUTTON {
  String get title {
    switch (this) {
      case POPUP_MENU_BUTTON.messagePageArchivedChat:
        return 'Archived chat';
      case POPUP_MENU_BUTTON.messagePageBlockedContact:
        return 'Blocked Contact';
      case POPUP_MENU_BUTTON.chatPageSearchMessage:
        return 'Search Message';
      case POPUP_MENU_BUTTON.chatPageArchivedChat:
        return 'Archived Chat';
      case POPUP_MENU_BUTTON.chatPageBlock:
        return 'Block';
      case POPUP_MENU_BUTTON.chatPageUnArchivedChat:
        return 'Unarchive chat';
      case POPUP_MENU_BUTTON.chatBubbleWidgetEdit:
        return 'Edit';
      case POPUP_MENU_BUTTON.chatBubbleWidgetDelete:
        return 'Delete';
      case POPUP_MENU_BUTTON.myServiceTypeHorizontalItemWidgetEdit:
        return 'Edit';
      case POPUP_MENU_BUTTON.myServiceTypeHorizontalItemWidgetRemove:
        return 'Remove';
      case POPUP_MENU_BUTTON.petDetailMessanger:
        return 'Messanger';
      case POPUP_MENU_BUTTON.petDetailFacebook:
        return 'Facebook';
      case POPUP_MENU_BUTTON.petDetailTwitter:
        return 'Twitter';
      case POPUP_MENU_BUTTON.petDetailLinkedin:
        return 'Linkedin';
      case POPUP_MENU_BUTTON.orderCancel:
        return 'Cancel Order';
      case POPUP_MENU_BUTTON.orderComplete:
        return 'Complete Order';
      case POPUP_MENU_BUTTON.orderContact:
        return 'Contact';
      case POPUP_MENU_BUTTON.orderClaimRefund:
        return 'Claim Refund';
      case POPUP_MENU_BUTTON.orderClaimPayment:
        return 'Claim Payment';
      case POPUP_MENU_BUTTON.orderEscalate:
        return 'Escalate This Order';
      case POPUP_MENU_BUTTON.orderAccept:
        return 'Accept';
      case POPUP_MENU_BUTTON.orderDecline:
        return 'Decline';
      default:
        return '';
    }
  }
}

/// Dashboard
enum DASHBOARD_RESPONSE_DATA_TYPE {
  noData,
  nifty,
  banknifty,
  jackpot,
  multibaggerStocks,
}

// Influencer Profile
enum INFLUENCER_PROFILE_TABS {
  club,
  streategy,
  aboutMe,
}

extension InfluencerProfileTabExtension on INFLUENCER_PROFILE_TABS {
  INFLUENCER_PROFILE_TABS getEnumFromIndex(int index) {
    var tempEnumValue = INFLUENCER_PROFILE_TABS.club;

    ///
    switch (index) {
      case 0:
        tempEnumValue = INFLUENCER_PROFILE_TABS.club;
        break;
      case 1:
        tempEnumValue = INFLUENCER_PROFILE_TABS.streategy;
        break;
      case 2:
        tempEnumValue = INFLUENCER_PROFILE_TABS.aboutMe;
        break;
      default:
    }

    ///
    return tempEnumValue;
  }
}
