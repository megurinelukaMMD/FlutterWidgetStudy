import 'package:flutter/material.dart';
import 'package:myproject/homepage.dart';
import 'package:myproject/register_screen.dart';
import 'package:myproject/theme/image_app.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 200.0,
                  child: Image.asset(ImageApp.LOGO),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black),
                            ),
                            labelText: 'Email',
                            hintText: 'Input your Email',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Email is required';
                            String pattern = r'\w+@\w+\.\w+';
                            if (!RegExp(pattern).hasMatch(value))
                              return 'Wrong email format';
                            return null;
                          }),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      TextFormField(
                        obscureText: !_isVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(Icons.visibility, color: Colors.black)
                                : Icon(Icons.visibility_off,
                                    color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black),
                          ),
                          labelText: 'Password',
                          hintText: 'Input your password',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Password is required';
                          String pattern =
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                          if (!RegExp(pattern).hasMatch(value))
                            return '''
Password must be at least 8 characters 
include uppercase letter, number and symbol
                          ''';
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: FlatButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    }
                  },
                  child: Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                    (route) => false);
              },
              child: Container(
                  child: Text('New user? Create Account',
                      style: TextStyle(fontSize: 15))),
            ),
          ],
        ),
      ),
    );
  }
}
