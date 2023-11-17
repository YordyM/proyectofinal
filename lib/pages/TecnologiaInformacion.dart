import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TecnologiaInformacion extends StatelessWidget {
  const TecnologiaInformacion({Key? key});

  final String webUrl =
      'https://mastermky.com/tecnologia-de-la-informacion/'; // Reemplaza con tu URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: webUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
