import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse("https://modern-agile-official-client.vercel.app/");

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({Key? key}) : super(key: key);

  // https://blog.codefactory.ai
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('모던 애자일'),
          backgroundColor: Colors.orange,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  controller.loadRequest(homeUrl);
                },
                icon: Icon(Icons.home)),
          ],
        ),
        body: WebViewWidget(
          controller: controller,
        )
    );
  }
}
