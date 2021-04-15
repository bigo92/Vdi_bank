import 'package:vdi_bank/data/model/base_model.dart';

class ExampleModel extends BaseModel {
  String email;
  String gender;
  String phone;
  String avatar;

  ExampleModel({this.email, this.gender, this.phone, this.avatar});

  factory ExampleModel.fromMap(Map<String, dynamic> map) {
    return new ExampleModel(
      email: map['email'] as String,
      gender: map['gender'] as String,
      phone: map['phone'] as String,
      avatar: map['picture']['medium'] as String,
    );
  }
}