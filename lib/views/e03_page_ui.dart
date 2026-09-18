import 'package:flutter/material.dart';

class E03PageUI extends StatefulWidget {
  E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  bool hidePassword = true;
  bool hideConfirm = true;

  InputDecoration _decoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(fontSize: 8, color: Color(0xFFAAAAAA)),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      isDense: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFD8D8D8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 155,
                child: Image.asset(
                  'assets/images/img_orange2.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17),
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Create your new account',
                      style: TextStyle(fontSize: 9, color: Color(0xFF777777)),
                    ),
                    SizedBox(height: 16),
                    TextField(decoration: _decoration('Name')),
                    SizedBox(height: 8),
                    TextField(decoration: _decoration('Email')),
                    SizedBox(height: 8),
                    TextField(decoration: _decoration('Phone')),
                    SizedBox(height: 8),
                    TextField(
                      obscureText: hidePassword,
                      decoration: _decoration('Password').copyWith(
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
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      obscureText: hideConfirm,
                      decoration: _decoration('Confirm Password').copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hideConfirm = !hideConfirm;
                            });
                          },
                          icon: Icon(
                            hideConfirm
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF9D00),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('Sign up', style: TextStyle(fontSize: 9)),
                      ),
                    ),
                    SizedBox(height: 13),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // ปรับเป็น pop เพื่อย้อนกลับไปหน้า Login
                        },
                        child: Text(
                          'Already have an account? Login',
                          style: TextStyle(fontSize: 8, color: Color(0xFF777777)),
                        ),
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
}