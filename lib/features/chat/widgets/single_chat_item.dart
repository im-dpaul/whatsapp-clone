import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/core/constants/image_path.dart';

class SingleChatWidget extends StatelessWidget {
  final bool? lastMessageSender;
  final String? chatMessage;
  final String? chatTitle;
  final String? imageUrl;
  final int? unreadMessageCount;
  final String? lastMessageStatus;
  final String? dateTime;
  final void Function()? profileOnTap;
  final void Function()? chatOnTap;

  const SingleChatWidget({
    Key? key,
    this.lastMessageSender,
    this.lastMessageStatus,
    this.chatMessage,
    this.chatTitle,
    this.imageUrl,
    this.unreadMessageCount,
    this.dateTime,
    this.profileOnTap,
    this.chatOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: profileOnTap,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.neutral02,
              backgroundImage: (imageUrl != null)
                  ? (imageUrl!.isNotEmpty)
                      ? NetworkImage(imageUrl ?? '')
                      : const AssetImage(ImagePath.avatar) as ImageProvider
                  : const AssetImage(ImagePath.avatar),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: GestureDetector(
              onTap: chatOnTap,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(chatTitle ?? '',
                          style: AppTextStyles.f16w500PureBlack),
                      const Spacer(),
                      Text(
                        dateTime ?? '',
                        style: unreadMessageCount != null
                            ? unreadMessageCount! > 0
                                ? AppTextStyles.f10w600Green01
                                : AppTextStyles.f10w600Neutral01
                            : AppTextStyles.f10w600Neutral01,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      if (lastMessageSender == false)
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Icon(
                            lastMessageStatus == "sent"
                                ? Icons.done
                                : Icons.done_all,
                            size: 18,
                            color: lastMessageStatus == "read"
                                ? AppColors.blue01
                                : AppColors.neutral02,
                          ),
                        ),
                      Text(
                        chatMessage ?? '',
                        style: AppTextStyles.f14w400Neutral01
                            .copyWith(overflow: TextOverflow.ellipsis),
                      ),
                      const Spacer(),
                      if (unreadMessageCount != null)
                        if (unreadMessageCount! > 0)
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColors.green01,
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "$unreadMessageCount",
                                style: AppTextStyles.f12w400PureWhite,
                              ),
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
