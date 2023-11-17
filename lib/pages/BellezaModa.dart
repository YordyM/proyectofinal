import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BellezaModa extends StatelessWidget {
  const BellezaModa({Key? key});

  final String webUrl =
      'https://mastermky.com/belleza-y-moda/'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: webUrl,
        javascriptMode: JavascriptMode.unrestricted,
               gestureRecognizers: Set()
    ..add(Factory<VerticalDragGestureRecognizer>(
      () => VerticalDragGestureRecognizer(),
    )),
      ),
    );
  }
}
