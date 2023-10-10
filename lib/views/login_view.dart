import 'package:flutter/material.dart';
import 'package:shop_app/views/constans.dart';
import 'package:shop_app/views/hom_view.dart';
import 'package:shop_app/widgets/custom_button.dart';
import 'package:shop_app/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/shop_app.jpg',
            width: 200,
            height: 200,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            hintText: 'UserName',
          ),
          const CustomTextField(
            hintText: 'Password',
          ),
          CustomButton(
            buttonText: 'Enter',
           onPressed: (){
            Navigator.pushNamed(context, HomeView.id);
           },
            textSize: 18,
            textColor: Colors.white,
           backColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
