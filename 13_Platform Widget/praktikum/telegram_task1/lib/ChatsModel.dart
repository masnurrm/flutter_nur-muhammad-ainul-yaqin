class ChatsModel {
  final String? name;
  final String? message;
  final String? time;
  final String? avatarUrl;
  final bool? isRead;
  final int? unreadCount;

  ChatsModel({this.name, this.message, this.time, this.avatarUrl, this.isRead, this.unreadCount});
}

final List<ChatsModel> items = [
  ChatsModel(name: 'Nur MUhammad', message: 'Hai', time: '12:30', avatarUrl: 'https://i.pravatar.cc/150?img=1', isRead: true, unreadCount: 0),
  ChatsModel(name: 'Pak Baskoro', message: 'Bagaimana?', time: '14:30', avatarUrl: 'https://i.pravatar.cc/150?img=2', isRead: false, unreadCount: 3),
];