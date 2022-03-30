import 'dart:async';

import 'package:flutter_samples/pages/stop_watch/stop_watch_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final stopWatchPageControllerProvider = StateNotifierProvider.autoDispose<
    StopWatchPageController, StopWatchPageState>(
  (ref) => StopWatchPageController(),
);

class StopWatchPageController extends StateNotifier<StopWatchPageState> {
  StopWatchPageController() : super(StopWatchPageState());

  Timer? _timer;

  void start() {
    if (_timer == null || !_timer!.isActive) {
      _timer = Timer.periodic(
          const Duration(milliseconds: 10), (_) => _onTimeChanged());
      return;
    }
  }

  void stop() {
    if (_timer == null) {
      return;
    }

    if (_timer!.isActive) {
      _timer!.cancel();
    }
  }

  void lap() {
    if (_timer == null) {
      return;
    }

    if (_timer!.isActive) {
      final laps = [...state.laps];
      laps.add(state.time);
      state = state.copyWith(laps: laps);
    }
  }

  void reset() {
    stop();
    state = state.copyWith(time: 0.00, laps: []);
  }

  void _onTimeChanged() {
    state = state.copyWith(time: state.time + 0.01);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
