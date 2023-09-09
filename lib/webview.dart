import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webViewContainer extends StatefulWidget {
  const webViewContainer({super.key});

  @override
  State<webViewContainer> createState() => _webViewContainerState();
}

class _webViewContainerState extends State<webViewContainer> {


  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse('https://github.com/Kolonel007'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Profile'),

      ),
      body: WebViewWidget(controller: controller,),
    );
  }
}