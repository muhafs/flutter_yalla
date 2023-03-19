class UserModel {
  late int id;
  late String name;
  late String email;
  late String username;
  late String profilePhotoURL;
  String? token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.profilePhotoURL,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoURL = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoURL,
      'token': token,
    };
  }
}
