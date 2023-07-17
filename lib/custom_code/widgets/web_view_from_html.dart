// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:webview_flutter/webview_flutter.dart';

class WebViewFromHtml extends StatefulWidget {
  const WebViewFromHtml({Key? key, this.width, this.height, this.htmlData})
      : super(key: key);

  final double? width;
  final double? height;
  final String? htmlData;

  @override
  _WebViewFromHtmlState createState() => _WebViewFromHtmlState();
}

class _WebViewFromHtmlState extends State<WebViewFromHtml> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadHtmlString(widget.htmlData ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: WebViewWidget(controller: controller));
  }
}
