import 'dart:developer' as devtools show log;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_regex.dart';

extension Log<T extends Object> on T {
  void logThis() {
    devtools.log(toString());
  }
}

extension OrDefault<T> on T? {
  T get orDefault {
    final value = this;
    if (value == null) {
      return {
        int: 0,
        double: 0.0,
        num: 0.0,
        String: '',
        Map: {},
      }[T] as T;
    } else {
      return value;
    }
  }
}

// Ref : https://stackoverflow.com/a/63277386
extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    final list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}

extension ToStringOrderStatus on Enum {
  String get string {
    return toString().split('.').last;
  }
}

extension ContextExtention on BuildContext {
  // (FocusScope.of(this).focusedChild?.context?.widget is! EditableText);
  // (FocusScope.of(this).focusedChild?.context?.widget is! EditableText);

  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context == null);
  }

  // void nextEditableTextFocus() {
  //   do {
  //     final foundFocusNode = FocusScope.of(this).nextFocus();
  //     if (!foundFocusNode) return;
  //   } while (
  //       FocusScope.of(this).focusedChild?.context?.widget is! EditableText);
  // }
}

extension NumExtensions on num {
  bool get isInt => (this % 1) == 0;
}

extension IntExtention on int {
  Widget verticalSpace() {
    if (this == 0) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: this * 1.0,
    );
  }

  Widget horizontalSpace() {
    if (this == 0) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: this * 1.0,
    );
  }

  // how much digit you want as int
  // to turn (1) into (01)
  // int toPrecision(int n) => '$this'.padLeft(n, '0').toInt();
}

/// Define an extension:
extension DoubleExtention on double {
  // how much digit you want after decimal point
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension StringExtention on String {
  ///
  ///
  String lastChars(int n) => substring(length - n);

  ///
  int toInt() {
    return int.tryParse(this) ?? 0;
  }

  ///
  double toDouble() {
    return double.tryParse(this) ?? 0.0;
  }

  ///
  num toNumber() {
    return num.tryParse(this) ?? 0.0;
  }

  // Color get colorFromAPI {
  //   String result = "0xFF" + this;
  //   return Color(int.parse(result));
  // }
  // DateTime get eventDateFromResponse {
  //   return DateFormat('yyyy-MM-dd HH:mm').parse(this);
  // }

  // bool get isNull {
  //   if (this == null) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // String get toCurrency {
  //   return '\$ $this';
  // }

  // String capitalize() {
  //   if (isEmpty) {
  //     return this;
  //   }
  //   return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  // }

// final helloWorld = 'hello world'.toCapitalized(); // 'Hello world'
// final helloWorld = 'hello world'.toUpperCase(); // 'HELLO WORLD'
// final helloWorldCap = 'hello world'.toTitleCase(); // 'Hello World'

  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
  //String toAllCapitalized() => length > 0 ? '${this.toUpperCase()}' : '';
  bool get isTestingEmail {
    if (trim().isNotEmpty) {
      return endsWith('.test@infiraise.com');
    } else {
      return false;
    }
  }

  Color get fromHex {
    final mainCode = substring(1, 7);
    final data = '0xff$mainCode';
    return Color(
      int.parse(
        data.toString(),
      ),
    );
  }

  String replaceEmojisWithHtmlSpanEmoji() {
    var newText = this;
    final emojis = AppRegex.emojiRegExp.allMatches(newText).map((z) => z.group(0)).toList();

    for (final emoji in emojis) {
      if (emoji != null) {
        newText = newText.replaceAll(emoji, "<span class='emoji'>$emoji</span>");
      }
    }

    return newText;
  }

  bool get isEmail {
    return AppRegex.emailRegExp.hasMatch(this);
  }

  bool get isOnlyAlphabets {
    return AppRegex.onlyAlphabetsRegExp.hasMatch(this);
  }

  bool get isNumber {
    return AppRegex.numberRegExp.hasMatch(this);
  }

  // bool get isNumber {
  //   return int.tryParse(result) != null;
  // }

  bool get isPhoneNumber {
    return AppRegex.phoneNumberRegExp.hasMatch(this);
  }

  bool get isHtmlText {
    return AppRegex.htmlTextRexExp.hasMatch(this);
  }

  String get getHtmlTextToPlainText {
    return replaceAll(AppRegex.htmlTextRexExp, ' ');
  }

  bool get isStartWithHTTP {
    return startsWith('http://') || startsWith('https://');
  }

  bool get isURL {
    return startsWith('http') || startsWith('www');
  }

  bool get isValidName {
    return AppRegex.fullNameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    return AppRegex.passwordRegExp.hasMatch(this);
  }

  String truncateWithEllipsis(int cutoff) {
    return (length <= cutoff) ? this : '${substring(0, cutoff)}...';
  }
}

extension ColorExtention on Color {
  /// String is in the format "#1fcf62ff	" or "#cf3f1fff" with an optional leading "#".

  // /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  // String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
  //     '${alpha.toRadixString(16).padLeft(2, '0')}'
  //     '${red.toRadixString(16).padLeft(2, '0')}'
  //     '${green.toRadixString(16).padLeft(2, '0')}'
  //     '${blue.toRadixString(16).padLeft(2, '0')}';
}

extension DateExtention on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameEventDate(DateTime other) {
    return year == other.year &&
        month == other.month &&
        day == other.day &&
        hour == other.hour &&
        minute == other.minute;
  }

  bool isSameMonth(DateTime other) {
    return month == other.month && year == other.year;
  }

  bool get isFromCurrentMonth {
    return month == DateTime.now().month;
  }
}
