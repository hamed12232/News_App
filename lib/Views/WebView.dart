import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  final String urll;
  WebView(this.urll);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late WebViewController controller;

void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate())
      ..loadRequest(Uri.parse(widget.urll));
  }
   
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('WebView Page',style:TextStyle(color: Colors.transparent) ,),
      ),
        body:
       WebViewWidget(controller: controller)
    );
  }
}