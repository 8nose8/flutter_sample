import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/drag_drop/drag_drop_sample_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DragDropSamplePage extends ConsumerWidget {
  const DragDropSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('drag & drop')),
      body: Row(
        children: [
          Consumer(
            builder: ((context, ref, child) {
              final lane1 = ref.watch(dragDropSampleControllerProvider
                  .select((state) => state.lane1));
              return DragDropSampleLaneWidget(
                elements: lane1,
                color: Colors.blue,
                onMove: (itemID) {
                  ref
                      .read(dragDropSampleControllerProvider.notifier)
                      .moveItem(itemID, 0);
                },
              );
            }),
          ),
          Consumer(
            builder: ((context, ref, child) {
              final lane2 = ref.watch(dragDropSampleControllerProvider
                  .select((state) => state.lane2));
              return DragDropSampleLaneWidget(
                elements: lane2,
                color: Colors.red,
                onMove: (itemID) {
                  ref
                      .read(dragDropSampleControllerProvider.notifier)
                      .moveItem(itemID, 1);
                },
              );
            }),
          ),
          Consumer(
            builder: ((context, ref, child) {
              final lane3 = ref.watch(dragDropSampleControllerProvider
                  .select((state) => state.lane3));
              return DragDropSampleLaneWidget(
                elements: lane3,
                color: Colors.green,
                onMove: (itemID) {
                  ref
                      .read(dragDropSampleControllerProvider.notifier)
                      .moveItem(itemID, 2);
                },
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(dragDropSampleControllerProvider.notifier).addItem();
        },
      ),
    );
  }
}

class DragDropSampleLaneWidget extends StatelessWidget {
  const DragDropSampleLaneWidget({
    Key? key,
    required this.elements,
    required this.color,
    this.onMove,
  }) : super(key: key);

  final List<String> elements;
  final Color color;
  final Function(String)? onMove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DragTarget<String>(
        builder: (context, candidateData, rejectedData) => Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            color: color,
            child: Column(
              children: elements
                  .map((title) => Draggable<String>(
                        data: title,
                        child: Container(
                          margin: const EdgeInsets.all(2.5),
                          color: Colors.grey,
                          width: 120,
                          height: 100,
                        ),
                        feedback: Container(
                          margin: const EdgeInsets.all(2.5),
                          color: Colors.grey.withAlpha(200),
                          width: 120,
                          height: 100,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        onAccept: onMove,
      ),
    );
  }
}
