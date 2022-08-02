class SignupSigninModel {
  String? id;
  String? email;
  String? number;
  String? password;
  String? username;

  SignupSigninModel(
      {this.id, this.email, this.number, this.password, this.username});

  SignupSigninModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    number = json['number'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['number'] = this.number;
    data['password'] = this.password;
    data['username'] = this.username;
    return data;
  }
}
