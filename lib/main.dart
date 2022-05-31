import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/chart/chart_page.dart';
import 'package:flutter_samples/pages/drag_drop/drag_drop_sample_page.dart';
import 'package:flutter_samples/pages/qr_generate/qr_generate_page.dart';
import 'package:flutter_samples/pages/stop_watch/stop_watch_page.dart';
import 'package:flutter_samples/pages/top_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopPage(),
      onGenerateRoute: (settings) => Routes.generate(settings),
    );
  }
}

class Routes {
  static const String routeTop = '/';
  static const String routeDragDrop = '/drag_drop';
  static const String routeStopWatch = '/stop_watch';
  static const String routeQrGenerate = '/qr_generater';
  static const String routeChart = '/chart';

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case routeTop:
        return MaterialPageRoute(
          builder: (_) => const TopPage(),
          settings: settings,
        );
      case routeDragDrop:
        return MaterialPageRoute(
          builder: (_) => const DragDropSamplePage(),
          settings: settings,
        );
      case routeStopWatch:
        return MaterialPageRoute(
          builder: (_) => const StopWatchPage(),
          settings: settings,
        );
      case routeQrGenerate:
        return MaterialPageRoute(
          builder: (_) => const QrGeneraterPage(),
          settings: settings,
        );
      case routeChart:
        return MaterialPageRoute(
          builder: (_) => const ChartPage(),
          settings: settings,
        );
    }

    throw 'undefined route path';
  }
}
