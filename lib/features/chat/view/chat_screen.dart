import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';
import 'package:whatsapp_ui/features/chat/widgets/all_messages_widget.dart';
import 'package:whatsapp_ui/features/chat/widgets/chat_appbar.dart';
import 'package:whatsapp_ui/features/chat/widgets/send_message_widget.dart';

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
      body: Stack(
        children: [
          SingleChildScrollView(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            child: AllMessagesWidget(),
          ),
          const Positioned(
            bottom: 2,
            child: SendMessageWidget(),
          ),
        ],
      ),
    );
  }
}
