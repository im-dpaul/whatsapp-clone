import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class MetaLogoWithTextWidget extends StatelessWidget {
  const MetaLogoWithTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("from", style: AppTextStyles.f14w400Neutral01,),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagePath.metaLogo, height: 20, width: 20, color: AppColors.green01,),
            const SizedBox(width: 6,),
            Text("Meta", style: AppTextStyles.f20w600Green01,),
          ],
        ),
      ],
    );
  }
}