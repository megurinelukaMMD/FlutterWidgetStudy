// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myproject/theme/image_app.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String dropdowngender = '';
  // String _validator(String value) {
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 200.0,
                  child: Image.asset(ImageApp.LOGO),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'First name',
                          hintText: 'Input your first name',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Last name',
                          hintText: 'Input your last name',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Email',
                          hintText: 'Input your email',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Password',
                          hintText: 'Input your password',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Confirm Password',
                          hintText: 'Input your password again',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Phone',
                          hintText: 'Input your phone number',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          labelText: 'Address',
                          hintText: 'Input your address',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      DropdownButtonFormField(
                        value: dropdowngender,
                        items: const [
                          DropdownMenuItem<String>(
                              child: Text('---Chose---'), value: ''),
                          DropdownMenuItem<String>(
                              child: Text('Male'), value: 'Male'),
                          DropdownMenuItem<String>(
                              child: Text('Female'), value: 'Female'),
                        ],
                        onChanged: (String? value) {
                          setState(() {
                            dropdowngender = value!;
                          });
                        },
                        validator: (value) {
                          if (dropdowngender == '') return 'Required';
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
