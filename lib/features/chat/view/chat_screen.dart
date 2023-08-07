import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/constants/app_text_styles.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';
import 'package:whatsapp_ui/features/chat/widgets/chat_appbar.dart';
import 'package:whatsapp_ui/features/chat/widgets/single_message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatsListController chatsListController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral03.withOpacity(0.9),
      appBar: ChatAppBar(
        senderAvatar:
            chatsListController.messageDataModel.senderDetails?.avatar,
        senderName: chatsListController.messageDataModel.senderDetails?.name,
        onTap: () {
          Get.back();
          chatsListController.currentSenderId.value = '';
        },
      ),
      body: SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              // height: 700,
              child: ListView.builder(
                shrinkWrap: true,
                // reverse: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                physics: const BouncingScrollPhysics(),
                itemCount:
                    chatsListController.messageDataModel.allMessage?.length ??
                        0,
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
                          chatsListController.messageDataModel
                                  .allMessage?[index].messageData?.length ??
                              0,
                          (idx) => SingleMessageWidget(
                            messageData: chatsListController.messageDataModel
                                .allMessage?[index].messageData?[idx],
                            messageTime: chatsListController.chatTime(
                              chatsListController.messageDataModel
                                  .allMessage?[index].messageData?[idx].time,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
