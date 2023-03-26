class UserModel {
  int? code;
  Data? data;
UserModel({this.code, this.data});

UserModel.fromJson(Map<String, dynamic> json) {
code = json['code'];
data = json['data'] != null ? new Data.fromJson(json['data']) : null;
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['code'] = this.code;
  if (this.data != null) {
    data['data'] = this.data!.toJson();
  }
  return data;
}
}

class Data {
  int? credit;
  String? email;
  String? expiry;
  String? level;
  String? name;
  String? phone;
  bool? emailVerified;
  String? uid;

  Data(
      {this.credit,
        this.email,
        this.expiry,
        this.level,
        this.name,
        this.phone,
        this.emailVerified,
        this.uid});

  Data.fromJson(Map<String, dynamic> json) {
    credit = json['credit'];
    email = json['email'];
    expiry = json['expiry'];
    level = json['level'];
    name = json['name'];
    phone = json['phone'];
    emailVerified = json['emailVerified'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['credit'] = this.credit;
    data['email'] = this.email;
    data['expiry'] = this.expiry;
    data['level'] = this.level;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['emailVerified'] = this.emailVerified;
    data['uid'] = this.uid;
    return data;
  }
}