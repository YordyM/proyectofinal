

class AppSoftware extends StatelessWidget {
  const AppSoftware({Key? key});

  final String webUrl =
      'https://mastermky.com/apps-y-software/'; 

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
