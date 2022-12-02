class UsersData {
  UsersData({
    required this.name,
    required this.email,
    required this.message,
  });

  final String? name;
  final String? email;
  final String? message;
}

List<UsersData> items = [
  UsersData(
    name: 'Nur Muhammad',
    email: 'nurmuhammad448@gmail.com',
    message: "Halo semuanya, saya ingin menghapus user ini. apa iyah?",
  ),
];