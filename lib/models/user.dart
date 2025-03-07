class User {
  String? userId;
  String? userFullname;
  String? userName;
  String? userPassword;
  String? userImage;
  String? userEmail;

  User({
    this.userId,
    this.userFullname,
    this.userName,
    this.userPassword,
    this.userImage,
    this.userEmail,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      userFullname: json['userFullname'],
      userName: json['userName'],
      userPassword: json['userPassword'],
      userImage: json['userImage'],
      userEmail: json['userEmail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userFullname': userFullname,
      'userName': userName,
      'userPassword': userPassword,
      'userImage': userImage,
      'userEmail': userEmail,
    };
  }
}
