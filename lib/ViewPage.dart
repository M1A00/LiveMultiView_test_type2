import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const int MaxNumView = 6;
late final controller = List<WebViewController>.generate(
    MaxNumView, (i) => WebViewController());

class ViewPage extends StatelessWidget {
  const ViewPage({
    super.key,
    required this.Url,
    required this.controllerNumber,
  });

  final String Url;
  final int controllerNumber;

  @override
  Widget build(BuildContext context) {
    controller[controllerNumber]
      ..loadRequest(Uri.parse(Url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white);

    return Scaffold(
      body: WebViewWidget(
        controller: controller[controllerNumber],
      ),
    );
  }
}
