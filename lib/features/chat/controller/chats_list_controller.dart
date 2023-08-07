import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_ui/features/chat/model/chat_list_data_model.dart';
import 'package:whatsapp_ui/features/chat/model/message_data_model.dart';

class ChatsListController extends GetxController {
  RxString currentSenderId = ''.obs;
  extractDateTime(DateTime? dateTime) {
    if (dateTime != null) {
      dateTime = dateTime.toLocal();
      if (dateTime.isBefore(DateTime.now().subtract(const Duration(days: 2)))) {
        return DateFormat('dd/MM/yy').format(dateTime);
      } else if (dateTime
          .isBefore(DateTime.now().subtract(const Duration(days: 1)))) {
        return "Yesterday";
      } else {
        return DateFormat('hh:mm a').format(dateTime);
      }
    }
  }

  chatTime(DateTime? dateTime) {
    if (dateTime != null) {
      dateTime = dateTime.toLocal();
      return DateFormat('hh:mm a').format(dateTime);
    }
  }

  String chatDate(DateTime? dateTime) {
    if (dateTime != null) {
      dateTime = dateTime.toLocal();
      if (dateTime.isBefore(DateTime.now().subtract(const Duration(days: 7)))) {
        return DateFormat('dd MMMM yyyy').format(dateTime);
      } else {
        if (dateTime.day == DateTime.now().day) {
          return "Today";
        } else if (dateTime.day == DateTime.now().day - 1) {
          return "Yesterday";
        } else {
          final weekday = dateTime.weekday;
          String day = '';
          switch (weekday) {
            case 1:
              day = "Monday";
              break;
            case 2:
              day = "Tuesday";
              break;
            case 3:
              day = "Wednesday";
              break;
            case 4:
              day = "Thursday";
              break;
            case 5:
              day = "Friday";
              break;
            case 6:
              day = "Saturday";
              break;
            case 7:
              day = "Sunday";
              break;
            default:
              day = "Today";
          }
          return day;
        }
      }
    }
    return "";
  }

  ChatListDataModel chatListDataModel = ChatListDataModel(
    unreadChat: 12,
    chatItem: [
      ChatItem(
        chatId: 'chataa',
        chatData: ChatData(
          senderId: 'aaa',
          senderName: 'Deb',
          senderAvatar:
              'https://ichef.bbci.co.uk/news/976/cpsprodpb/3EE0/production/_121269061_getty.jpg',
          lastMessageSender: true,
          lastMessage: "Hi, how are you doing?",
          lastMessageTime: DateTime(2023, 8, 5, 5, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatab',
        chatData: ChatData(
          senderId: 'aab',
          senderName: 'Anik',
          senderAvatar:
              'https://images.news18.com/ibnlive/uploads/2022/09/collage-maker-08-sep-2022-09.38-pm-16626533104x3.jpg',
          lastMessageSender: false,
          lastMessageStatus: 'sent',
          lastMessage: "See ya",
          lastMessageTime: DateTime.tryParse('2023-08-05T12:34:56'),
        ),
      ),
      ChatItem(
        chatId: 'chatac',
        chatData: ChatData(
          senderId: 'aac',
          senderName: 'Ayan',
          senderAvatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9C1vD57zlUG8D6qSW_9uBh40wFIe-E4Fepw&usqp=CAU',
          lastMessageSender: false,
          lastMessageStatus: "read",
          lastMessage: "Good morning, buddy",
          lastMessageTime: DateTime(2023, 8, 5, 17, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatad',
        chatData: ChatData(
          senderId: 'aad',
          senderName: 'Arup',
          senderAvatar:
              'https://images2.minutemediacdn.com/image/fetch/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F947096288.jpeg',
          lastMessageSender: false,
          lastMessageStatus: 'received',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 4, 13, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatae',
        chatData: ChatData(
          senderId: 'aae',
          senderName: 'Sovan',
          senderAvatar:
              'https://logos-world.net/wp-content/uploads/2020/06/Real-Madrid-Logo.png',
          lastMessageSender: true,
          lastMessage: "Hi, how are you doing?",
          unreadMessageCount: 13,
          lastMessageTime: DateTime(2023, 8, 4, 10, 01),
        ),
      ),
      ChatItem(
        chatId: 'chataf',
        chatData: ChatData(
          senderId: 'aaf',
          senderName: 'Sam bro',
          senderAvatar: '',
          lastMessageSender: true,
          lastMessage: "Let's talk again about this",
          lastMessageTime: DateTime(2023, 8, 3, 18, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatag',
        chatData: ChatData(
          senderId: 'aag',
          senderName: 'Aditya',
          senderAvatar:
              'https://img.etimg.com/thumb/width-640,height-480,imgsize-10484,resizemode-75,msid-97270458/news/new-updates/republic-day-2023-heres-what-every-indian-should-know-about-the-tricolour/republic-day-2023-why-is-the-national-flag-unfurled-by-president-of-india-every-year-on-this-day-read-here.jpg',
          lastMessageSender: true,
          lastMessage: "Whatsup bro",
          unreadMessageCount: 12,
          lastMessageTime: DateTime(2023, 8, 3, 7, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatah',
        chatData: ChatData(
          senderId: 'aah',
          senderName: 'Tanmoy',
          senderAvatar: '',
          lastMessageSender: false,
          lastMessageStatus: 'read',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 2, 11, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatai',
        chatData: ChatData(
          senderId: 'aai',
          senderName: 'Arup',
          senderAvatar:
              'https://images2.minutemediacdn.com/image/fetch/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F947096288.jpeg',
          lastMessageSender: false,
          lastMessageStatus: 'received',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 4, 13, 10),
        ),
      ),
      ChatItem(
        chatId: 'chataj',
        chatData: ChatData(
          senderId: 'aaj',
          senderName: 'Sovan',
          senderAvatar:
              'https://logos-world.net/wp-content/uploads/2020/06/Real-Madrid-Logo.png',
          lastMessageSender: true,
          lastMessage: "Hi, how are you doing?",
          unreadMessageCount: 10,
          lastMessageTime: DateTime(2023, 8, 4, 10, 01),
        ),
      ),
      ChatItem(
        chatId: 'chatak',
        chatData: ChatData(
          senderId: 'aak',
          senderName: 'Sam bro',
          senderAvatar: '',
          lastMessageSender: true,
          lastMessage: "Let's talk again about this",
          lastMessageTime: DateTime(2023, 8, 3, 18, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatal',
        chatData: ChatData(
          senderId: 'aal',
          senderName: 'Aditya',
          senderAvatar:
              'https://img.etimg.com/thumb/width-640,height-480,imgsize-10484,resizemode-75,msid-97270458/news/new-updates/republic-day-2023-heres-what-every-indian-should-know-about-the-tricolour/republic-day-2023-why-is-the-national-flag-unfurled-by-president-of-india-every-year-on-this-day-read-here.jpg',
          lastMessageSender: true,
          lastMessage: "Whatsup bro",
          unreadMessageCount: 12,
          lastMessageTime: DateTime(2023, 8, 3, 7, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatam',
        chatData: ChatData(
          senderId: 'aam',
          senderName: 'Tanmoy',
          senderAvatar: '',
          lastMessageSender: false,
          lastMessageStatus: 'read',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 2, 11, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatak',
        chatData: ChatData(
          senderId: 'aak',
          senderName: 'Sam bro',
          senderAvatar: '',
          lastMessageSender: true,
          lastMessage: "Let's talk again about this",
          lastMessageTime: DateTime(2023, 8, 3, 18, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatal',
        chatData: ChatData(
          senderId: 'aal',
          senderName: 'Aditya',
          senderAvatar:
              'https://img.etimg.com/thumb/width-640,height-480,imgsize-10484,resizemode-75,msid-97270458/news/new-updates/republic-day-2023-heres-what-every-indian-should-know-about-the-tricolour/republic-day-2023-why-is-the-national-flag-unfurled-by-president-of-india-every-year-on-this-day-read-here.jpg',
          lastMessageSender: true,
          lastMessage: "Whatsup bro",
          unreadMessageCount: 18,
          lastMessageTime: DateTime(2023, 8, 3, 7, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatam',
        chatData: ChatData(
          senderId: 'aam',
          senderName: 'Tanmoy',
          senderAvatar: '',
          lastMessageSender: false,
          lastMessageStatus: 'read',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 2, 11, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatak',
        chatData: ChatData(
          senderId: 'aak',
          senderName: 'Sam bro',
          lastMessageSender: true,
          lastMessage: "Let's talk again about this",
          lastMessageTime: DateTime(2023, 8, 3, 18, 10),
        ),
      ),
      ChatItem(
        chatId: 'chatal',
        chatData: ChatData(
          senderId: 'aal',
          senderName: 'Aditya',
          senderAvatar:
              'https://img.etimg.com/thumb/width-640,height-480,imgsize-10484,resizemode-75,msid-97270458/news/new-updates/republic-day-2023-heres-what-every-indian-should-know-about-the-tricolour/republic-day-2023-why-is-the-national-flag-unfurled-by-president-of-india-every-year-on-this-day-read-here.jpg',
          lastMessageSender: true,
          lastMessage: "Whatsup bro",
          unreadMessageCount: 10,
          lastMessageTime: DateTime(2023, 8, 3, 7, 30),
        ),
      ),
      ChatItem(
        chatId: 'chatam',
        chatData: ChatData(
          senderId: 'aam',
          senderName: 'Tanmoy',
          lastMessageSender: false,
          lastMessageStatus: 'read',
          lastMessage: "See ya",
          lastMessageTime: DateTime(2023, 8, 2, 11, 10),
        ),
      ),
    ],
  );
  MessageDataModel messageDataModel = MessageDataModel(
    senderDetails: SenderDetails(
      id: 'aaa',
      avatar:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/3EE0/production/_121269061_getty.jpg',
      name: 'Deb',
    ),
    allMessage: [
      AllMessage(
        messageDate: DateTime(2023, 7, 4),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 7, 4, 7, 34),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            text: 'Hello',
            status: 'read',
            time: DateTime(2023, 7, 4, 7, 35),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 7, 4, 10, 23),
          ),
          MessageData(
            id: 'aaa4',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 7, 4, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 7, 5),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 7, 5, 7, 35),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: 'read',
            text: 'Hello',
            time: DateTime(2023, 7, 5, 7, 35),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 7, 5, 10, 23),
          ),
          MessageData(
            id: 'aaa5',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 7, 5, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 7, 6),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 7, 6, 7, 36),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: 'read',
            text: 'Hello',
            time: DateTime(2023, 7, 6, 7, 45),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 7, 6, 10, 23),
          ),
          MessageData(
            id: 'aaa6',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 7, 6, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 7, 7),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 7, 7, 7, 37),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "read",
            text: 'Hello',
            time: DateTime(2023, 7, 7, 8, 55),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 7, 7, 10, 23),
          ),
          MessageData(
            id: 'aaa7',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 7, 7, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 8, 2),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 8, 2, 8, 28),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "read",
            text: 'Hello',
            time: DateTime(2023, 8, 2, 8, 35),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 8, 2, 10, 23),
          ),
          MessageData(
            id: 'aaa8',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 8, 2, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 8, 5),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 8, 5, 8, 29),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "read",
            text: 'Hello',
            time: DateTime(2023, 8, 5, 8, 35),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 8, 5, 10, 23),
          ),
          MessageData(
            id: 'aaa9',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 8, 5, 10, 23),
          ),
        ],
      ),
      AllMessage(
        messageDate: DateTime(2023, 8, 6),
        messageData: [
          MessageData(
            id: 'aaa1',
            sender: true,
            text: 'Hii',
            time: DateTime(2023, 8, 6, 8, 39),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "read",
            text: 'Hello',
            time: DateTime(2023, 8, 6, 9, 5),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 8, 6, 9, 23),
          ),
          MessageData(
            id: 'aaa6',
            sender: true,
            text: 'What\'s going on?',
            time: DateTime(2023, 8, 6, 9, 23),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "read",
            text: 'Hello',
            time: DateTime(2023, 8, 6, 9, 35),
          ),
          MessageData(
            id: 'aaa3',
            sender: true,
            text: 'How are you?',
            time: DateTime(2023, 8, 6, 10, 23),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "received",
            text: 'Hello',
            time: DateTime(2023, 8, 6, 11, 35),
          ),
          MessageData(
            id: 'aaa2',
            sender: false,
            status: "sent",
            text: 'u there?',
            time: DateTime(2023, 8, 6, 12, 35),
          ),
        ],
      ),
    ],
  );
}
