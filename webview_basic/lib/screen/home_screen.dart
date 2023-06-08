import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // https://blog.codefactory.ai
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모던 애자일'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://modern-agile-official-client.vercel.app/',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
