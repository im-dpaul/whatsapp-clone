import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/features/chat/controller/chats_list_controller.dart';
import 'package:whatsapp_ui/features/home/widgets/single_chat_item.dart';

class ChatsListScreen extends StatefulWidget {
  const ChatsListScreen({super.key});
  @override
  State<ChatsListScreen> createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  ChatsListController chatsListController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 64),
            itemCount:
                chatsListController.chatListDataModel.chatItem?.length ?? 0,
            itemBuilder: (context, index) {
              return SingleChatWidget(
                chatMessage: chatsListController
                    .chatListDataModel.chatItem?[index].chatData?.lastMessage,
                chatTitle: chatsListController
                    .chatListDataModel.chatItem?[index].chatData?.senderName,
                lastMessageSender: chatsListController.chatListDataModel
                    .chatItem?[index].chatData?.lastMessageSender,
                lastMessageStatus: chatsListController.chatListDataModel
                    .chatItem?[index].chatData?.lastMessageStatus,
                dateTime: chatsListController.extractDateTime(
                    chatsListController.chatListDataModel.chatItem?[index]
                        .chatData?.lastMessageTime),
                unreadMessageCount: chatsListController.chatListDataModel
                    .chatItem?[index].chatData?.unreadMessageCount,
                imageUrl: chatsListController
                    .chatListDataModel.chatItem?[index].chatData?.senderAvatar,
                profileOnTap: () {},
                chatOnTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
