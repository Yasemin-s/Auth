import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;  //varolan kullaniciyi aldik

  //kullanicinin cikis yapip , giris sayfasina yonlendigi buton kismi
  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut, 
            icon: Icon(Icons.logout))
        ],),
      body: Center(child: Text("oturum acanin maili: " + user.email!),),
    );
  }
}