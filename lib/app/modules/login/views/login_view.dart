import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone? EdgeInsets.all(Get.width*0.1): EdgeInsets.all(Get.height*0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(
          children: [
            !context.isPhone?
            Expanded(
              child: Container(
              decoration: const BoxDecoration(
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(50), 
                bottomLeft: Radius.circular(50)),
                color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    Text('welcome',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 70),),
                    Text('please sign in',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 30),),
                    Text('start journey with us',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20),),
                  ],),
                ),
            )
            ),
    );
  }
}
