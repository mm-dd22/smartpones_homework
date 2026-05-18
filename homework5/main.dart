import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      // لإخفاء شريط الديباج الأحمر الصغير من الزاوية
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // خلفية بيضاء سادة مثل الصورة
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 32, // حجم الخط مناسب ومتناسق مع الصورة
              color: Colors.black, // لون النص أسود
              fontWeight: FontWeight.w400, // سمك الخط الطبيعي
            ),
          ),
        ),
      ),
    ),
  );
}
