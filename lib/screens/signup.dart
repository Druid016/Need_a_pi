import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:need_a_pi_project/screens/home.dart';
import 'package:need_a_pi_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:need_a_pi_project/widgets/text_input.dart';

import '../resources/auth_methods.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  Uint8List? _image;

  @override

   void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signUpUser() async {
    // set loading to true
    setState(() {
      _isLoading = true;
    });

    // signup user using our authmethodds
    String res = await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text);
    // if string returned is sucess, user has been created
    if (res == "success") {
      setState(() {
        _isLoading = false;
      });
      // navigate to the home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LogInPage()
        ),
      );
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  selectImage() async {
    ImagePicker im = await ImagePicker();
    // set state because we need to display the image we selected on the circle avatar
    setState(() {
      _image = im as Uint8List?;
    });
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
                //SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 360,
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
                      SizedBox(width: 100,),
                      Text(

                        "Sign Up", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

                      ),
                      SizedBox(width: 80,),
                      Icon(Icons.not_started_outlined),
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

            const SizedBox(height: 20,),
            Row(
              children: const [
                SizedBox(width: 20,),
                Text("Enter  Strong Password: ", style: TextStyle(color: Color(0xFFFFBE9D), fontWeight: FontWeight.bold),),
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
                child: IconButton(onPressed: ()=>{
                      signUpUser()
                }, icon: const Icon(Icons.double_arrow_outlined, size: 30, color: Colors.white,))),
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text("Already Have an Account? "),
                const SizedBox(width: 100,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LogInPage()));
                    },
                    child: const Text("Log In Now", style: TextStyle(color: Color(0xFFFFBE9D), decoration: TextDecoration.underline),)),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                SizedBox(width: 170,),
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
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 110,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFBE9D),
                      borderRadius: BorderRadius.circular(40),

                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 10,),
                        Text("Demo Account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        Icon(Icons.double_arrow_outlined, color: Colors.white,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}