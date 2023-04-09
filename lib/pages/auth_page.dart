import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth1/pages/home_page.dart';
import 'package:flutter_auth1/pages/login_page.dart';

//kullanicinin oturum acip acmadigini kontrol edecegiz
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), //durum degisikliklerini takip edecek 
        builder: (context, snapshot){

          //kullanici giris yapmissa
          if(snapshot.hasData){
            return HomePage();
          }

          //kullanici giris yapmamissa
          else{
            return LoginPage(); //oturum acmasi icin, oturum acma sayfasina yonlendirdik.
          }

        },
      ),
    );
  }
}