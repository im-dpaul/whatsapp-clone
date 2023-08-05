import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';

class ChatsTabBar extends StatelessWidget {
  const ChatsTabBar({
    super.key,
    this.unreadChat,
    required this.tabBarWidth,
  });
  final int? unreadChat;
  final double tabBarWidth;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        width: tabBarWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Chats"),
            if (unreadChat != null)
              if (unreadChat! > 0)
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.pureWhite,
                    child: Text(
                      "$unreadChat",
                      style: AppTextStyles.f10w700Green02,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
