import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';
import 'package:whatsapp_ui/features/chat/widgets/single_message_widget.dart';

class AllMessagesWidget extends StatelessWidget {
  AllMessagesWidget({
    super.key,
  });
  final ChatsListController chatsListController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        padding:
            const EdgeInsets.only(top: 10, right: 12, left: 12, bottom: 64),
        physics: const BouncingScrollPhysics(),
        itemCount: chatsListController.messageDataModel.allMessage?.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: AppColors.neutral03,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  chatsListController.chatDate(chatsListController
                      .messageDataModel.allMessage?[index].messageDate),
                  style: AppTextStyles.f10w600Neutral01,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  chatsListController.messageDataModel.allMessage?[index]
                          .messageData?.length ??
                      0,
                  (idx) => SingleMessageWidget(
                    messageData: chatsListController
                        .messageDataModel.allMessage?[index].messageData?[idx],
                    messageTime: chatsListController.chatTime(
                      chatsListController.messageDataModel.allMessage?[index]
                          .messageData?[idx].time,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
