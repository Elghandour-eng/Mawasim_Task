import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_images/app_images.dart';

class BottomImage extends StatelessWidget {
  final String? image;
  const BottomImage({
    Key? key,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
          height: .3.sh,
          width: .85.sw,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              image??AppImages.loginIllustration,
              fit: BoxFit.fill,),
          )),
    );
  }
}