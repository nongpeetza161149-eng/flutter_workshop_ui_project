import 'package:flutter/material.dart';
import 'e03_page_ui.dart';
import 'e04_page_ui.dart';

class E02PageUI extends StatefulWidget {
  E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _topOrangeImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 18),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Login to your account',
                      style: TextStyle(fontSize: 9, color: Color(0xFF777777)),
                    ),
                    SizedBox(height: 18),
                    TextField(
                      decoration: _inputDecoration('Enter your email'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: hidePassword,
                      decoration: _inputDecoration('Enter your password').copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(
                            hidePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => E04PageUI(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ),
                    ),
                    _orangeButton('Login', () {}),
                    SizedBox(height: 9),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 8, color: Color(0xFF888888)),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        _socialButton('assets/images/img_g.png'),
                        SizedBox(width: 8),
                        _socialButton('assets/images/img_f.png'),
                        SizedBox(width: 8),
                        _socialButton('assets/images/img_a.png'),
                      ],
                    ),
                    SizedBox(height: 18),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 8, color: Color(0xFF777777)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => E03PageUI(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 8,
                                color: Color(0xFFFF9D00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topOrangeImage() {
    return SizedBox(
      width: double.infinity,
      height: 155,
      child: Image.asset(
        'assets/images/img_orange2.png',
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }

  Widget _socialButton(String asset) {
    return Expanded(
      child: SizedBox(
        height: 35,
        child: OutlinedButton(
          onPressed: () {},
          child: Image.asset(asset, height: 15),
        ),
      ),
    );
  }

  Widget _orangeButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF9D00),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 9)),
      ),
    );
  }
}

InputDecoration _inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(fontSize: 8, color: Color(0xFFAAAAAA)),
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    isDense: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Color(0xFFD8D8D8)),
    ),
  );
}
