import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'e06_page_ui.dart';

class E05PageUI extends StatefulWidget {
  E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                SizedBox(height: 28),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new, size: 17),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'OTP Verification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'Enter the OTP code sent to your email address.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 9, color: Color(0xFF777777)),
                ),
                SizedBox(height: 16),
                Image.asset(
                  'assets/images/img_orange3.png',
                  width: 190,
                  height: 190,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _otpBox(),
                    SizedBox(width: 8),
                    _otpBox(),
                    SizedBox(width: 8),
                    _otpBox(),
                    SizedBox(width: 8),
                    _otpBox(),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E06PageUI(),
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
                    child: Text('Verify', style: TextStyle(fontSize: 9)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _otpBox() {
    return SizedBox(
      width: 48,
      height: 48,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly], // กรองรับเฉพาะตัวเลข
        maxLength: 1,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.zero, // จัดข้อความให้อยู่จุดศูนย์กลางกล่องพอดี
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
          ),
        ),
      ),
    );
  }
}