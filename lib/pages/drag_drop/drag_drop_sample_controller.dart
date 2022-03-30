import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/drag_drop/drag_drop_sample_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dragDropSampleControllerProvider = StateNotifierProvider.autoDispose<
    DragDropSampleController, DragDropSampleState>(
  (ref) => DragDropSampleController(),
);

class DragDropSampleController extends StateNotifier<DragDropSampleState> {
  DragDropSampleController() : super(DragDropSampleState());

  void addItem() {
    int minLength = min(state.lane1.length, state.lane2.length);
    minLength = min(state.lane3.length, minLength);

    if (state.lane1.length == minLength) {
      final lane1 = [...state.lane1];
      lane1.add(_randomString(6));
      state = state.copyWith(lane1: lane1);
    } else if (state.lane2.length == minLength) {
      final lane2 = [...state.lane2];
      lane2.add(_randomString(6));
      state = state.copyWith(lane2: lane2);
    } else {
      final lane3 = [...state.lane3];
      lane3.add(_randomString(6));
      state = state.copyWith(lane3: lane3);
    }
  }

  void moveItem(String item, int lane) {
    final lane1 = [...state.lane1];
    final lane2 = [...state.lane2];
    final lane3 = [...state.lane3];
    lane1.remove(item);
    lane2.remove(item);
    lane3.remove(item);

    if (lane == 0) {
      lane1.add(item);
    } else if (lane == 1) {
      lane2.add(item);
    } else {
      lane3.add(item);
    }

    state = state.copyWith(lane1: lane1, lane2: lane2, lane3: lane3);
  }

  String _randomString(int length) {
    const _randomChars =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    const _charsLength = _randomChars.length;

    final rand = Random();
    final codeUnits = List.generate(
      length,
      (index) {
        final n = rand.nextInt(_charsLength);
        return _randomChars.codeUnitAt(n);
      },
    );
    return String.fromCharCodes(codeUnits);
  }
}
