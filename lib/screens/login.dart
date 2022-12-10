// ignore_for_file: library_private_types_in_public_api

import 'package:need_a_pi_project/screens/home.dart';
import 'package:need_a_pi_project/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:need_a_pi_project/widgets/text_input.dart';

import '../resources/auth_methods.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == 'success') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const HomeScreen()
          ),
          (route) => false);

      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child:   Column(
    children: [
        const SizedBox(height: 80,),
      Row(
        children: [
          const SizedBox(width: 10,),
          Container(
            height: 50,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
   borderRadius: BorderRadius.circular(3),
  boxShadow: [
    BoxShadow(
          color: const Color(0xFFFFBE9D).withOpacity(0.5),
          spreadRadius: 8,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
    ),
  ],
            ),
  child: Row(
    children: const [
      SizedBox(width: 90,),
          Text(

        "Log In", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

      ),
      SizedBox(width: 70,),
      Icon(Icons.login),
    ],
  ),
          ),
        ],
      ),
      const SizedBox(height: 50,),
      Row(
        children: const [
          SizedBox(width: 20,),
          Text("Enter Your Email Address:", style: TextStyle(color: Color(0xFFFFBE9D), fontWeight: FontWeight.bold),),
        ],
      ),
      const SizedBox(height: 10,),

      Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFieldInput(
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              )))),

  const SizedBox(height: 50,),
      Row(
        children: const [
          SizedBox(width: 20,),
          Text("Enter Password: ", style: TextStyle(color: Color(0xFFFFBE9D), fontWeight: FontWeight.bold),),
        ],
      ),
      const SizedBox(height: 10,),
      Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFieldInput(
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
              )))),
      const SizedBox(height: 30,),
      Container(
        height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFFFBE9D),
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(

              onPressed: ()=>{
                  loginUser()
              },  icon: const Icon(Icons.double_arrow_outlined, size: 30, color: Colors.white,))),
      const SizedBox(height: 20,),
      Row(
        children: [
          const SizedBox(width: 20,),
          const Text("Are you new here?"),
          const SizedBox(width: 100,),
          GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
              },
              child: const Text("SignUp Now", style: TextStyle(color: Color(0xFFFFBE9D), decoration: TextDecoration.underline),)),

        ],
      ),
 const SizedBox(height: 10,),
 Row(
   children: const [
     SizedBox(width: 160,),
     Text("OR", style: TextStyle(fontSize: 18
     ),),
   ],
 ),
const SizedBox(height: 20,),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SignInButton(
      Buttons.Google,
      //mini: true,
      onPressed: () {

      },),
    const SizedBox(height: 20,),
    SignInButton(
      Buttons.FacebookNew,

      //mini: true,
      onPressed: () {

      },),
  ],
),

    ],
  ),
),

    );
  }
}