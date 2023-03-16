import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:beyobox/src/shared/utility/app_log.dart';
import 'package:beyobox/src/shared/utility/app_utility.dart';

class AppScaffoldWrapper extends StatefulWidget {
  const AppScaffoldWrapper({
    super.key,
    required this.child,
    this.topSafeArea = true,
    this.bottomSafeArea = false,
    this.scaffoldBackground,
    this.screenName = '',
    this.showAnimationOnChild = true,
    this.fadeAnimationDelay = const Duration(milliseconds: 400),
    this.onTapScreen,
    this.onLongPressScreen,
  });
  final Widget child;
  final bool topSafeArea;
  final bool bottomSafeArea;
  final Color? scaffoldBackground;
  final String? screenName;
  final bool showAnimationOnChild;
  final Duration fadeAnimationDelay;
  final VoidCallback? onTapScreen;
  final VoidCallback? onLongPressScreen;

  @override
  State<AppScaffoldWrapper> createState() => _AppScaffoldWrapperState();
}

class _AppScaffoldWrapperState extends State<AppScaffoldWrapper> {
  @override
  Widget build(BuildContext context) {
    /// --- returen widget ---
    /*
    if (appManager.isInternetConnected == false) {
      return NoInternetWidget(
        onTap: () {
          appManager.checkInternetConnection().then((value) {
            if (appManager.isInternetConnected == true) {
              setState(() {});
            }
          });
        },
      );
    }
    */

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      // onTap: () {
      //   AppLog.logMessage('Tap on screen');
      // },
      onTap: () {
        AppLog.logMessage('Tap on screen');
        AppUtility.hideGlobalKeyboard(context);
        widget.onTapScreen?.call();
      },
      onLongPress: () async {
        ///
        AppLog.logMessage('LongPress on screen');
        AppUtility.hideGlobalKeyboard(context);
        widget.onLongPressScreen?.call();

        /// sentary  open
        // BetterFeedback.of(context).show((UserFeedback feedback) {
        //   // Do something with the feedback
        //   // debugPrint('Feed Back vakues:--- ${feedback.extra},  ${feedback.screenshot}, ${feedback.text},');
        // });

        // BetterFeedback.of(context).showAndUploadToSentry(
        //   name: '${widget.screenName}',
        //   email: 'jayesh.lathiya@infiraise.com',
        // );

        // Mail Image Issue Send
        /*
        BetterFeedback.of(context).show((feedback) async {
          // draft an email and send to developer
          final screenshotFilePath =
              await writeImageToStorage(feedback.screenshot);

          final email = Email(
            body: feedback.text,
            subject: 'App Feedback',
            recipients: [
              'jayesh.lathiya+kamai@infiraise.com',
              // 'dharmesh.bhalala@infiraise.com',
            ],
            attachmentPaths: [screenshotFilePath],
            isHTML: false,
          );
          await FlutterEmailSender.send(email).onError(
            (error, stackTrace) => AppLog.logMessage(
              error.toString(),
            ),
          );
        });
        */

        await createGitlabIssueFromFeedback(context).onError(
          (error, stackTrace) => AppLog.logMessage(
            error.toString(),
          ),
        );
      },
      child: ColoredBox(
        color: widget.scaffoldBackground ?? Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          top: widget.topSafeArea,
          bottom: widget.bottomSafeArea,
          child: widget.showAnimationOnChild
              ? Animate(effects: const [FadeEffect()], child: widget.child).animate().fade(
                    delay: widget.fadeAnimationDelay,
                  )
              : widget.child,
        ),
      ),
    );
  }

  //------- OTHER ---------

/*
  Widget loadingProgressIndicator() {
    return ChangeNotifierProvider<AppManager>(
      create: (context) => appManager,
      child: Consumer<AppManager>(
        builder: (context, appManager, child) {
          return Opacity(
            opacity: appManager.isLoading ? 1.0 : 0.0,
            // visible: appManager.isLoading,
            // offstage: !appManager.isLoading,
            child: const LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.primary,
              ),
            ),
          );
        },
      ),
    );
  }
  */

  //------- OTHER ---------

  Future<void> createGitlabIssueFromFeedback(BuildContext context) async {
    return;
  }

/*
  Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
    final output = await getTemporaryDirectory();
    final screenshotFilePath = '${output.path}/feedback.png';
    final screenshotFile = File(screenshotFilePath);
    await screenshotFile.writeAsBytes(feedbackScreenshot);
    return screenshotFilePath;
  }

  Future<void> createGitlabIssueFromFeedback(BuildContext context) async {
    BetterFeedback.of(context).show((feedback) async {
      const projectId = AppConst.gitLabProjectId;
      const apiToken = AppConst.gitLabApiToken;

      final screenshotFilePath = await writeImageToStorage(feedback.screenshot);

      // Upload screenshot
      final uploadRequest = http.MultipartRequest(
        'POST',
        Uri.https(
          'gitlab.com',
          '/api/v4/projects/$projectId/uploads',
        ),
      )
        ..files.add(
          await http.MultipartFile.fromPath(
            'file',
            screenshotFilePath,
          ),
        )
        ..headers.putIfAbsent('PRIVATE-TOKEN', () => apiToken);
      final uploadResponse = await uploadRequest.send();

      final dynamic uploadResponseMap = jsonDecode(
        await uploadResponse.stream.bytesToString(),
      );

      // Create issue
      await http.post(
        Uri.https(
          'gitlab.com',
          '/api/v4/projects/$projectId/issues',
          <String, String>{
            'title': feedback.text.padRight(80),
            'description': '${feedback.text}\n'
                "${uploadResponseMap["markdown"] ?? "Missing image!"}",
          },
        ),
        headers: {
          'PRIVATE-TOKEN': apiToken,
        },
      );
    });
  }
*/
}
