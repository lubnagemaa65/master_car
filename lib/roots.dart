

import 'package:get/get.dart';
import 'package:master_car/views/screens/Auth/home.dart';
import 'package:master_car/views/screens/Auth/successSignUp.dart';
import 'package:master_car/views/screens/homescreen.dart';
import 'package:master_car/views/screens/login.dart';
import 'package:master_car/views/screens/signUp.dart';

import 'core/constant/roots.dart';
import 'views/screens/Auth/verifyCodeSignUp.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language() , middlewares: [
  //   MyMiddleWare()
  // ]),
 
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  //GetPage(name: AppRoute.forgetpassword, page: () =>  ForgetPassword()),
 // GetPage(name: AppRoute.verifycode, page: () => const VerifyCode()),
  //GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  //GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  //GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  //GetPage(name: AppRoute.onBoarding, page: () => const OnBoardingScreen()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.homescreen, page: () => const HomeScreen()),
 

];