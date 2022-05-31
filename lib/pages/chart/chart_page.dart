import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartData {
  ChartData(this.date, this.value);

  final DateTime date;
  final double value;
}

class ChartPage extends ConsumerWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('chart')),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SizedBox(
          height: 200,
          child: charts.TimeSeriesChart(
            _createData(
              [
                ChartData(DateTime(2022, 5, 30), 60),
                ChartData(DateTime(2022, 5, 31), 79),
                ChartData(DateTime(2022, 6, 1), 56),
                ChartData(DateTime(2022, 6, 2), 76),
                ChartData(DateTime(2022, 6, 3), 55),
                ChartData(DateTime(2022, 6, 4), 62),
                ChartData(DateTime(2022, 6, 5), 64),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<charts.Series<ChartData, DateTime>> _createData(
    List<ChartData> dataList,
  ) {
    return [
      charts.Series(
        id: 'Value',
        data: dataList,
        domainFn: (data, _) => data.date,
        measureFn: (data, _) => data.value,
        measureLowerBoundFn: (data, _) => 50,
      )
    ];
  }
}
