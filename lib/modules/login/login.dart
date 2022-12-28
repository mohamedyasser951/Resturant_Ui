import "package:flutter/material.dart";
import 'package:resturant/modules/login/forgetpassword.dart';
import 'package:resturant/modules/register/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Form(
               // autovalidateMode: AutovalidateMode.always,
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login to your",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "account",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                        ),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value.indexOf('.') == -1 ||
                              value.indexOf("@") == -1) {
                            return "please enter correct email";
                          }
                        }),
                      ),
                    ),
                    Container(
                     // margin: const EdgeInsets.only(bottom: 10.0),
                      padding: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          hintText: "Password",
                      
                          border: InputBorder.none,
                        ),
                        validator: ((value) {
                          if (value!.isEmpty || value.length < 6) {
                            return "please enter Strong password";
                          }
                        }),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ForgetPassword()));
                                },
                                child:const Text(
                                  "Forgot password ?",
                                  style: TextStyle(
                                      color: Colors.red,
                                     
                                      fontSize: 14.0),
                                )),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formkey.currentState!.validate()) {}
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 25.0),
                        width: MediaQuery.of(context).size.width,
                        height: 45.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
