import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ImagePath.appLogo,
      height: 75,
      width: 75,
      fit:  BoxFit.contain,
    );
  }
}