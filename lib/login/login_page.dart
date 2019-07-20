import 'package:flutter/material.dart';
import 'package:travelapp/home/home_page.dart';
import 'package:travelapp/utils/form_icon.dart';
import 'package:travelapp/utils/size_config.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String username, password;

  final forgotPassword = SnackBar(content: Text('Forgot Password'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8ebddb),
      body: SingleChildScrollView(
        child: Form(
          child: FormUI(),
          key: _key,
          autovalidate: _validate,
        ),
      ),
    );
  }

  Widget FormUI() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: SizeConfig.blockSizeVertical * 8.8,
            bottom: SizeConfig.blockSizeVertical * 6,
          ),
          width: SizeConfig.blockSizeHorizontal * 94.6,
          child: Image.asset('images/login_image.png'),
        ),
        Container(
          width: SizeConfig.blockSizeHorizontal * 78.25,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Text(
                    'Travel Sign In',
                    style: TextStyle(
                      fontSize: 20.5,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.51,
                      color: Color(0xffafd5ed),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: SizeConfig.blockSizeHorizontal * 64.8,
                  child: TextFormField(
                    cursorColor: Color(0xff8ebddb),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(FormIcon.username),
                      counterText: "",
                    ),
                    maxLength: 16,
                    validator: validateUsername,
                    onSaved: (String val) {
                      username = val;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  width: SizeConfig.blockSizeHorizontal * 64.8,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    cursorColor: Color(0xff8ebddb),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(FormIcon.password),
                      counterText: "",
                    ),
                    maxLength: 16,
                    validator: validatePassword,
                    onSaved: (String val) {
                      password = val;
                    },
                  ),
                ),
                Container(
                  width: SizeConfig.blockSizeHorizontal * 64.8,
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 11,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18, bottom: 18),
                  child: MaterialButton(
                    minWidth: SizeConfig.blockSizeHorizontal * 36.6,
                    onPressed: () => _login(),
                    color: Color(0xffafd5ed),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      fontSize: 12.8,
                      letterSpacing: 0.64,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                child: Text(
                  'Register!',
                  style: TextStyle(
                      fontSize: 12.8,
                      letterSpacing: 0.64,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  String validateUsername(String value) {
    if (value.length == 0) {
      return "Username is Required";
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return "Password is Required";
    }
    return null;
  }

  _login() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      print("Username $username");
      print("Password $password");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
