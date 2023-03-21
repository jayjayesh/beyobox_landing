import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

/// Custom image widget to handel loading or placeholder from here
class AppImageWidget extends StatelessWidget {
  const AppImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.scale = 1.0,
    this.fit = BoxFit.cover,
    this.color,
    this.isRounded = false,
    this.showRoundedBorder = true,
    this.roundedBorderWidth = 1,
    this.roundedBorderColor,
    this.isReapeatLottieAnimation = false,
    this.controllerr,
    this.isShowShimmerLoader = true,
    this.isWebByteImage = false,
    this.webImage,
    this.useImageDotNetwork = kIsWeb,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final double? scale;
  final BoxFit fit;
  final Color? color;
  final bool isRounded;
  final bool showRoundedBorder;
  final double? roundedBorderWidth;
  final Color? roundedBorderColor;
  final bool isReapeatLottieAnimation;
  final AnimationController? controllerr;
  final bool? isShowShimmerLoader;
  final bool? isWebByteImage;
  final bool useImageDotNetwork;

  // NOTE : WebImagePicker :  https://www.youtube.com/watch?v=VMmQ0Gx7LAA
  final Uint8List? webImage;

  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: isRounded ? Clip.hardEdge : Clip.none,
      decoration: isRounded
          ? BoxDecoration(
              border: showRoundedBorder
                  ? Border.all(
                      width: roundedBorderWidth ?? 1.0,
                      color: roundedBorderColor ?? Theme.of(context).dividerColor, // AppColors.buttonGoogle, //,
                    )
                  : null,
              borderRadius: const BorderRadius.all(
                Radius.circular(1000),
              ),
            )
          : null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isRounded ? 1000 : 1),
        child: LayoutBuilder(
          builder: getImageWidgetAccordingToType,
        ),
      ),
    );
  }

  Widget getImageWidgetAccordingToType(BuildContext context, BoxConstraints layoutBuilderConstraints) {
    ///
    const cacheMultipleX = 3;
    var cacheHeight = height != null ? (cacheMultipleX * height.orDefault.toInt()) : null;
    //var _cacheHeight = height != null ? (height.orDefault.toInt()) : null;
    if (cacheHeight == null && layoutBuilderConstraints.minHeight != 0) {
      cacheHeight = cacheMultipleX * layoutBuilderConstraints.minHeight.orDefault.toInt();
    }

    ///
    if (imageUrl.isEmpty) {
      return Image.asset(
        Assets.images.placeholderImage.path,
        // AppAssets.placeholderImage,
        fit: fit,
        width: width,
        height: height,
        cacheHeight: cacheHeight,
      );
    } else if (imageUrl.contains('assets')) {
      // check svg or not
      if (imageUrl.contains('.svg')) {
        return SvgPicture.asset(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );
      } else if (imageUrl.endsWith('json')) {
        return Transform.scale(
          scale: scale,
          child: Lottie.asset(
            imageUrl,
            fit: BoxFit.cover,
            repeat: isReapeatLottieAnimation,
            height: isRounded ? width : height,
            width: width,
          ),
        );
      } else {
        return Transform.scale(
          scale: scale,
          child: Image.asset(
            imageUrl,
            fit: fit,
            width: width,
            height: isRounded ? width : height,
            cacheHeight: cacheHeight,
            color: color,
          ),
        );
      }
    } else if (imageUrl.startsWith('http') || imageUrl.startsWith('www')) {
      //TODO: CachedNetworkImage (cached_network_image: 3.2.1) having image loading issue (Catch SQLite db related issue)
      // track issue here : https://github.com/Baseflow/flutter_cached_network_image/issues/782
      // hence replaced it

      /*return FadeInImage.assetNetwork(
        image: imageUrl,
        placeholder: AppAssets.placeholderImage, //AppAssets.transparentImage,
        width: width,
        height: isRounded ? width : height,
        cacheHeight: _cacheHeight,
        fit: fit,
      );*/

/*
      return imageUrl.contains('.svg')
          ? SvgPicture.network(
              imageUrl,
              height: isRounded ? width : height,
              width: width,
              fit: fit,
              placeholderBuilder: (BuildContext context) => SizedBox(
                width: width,
                height: isRounded ? width : height,
                child: isShowShimmerLoader!
                    ?  AppShimmerLoader(
                          height: isRounded ? width : height,
                          width: width,
                          shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                        )
                     
                    : const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: CircularProgressIndicator(),
                        ),
                      ),
              ),
            )
          : Image.network(
              imageUrl,
              width: width,
              height: isRounded ? width : height,
              cacheHeight: _cacheHeight,
              fit: fit,
              loadingBuilder: (
                BuildContext context,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  height: isRounded ? width : height,
                  width: width,
                  child: isShowShimmerLoader!
                      ?  AppShimmerLoader(
                            height: isRounded ? width : height,
                            width: width,
                            shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                          )
                        
                      : Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                );
              },
            );

*/

      return imageUrl.contains('.svg')
          ? SvgPicture.network(
              imageUrl,
              height: isRounded ? width : height,
              width: width,
              fit: fit,
              placeholderBuilder: (BuildContext context) => SizedBox(
                height: isRounded ? width : height,
                width: width,
                child: isShowShimmerLoader!
                    ? SizedBox(
                        height: isRounded ? width : height,
                        width: width,
                        //shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                      ).applyShimmer()
                    : const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: CircularProgressIndicator(),
                        ),
                      ),
              ),
            )
          : useImageDotNetwork
              ? Image.network(
                  imageUrl,
                  width: width,
                  height: isRounded ? width : height,
                  fit: fit,
                  cacheHeight: cacheHeight,
                  loadingBuilder: (
                    BuildContext context,
                    Widget child,
                    ImageChunkEvent? loadingProgress,
                  ) {
                    if (loadingProgress == null) return child;
                    return SizedBox(
                      height: isRounded ? width : height,
                      width: width,
                      child: isShowShimmerLoader!
                          ? SizedBox(
                              height: isRounded ? width : height,
                              width: width,
                              //shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                            ).applyShimmer()
                          : Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              ),
                            ),
                    );
                  },
                )
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  placeholder: (context, url) => SizedBox(
                    height: isRounded ? width : height,
                    width: width,
                    child: isShowShimmerLoader!
                        ? SizedBox(
                            height: isRounded ? width : height,
                            width: width,
                            //shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                          ).applyShimmer()
                        : const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: CircularProgressIndicator(
                                  // value: loadingProgress.expectedTotalBytes != null
                                  //     ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                  //     : null,
                                  ),
                            ),
                          ),
                  ),
                  // placeholder: (context, url) => Center(
                  //   child: isShowShimmerLoader!
                  //       ? AppShimmerLoader(
                  //           height: isRounded ? width : height,
                  //           width: width,
                  //           shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
                  //         )
                  //       : const Center(
                  //   child: Padding(
                  //     padding: EdgeInsets.all(8),
                  //     child: CircularProgressIndicator(),
                  //   ),
                  // ),
                  // ),
                  // placeholder: (context, url) => FittedBox(
                  //   child: Column(
                  //     // mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Spacer(),
                  //       LinearProgressIndicator(
                  //         valueColor: AlwaysStoppedAnimation<Color>(
                  //           AppColors.textGray,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // TODO: Handle error
                  // errorWidget: (context, url, error) => Image.asset(
                  //   AppAssets.placeholderImage,
                  //   fit: fit,
                  // ),
                  // errorWidget: (context, url, error) => const Icon(Icons.error),
                  errorWidget: (context, url, dynamic error) => Image.asset(
                    Assets.images.placeholderImage.path,
                    fit: fit,
                    width: width,
                    height: height,
                    cacheHeight: cacheHeight,
                  ),
                  height: isRounded ? width : height,
                  width: width,
                  fit: fit,
                  memCacheHeight: cacheHeight,
                );
    } else {
      /// NOTE : if select image from ( flutter-web + file_picker : webImage uint8List)
      late Uint8List? uint8List;
      if (webImage != null) {
        // final file = File(imageUrl);
        // uint8List = file.readAsBytesSync();
        return Image.memory(
          webImage!,
          width: width,
          height: isRounded ? width : height,
          cacheHeight: cacheHeight,
          fit: fit,
        );

        ///
        /// NOTE : if select image from ( flutter-web + + image_picker : image_url)
      } else if (useImageDotNetwork) {
        return Image.network(
          imageUrl,
          cacheHeight: cacheHeight,
        );

        ///
      } else {
        return Image.file(
          File(imageUrl),
          height: isRounded ? width : height,
          width: width,
          cacheHeight: cacheHeight,
          fit: fit,
          errorBuilder: (context, url, error) => Image.asset(
            Assets.images.placeholderImage.path,
            width: width,
            height: isRounded ? width : height,
            cacheHeight: cacheHeight,
            fit: fit,
          ),
        );
      }
    }
  }
}
