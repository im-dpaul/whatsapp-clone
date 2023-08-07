import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';

class SendMessageWidget extends StatefulWidget {
  const SendMessageWidget({
    super.key,
  });
  @override
  State<SendMessageWidget> createState() => _SendMessageWidgetState();
}

class _SendMessageWidgetState extends State<SendMessageWidget> {
  ChatsListController chatsListController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.pureWhite,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    size: 24,
                    color: AppColors.neutral01.withOpacity(0.7),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width:
                          chatsListController.isMessageEmpty.value ? 150 : 228,
                      child: TextField(
                        onChanged: (value) {
                          chatsListController.setMessageEmpty();
                        },
                        controller: chatsListController.messageController,
                        cursorColor: AppColors.green02,
                        maxLines: 10,
                        decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: AppTextStyles.f14w500Neutral01,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attach_file_outlined,
                    size: 24,
                    color: AppColors.neutral01.withOpacity(0.7),
                  ),
                  Visibility(
                    visible: chatsListController.isMessageEmpty.value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.monetization_on_outlined,
                        size: 24,
                        color: AppColors.neutral01.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: chatsListController.isMessageEmpty.value,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 24,
                      color: AppColors.neutral01.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 6),
            CircleAvatar(
              backgroundColor: AppColors.green02,
              radius: 24,
              child: Icon(
                chatsListController.isMessageEmpty.value
                    ? Icons.mic_rounded
                    : Icons.send,
                color: AppColors.pureWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
