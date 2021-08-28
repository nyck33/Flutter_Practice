import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String _message = '';
  bool _isLogin = true;
  final TextEditingController txtUserName = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(36),
        child: ListView(
          children: [
            userInput(),
            passwordInput(),
            btnMain(),
            btnSecondary(),
            txtMessage(),
          ],
        ),
      ),
    );
  }

  Widget userInput() {
    return Padding(
      padding: EdgeInsets.only(top: 128),
      child: TextFormField(
        controller: txtUserName,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'User Name', icon: Icon(Icons.verified_user)),
        validator: (text) {
          if (text == null) {
            return 'User Name is required';
          } else {
            return '';
          }
        },
      ),
    );
  }

  Widget passwordInput() {
    return Padding(
      padding: EdgeInsets.only(top: 24),
      child: TextFormField(
        controller: txtPassword,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'password', icon: Icon(Icons.enhanced_encryption)),
        validator: (text) {
          if (text == null) {
            return 'Password is required';
          } else {
            return '';
          }
        },
      ),
    );
  }

  Widget btnMain() {
    String btnText = _isLogin ? 'Log in' : 'Sign up';
    return Padding(
      padding: EdgeInsets.only(top: 128),
      child: Container(
        height: 60,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColorLight),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    side: BorderSide(color: Colors.red)),
              ),
            ),
            child: Text(
              btnText,
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).primaryColorLight),
            ),
            onPressed: () {}),
      ),
    );
  }

  Widget btnSecondary() {
    String buttonText = _isLogin ? 'Sign up' : 'Log In';
    return TextButton(
      child: Text(buttonText),
      onPressed: () {
        setState(() {
          _isLogin = !_isLogin;
        });
      },
    );
  }

  Widget txtMessage() {
    return Text(
      _message,
      style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).primaryColorDark,
          fontWeight: FontWeight.bold),
    );
  }
}
