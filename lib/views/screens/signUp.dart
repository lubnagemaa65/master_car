import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:master_car/core/functions/alertExit.dart';
import 'package:master_car/views/widgets/Auth/customTextFormField.dart';

import '../../controller/signUpController.dart';
import '../../core/class/handelingDataVieww.dart';
import '../../core/constant/color.dart';
import '../widgets/Auth/customTextTitle.dart';
import 'Auth/customButtonAuth.dart';
import 'Auth/customTextBodyAuth.dart';
import 'Auth/customTextSignUp.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.primaryColor,
          elevation: 0.0,
          title: Text('Sign Up',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: ColorApp.grey)),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<SignUpControllerImp>(
                builder: (controller) => HandelingDataRequest(
                    statusRequest: controller.statusRequest,
                    widget: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: ListView(children: [
                        const SizedBox(height: 20),
                        const CustomTextTitle(text: "Welcome Back"),
                        const SizedBox(height: 10),
                        const CustomTextBodyAuth(
                          text:
                              "Sign Up With Your Email And Password OR Continue With Social Media",
                        ),
                        const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.FirstName,
                          hintText: "Enter Your Firstname",
                          iconData: Icons.person_outline,
                          labelText: "Firstname", isNumber: false,
// mycontroller: ,
                        ),
                         const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.LastName,
                          hintText: "Enter Your Lastname",
                          iconData: Icons.person_outline,
                          labelText: "Lastname", isNumber: false,
// mycontroller: ,
                        ),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.email,
                          hintText: "Enter Your Email",
                          iconData: Icons.email_outlined,
                          labelText: "Email", isNumber: false,
// mycontroller: ,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CountryCodePicker(
                           initialSelection:"IN",
                           showCountryOnly: false,
                           showOnlyCountryWhenClosed: false,
                           favorite: ['+91','IN'],
                           alignLeft: true,
                           padding: EdgeInsets.all(16.0),
// mycontroller: ,
                          ),
                        ),
                         const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.City,
                          hintText: "City:",
                          iconData: Icons.person_outline,
                          labelText: "City", isNumber: false,
// mycontroller: ,
                        ),
                         const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.Gender,
                          hintText: "Gender:",
                          iconData: Icons.person_outline,
                          labelText: "Gender", isNumber: false,
// mycontroller: ,
                        ),
                         const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.DateOfBirth,
                          hintText: "Date Of Birth:",
                          iconData: Icons.person_outline,
                          labelText: "Date of Birth", isNumber: false,
// mycontroller: ,
                        ),
                        CustomTextFormField(
                          valid: (val) {},
                          myController: controller.password,
                          hintText: "Enter Your Password",
                          iconData: Icons.lock_outline,
                          labelText: "Password", isNumber: false,
// mycontroller: ,
                        ),
                        CustomButtonAuth(
                            text: "Sign Up",
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(height: 40),
                        CustomTextSignUp(
                          textOne: " have an account ? ",
                          textTow: " SignIn ",
                          onTap: () {
                            controller.goToSignIn();
                          },
                        ),
                      ]),
                    )))));
  }
}
