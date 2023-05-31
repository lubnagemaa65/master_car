

import 'package:master_car/core/class/crud.dart';

import '../../../views/linkapi.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String Firstname,String LastName, String password,String
  City,String Gender, String email, String phone, String DateOfBirth) async {
    var response = await crud.postData(AppLink.signUp, {
      "Firstname": Firstname,
      "LastName":LastName,
      "City":City,
      "Gender":Gender,
      "DateOfBirth":DateOfBirth,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
