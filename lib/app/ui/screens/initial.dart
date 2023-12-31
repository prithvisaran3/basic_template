import 'package:basic_template/app/ui/screens/onboard_withanimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth.dart';
import 'home/main.dart';
import 'onboard.dart';

class Initial extends StatefulWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  String? isLogin;

  @override
  Widget build(BuildContext context) {
    debugPrint('initial auth test');
    return Scaffold(
      body: GetBuilder<AuthController>(
          init: AuthController(),
          initState: (state) async {
            bool login = await AuthController.to.loginCheck();
            debugPrint("is Login: $login");
            bool onBoarding = await AuthController.to.checkOnBoarding();
            debugPrint("onBoarding value $onBoarding");
            if (onBoarding == true) {
              setState(() {
                isLogin = 'onBoarding';
              });
            } else if (login == true) {
              setState(() {
                isLogin = "isLogin";
              });
            } else {
              debugPrint("logged in $isLogin");
            }
          },
          builder: (controller) => isLogin == "onBoarding"
              ? const OnBoardingScreen()
              : isLogin == "isLogin"
                  ? HomeMain()
                  :  HomeMain(),),
    );
  }
}
