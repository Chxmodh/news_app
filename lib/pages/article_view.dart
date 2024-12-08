import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogurl;

  ArticleView({required this.blogurl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.blogurl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("G",style: TextStyle(fontSize: 40.0,color: Colors.red,fontWeight: FontWeight.bold)),
                Text("lobal"),
                Text(" N",style: TextStyle(fontSize: 40.0,color: Colors.red,fontWeight: FontWeight.bold)),
                Text("ews"),
              ],
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: WebViewWidget(controller: _controller),
    )
    );
  }
}
