class User{
  String? fullName;
  String? email;
  String? password;

  User({this.fullName, this.email, this.password});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        fullName: json['fullName'],
      email: json['email'],
      password: json['password']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'fullName': fullName,
      'email': email,
      'password': password
    };
  }
}