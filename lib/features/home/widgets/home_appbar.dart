import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          "WhatsApp",
          style: AppTextStyles.f18w400PureWhite,
        ),
      ),
      backgroundColor: AppColors.green02,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.green02,
        statusBarIconBrightness: Brightness.light,

        /// For Android (dark icons)
      ),
      actions: [
        /// Widget for the camera
        const Icon(Icons.camera_alt_outlined),
        const SizedBox(
          width: 20,
        ),

        /// Widget for the search
        const Icon(Icons.search),

        /// Widget for the three-dot menu
        PopupMenuButton(
          elevation: 4,
          position: PopupMenuPosition.under,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('New Group')),
              const PopupMenuItem(child: Text('New Broadcast')),
              const PopupMenuItem(child: Text('Linked Devices')),
              const PopupMenuItem(child: Text('Starred Messages')),
              const PopupMenuItem(child: Text('Payments')),
              const PopupMenuItem(child: Text('Settings')),
            ];
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
