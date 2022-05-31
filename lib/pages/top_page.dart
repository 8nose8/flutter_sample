import 'package:flutter/material.dart';
import 'package:flutter_samples/main.dart';
import 'package:flutter_samples/pages/top_page_element.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final elements = _getElements();
    return Scaffold(
      appBar: AppBar(title: const Text('top')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          controller: ScrollController(),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final element = elements[index];
            return InkWell(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(element.title),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(element.route, arguments: Argumetn(0));
              },
            );
          },
          itemCount: elements.length,
        ),
      ),
    );
  }

  List<TopPageElement> _getElements() {
    return [
      TopPageElement(title: 'drag & drop', route: Routes.routeDragDrop),
      TopPageElement(title: 'stop watch', route: Routes.routeStopWatch),
      TopPageElement(title: 'qr generate', route: Routes.routeQrGenerate),
      TopPageElement(title: 'chart', route: Routes.routeChart),
    ];
  }
}

class Argumetn {
  final int index;

  Argumetn(this.index);
}
