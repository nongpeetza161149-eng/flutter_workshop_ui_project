import 'package:flutter/material.dart';
import 'e05_page_ui.dart';

class E04PageUI extends StatelessWidget {
  E04PageUI({super.key});

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
                    SizedBox(height: 18),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Enter your email to reset your password',
                      style: TextStyle(fontSize: 9, color: Color(0xFF777777)),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: _inputDecoration('Enter your email'),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => E05PageUI(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF9D00),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('Send Code', style: TextStyle(fontSize: 9)),
                      ),
                    ),
                    SizedBox(height: 28),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // ปรับเป็น pop เพื่อย้อนกลับไปหน้า Login
                        },
                        child: Text(
                          'Remember your password? Login',
                          style: TextStyle(fontSize: 8, color: Color(0xFF777777)),
                        ),
                      ),
                    ),
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