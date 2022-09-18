class ChatsModel {
  String? name;
  String? message;
  String? time;
  String? avatarUrl;
  bool? isRead;
  int? unreadCount;
  
  ChatsModel({this.name, this.message, this.time, this.avatarUrl, this.isRead, this.unreadCount});
}

List<ChatsModel> items = [
  ChatsModel(
    name: "Nur Muhammad",
    message: "Hello, how are you?",
    time: "15:30",
    avatarUrl: "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/08/10/3254472262.jpg",
    isRead: false,
    unreadCount: 3,
  ),
  ChatsModel(
    name: "Rizky",
    message: "I love you",
    time: "15:00",
    avatarUrl: "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/08/10/3254472262.jpg",
    isRead: false,
    unreadCount: 1,
  ),
  ChatsModel(
    name: "Ayang Samsu",
    message: "Sayang, mau kemana?",
    time: "14:30",
    avatarUrl: "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/08/10/3254472262.jpg",
    isRead: true,
    unreadCount: 0,
  ),
  ChatsModel(
    name: "Ayang Samsu",
    message: "Sayang, mau kemana?",
    time: "14:30",
    avatarUrl: "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/08/10/3254472262.jpg",
    isRead: true,
    unreadCount: 0,
  ),
];