class ChatListDataModel {
  final int? unreadChat;
  final List<ChatItem>? chatItem;
  ChatListDataModel({
    this.unreadChat,
    this.chatItem,
  });
}

class ChatItem {
  final String? chatId;
  final ChatData? chatData;
  ChatItem({
    this.chatId,
    this.chatData,
  });
}

class ChatData {
  final String? senderId;
  final String? senderName;
  final String? senderAvatar;
  final bool? lastMessageSender;
  final String? lastMessageStatus;
  final String? lastMessage;
  final int? unreadMessageCount;
  final DateTime? lastMessageTime;
  ChatData({
    this.senderId,
    this.senderName,
    this.senderAvatar,
    this.lastMessageSender,
    this.lastMessageStatus,
    this.lastMessage,
    this.unreadMessageCount,
    this.lastMessageTime,
  });
}
