class User {
  String userId;
  String userFullname;
  String userName;
  String userPassword;
  String userImage;
  String userEmail;
  String userCreateDate;
  String userUpdateDate;

  User({
    required this.userId,
    required this.userFullname,
    required this.userName,
    required this.userPassword,
    required this.userImage,
    required this.userEmail,
    required this.userCreateDate,
    required this.userUpdateDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      userFullname: json['userFullname'],
      userName: json['userName'],
      userPassword: json['userPassword'],
      userImage: json['userImage'],
      userEmail: json['userEmail'],
      userCreateDate: json['userCreateDate'],
      userUpdateDate: json['userUpdateDate'],
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
      'userCreateDate': userCreateDate,
      'userUpdateDate': userUpdateDate,
    };
  }
}
