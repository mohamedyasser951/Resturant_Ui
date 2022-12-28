import "package:flutter/material.dart";
import 'package:resturant/modules/register/register.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Form(
              //autovalidateMode: AutovalidateMode.always,
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Forgot password",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                   const Text(
                    "Please enter your email to recieve a link to create a new password via email",
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 114, 114),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                 const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 0.0),
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
                        "Send",
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
        
          ],
        ),
      ),
    );
  }
}
