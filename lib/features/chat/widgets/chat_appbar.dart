import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
    super.key,
    this.onTap,
    this.senderAvatar,
    this.senderName,
  });
  final String? senderAvatar;
  final String? senderName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Icon(Icons.arrow_back_outlined),
            ),
            CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.neutral02,
              backgroundImage: (senderAvatar != null)
                  ? (senderAvatar!.isNotEmpty)
                      ? NetworkImage(senderAvatar ?? '')
                      : const AssetImage(ImagePath.avatar) as ImageProvider
                  : const AssetImage(ImagePath.avatar),
            ),
          ],
        ),
      ),
      leadingWidth: 72,
      title: Text(senderName ?? ''),
      elevation: 0,
      backgroundColor: AppColors.green02,
      actions: [
        /// Widget for the video call
        const Icon(Icons.videocam_rounded),
        const SizedBox(
          width: 20,
        ),

        /// Widget for the audio call
        const Icon(
          Icons.call,
          size: 20,
        ),

        /// Widget for the three-dot menu
        PopupMenuButton(
          elevation: 4,
          position: PopupMenuPosition.under,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('View contact')),
              const PopupMenuItem(child: Text('Media, links, and docs')),
              const PopupMenuItem(child: Text('Search')),
              const PopupMenuItem(child: Text('Mute notifications')),
              const PopupMenuItem(child: Text('Disappearing messages')),
              const PopupMenuItem(child: Text('Wallpaper')),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('More'),
                    Icon(
                      Icons.arrow_right,
                      color: AppColors.textBlack.withOpacity(0.65),
                    ),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
