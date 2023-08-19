import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class MyStatusWidget extends StatelessWidget {
  final bool? emptyStatus;
  final String? avatar;
  final void Function()? myStatusOnTap;

  const MyStatusWidget({
    super.key,
    this.avatar,
    this.emptyStatus,
    this.myStatusOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myStatusOnTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: AppColors.neutral02,
                  backgroundImage: AssetImage(ImagePath.avatar),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.green01,
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My status", style: AppTextStyles.f16w500PureBlack),
                const SizedBox(height: 4),
                Text("Tap to add status update",
                    style: AppTextStyles.f14w400PureBlack),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
