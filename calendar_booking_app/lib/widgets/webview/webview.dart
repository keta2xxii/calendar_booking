import 'package:calendar_booking_app/widgets/indicator/wrapper_indicator.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BaseWebview extends StatefulWidget {
  const BaseWebview({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  State<BaseWebview> createState() => _BaseWebviewState();
}

class _BaseWebviewState extends State<BaseWebview> {
  late WebViewController _controller;

  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) {
              setState(() {
                _loading = false;
              });
            },
            // onNavigationRequest: (NavigationRequest request) {
            //   if (request.url.startsWith('https://www.youtube.com/')) {
            //     return NavigationDecision.prevent;
            //   }
            //   return NavigationDecision.navigate;
            // },
          ),
        )
        ..loadRequest(Uri.parse(widget.url));
    });
  }

  @override
  Widget build(BuildContext context) {
    return WrapperIndicator(
      loading: _loading,
      child: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
