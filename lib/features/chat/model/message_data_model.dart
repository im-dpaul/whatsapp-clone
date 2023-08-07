class MessageDataModel {
  final SenderDetails? senderDetails;
  final List<AllMessage>? allMessage;
  MessageDataModel({
    this.senderDetails,
    this.allMessage,
  });
}

class AllMessage {
  final DateTime? messageDate;
  final List<MessageData>? messageData;
  AllMessage({
    this.messageDate,
    this.messageData,
  });
}

class MessageData {
  final String? id;
  final String? status;
  final String? text;
  final bool? sender;
  final DateTime? time;
  MessageData({
    this.id,
    this.status,
    this.text,
    this.sender,
    this.time,
  });
}

class SenderDetails {
  final String? id;
  final String? name;
  final String? avatar;
  SenderDetails({
    this.id,
    this.name,
    this.avatar,
  });
}
