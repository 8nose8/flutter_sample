import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/top_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneraterPage extends HookConsumerWidget {
  const QrGeneraterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arg = ModalRoute.of(context)!.settings.arguments as Argumetn;
    debugPrint(arg.toString());
    return Scaffold(
      appBar: AppBar(title: const Text('qr generate')),
      body: Center(
        child: QrImage(
          data: 'https://google.co.jp',
          size: 200,
        ),
      ),
    );
  }
}
