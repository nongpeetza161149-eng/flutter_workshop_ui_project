import 'package:flutter/material.dart';
import 'views/e01_page_ui.dart'; // import หน้าเริ่มต้นของคุณ (ปรับ path ตามโฟลเดอร์จริง)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: E01PageUI(), // เปลี่ยนมาเรียกหน้าแรกของคุณตรงนี้
    );
  }
}