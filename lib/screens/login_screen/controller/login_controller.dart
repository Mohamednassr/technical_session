import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
 final auth =FirebaseAuth.instance;
 TextEditingController userController=TextEditingController();
 TextEditingController passController=TextEditingController();
TextEditingController userController1=TextEditingController();
 TextEditingController passController1=TextEditingController();

 login()async{
   await auth.signInWithEmailAndPassword(email: userController1.text, password: passController1.text);
 }

 signUp()async{
   await auth.createUserWithEmailAndPassword(email: userController.text, password:passController.text);
 }
 logOut()async{

 }
 addUserToFirebase(){

 }



}