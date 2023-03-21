class UserModel {
  final int id;
  final String name;
  final String email;
  final String username;
  final String profilePhotoURL;
  final String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.profilePhotoURL,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        username: json['username'],
        profilePhotoURL: json['profile_photo_url'],
        token: json['token'],
      );

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
