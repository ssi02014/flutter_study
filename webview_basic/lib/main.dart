import 'package:flutter/material.dart';
import 'package:webview_basic/screen/home_screen.dart';

void main() {
  // Flutter 프레임워크가 앱을 실행할 준비가 될 때까지 기다린다.
  // WebView v4에서 해당 메서드를 추가해야 한다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
