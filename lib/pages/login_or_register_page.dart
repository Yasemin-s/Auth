import 'package:flutter/material.dart';
import 'package:flutter_auth1/pages/login_page.dart';
import 'package:flutter_auth1/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

  //baslangicta giris sayfasi gostermek icin bool
  bool showLoginPage = true;

  //oturum acma ve kayit olmma sayfalari arasinda gecis yapmak  icin
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {

    if(showLoginPage){
      return LoginPage(
        onTap: togglePages, //dokununca gecis yapacak
      );
    }
    else{
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}