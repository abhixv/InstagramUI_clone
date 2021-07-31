import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/utils/routes.dart';
import 'package:instagram/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  String dark_logo_url =
      "https://cdn-2.tstatic.net/batam/foto/bank/images/ilustrasi-instagram-resmi-merilis-fitur-darkmode-selamat-datang-di-instagram-dark-mode.jpg";
  String light_logo_url =
      "https://i0.wp.com/www.dafontfree.io/wp-content/uploads/2020/12/instagram-new.png?fit=1100%2C750&ssl=1";

  moveToHome(BuildContext context) {
    if (_formkey.currentState.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.black,
      //backgroundColor: Vx.black,
      //   elevation: 0.0,
      // ),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140.0,
                  ),
                  Image.network(
                    dark_logo_url,
                    fit: BoxFit.cover,
                  ).h24(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(color: Vx.white),
                          decoration: InputDecoration(
                            hintText: "Phone number, email or username",
                            hintStyle: TextStyle(color: Vx.white),
                            labelText: "Username",
                            labelStyle: TextStyle(color: Vx.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          style: TextStyle(color: Vx.white),
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(color: Vx.white),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Vx.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length <= 6) {
                              return "Password Should be atleast 6 digits";
                            }

                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          child: Text("Login"),
                          style:
                              TextButton.styleFrom(minimumSize: Size(100, 40)),
                          onPressed: () => moveToHome(context),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
