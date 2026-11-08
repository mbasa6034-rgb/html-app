import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final WebViewController c;

  @override
  void initState() {
    super.initState();
    c = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadFlutterAsset('assets/web/index.html');
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: SafeArea(child: WebViewWidget(controller: c)));
}
