class AppRegex {
  // NOTE: AppRegex._(); : It is to make the class non-instantiable.
  // you don't want AppRegex to ever be accidentally instantiated by constructor
  AppRegex._();

  static final spaceOrNewLineRegExp = RegExp(r'[ \s]+');
  static final breakLineRegExp = RegExp('<br ?/?>');
  static final emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  static final onlyAlphabetsRegExp = RegExp(r'^[A-Za-z]+$');
  static final onlyNumberRegExp = RegExp('[0-9]');
  static final numberRegExp = RegExp(r'^[0-9]+$');
  static final priceRegExp = RegExp('[0-9.]');
  static final phoneNumberRegExp = RegExp(r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$');

  static final fullNameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
  static final RegExp htmlTextRexExp = RegExp('<[^>]*>', multiLine: true);
  static final RegExp emojiRegExp =
      RegExp(r'[\p{Extended_Pictographic}\u{1F3FB}-\u{1F3FF}\u{1F9B0}-\u{1F9B3}]', unicode: true);

  // static final passwordRegExp = RegExp(
  //   r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>',
  // );

  // https://stackoverflow.com/a/48235996
  // static final passwordRegExp = RegExp(
  //   r'^[\w-_.]*$',
  // );

  // https://stackoverflow.com/a/18058217
  static final passwordRegExp = RegExp(
    r'^[!-~]*$',
  );
}

/*

https://stackoverflow.com/a/48235996

This is the pattern you are looking for

/^[\w-_.]*$/

What this means:

^ Start of string
[...] Match characters inside
\w Any word character so 0-9 a-z A-Z
-_. Match - and _ and .
* Zero or more of pattern or unlimited
$ End of string
If you want to limit the amount of characters:

/^[\w-_.]{0,5}$/
{0,5} Means 0-5 characters

*/
