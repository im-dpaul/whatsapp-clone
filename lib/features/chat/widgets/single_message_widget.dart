import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/features/chat/model/message_data_model.dart';

class SingleMessageWidget extends StatelessWidget {
  const SingleMessageWidget({
    super.key,
    this.messageData,
    this.messageTime,
  });
  final MessageData? messageData;
  final String? messageTime;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: (messageData?.sender == true)
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
            color: (messageData?.sender == true)
                ? AppColors.pureWhite
                : AppColors.green03,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 8),
              child: Text(messageData?.text ?? ''),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 12),
              child: Text(
                messageTime ?? '',
                style: AppTextStyles.f10w400Neutral01,
              ),
            ),
            if (messageData?.sender != true)
              Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                  top: 8,
                ),
                child: Icon(
                  messageData?.status == "sent" ? Icons.done : Icons.done_all,
                  size: 18,
                  color: messageData?.status == "read"
                      ? AppColors.blue01
                      : AppColors.neutral01,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
