import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/stop_watch/stop_watch_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StopWatchPage extends ConsumerWidget {
  const StopWatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('stop watch')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Consumer(
              builder: ((context, ref, child) {
                final time = ref.watch(stopWatchPageControllerProvider
                    .select((state) => state.time));
                return Text(
                  time.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 30),
                );
              }),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text('start'),
                    onPressed: () {
                      ref
                          .read(stopWatchPageControllerProvider.notifier)
                          .start();
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('stop'),
                    onPressed: () {
                      ref.read(stopWatchPageControllerProvider.notifier).stop();
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('lap'),
                    onPressed: () {
                      ref.read(stopWatchPageControllerProvider.notifier).lap();
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('reset'),
                    onPressed: () {
                      ref
                          .read(stopWatchPageControllerProvider.notifier)
                          .reset();
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final laps = ref.watch(stopWatchPageControllerProvider
                      .select((state) => state.laps));
                  return ListView.builder(
                    controller: ScrollController(),
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final lap = laps[index];
                      return Text(lap.toStringAsFixed(2));
                    },
                    itemCount: laps.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
