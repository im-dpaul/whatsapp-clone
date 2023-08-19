import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class SingleStatusWidget extends StatelessWidget {
  final String? name;
  final String? time;
  final String? avatar;
  final int? statusCount;
  final void Function()? statusOnTap;

  const SingleStatusWidget({
    super.key,
    this.name,
    this.time,
    this.avatar,
    this.statusCount,
    this.statusOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: statusOnTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.neutral02,
              backgroundImage: (avatar != null)
                  ? (avatar!.isNotEmpty)
                      ? NetworkImage(avatar ?? '')
                      : const AssetImage(ImagePath.avatar) as ImageProvider
                  : const AssetImage(ImagePath.avatar),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name ?? "", style: AppTextStyles.f16w500PureBlack),
                const SizedBox(height: 4),
                Text(time ?? "", style: AppTextStyles.f14w400PureBlack),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
