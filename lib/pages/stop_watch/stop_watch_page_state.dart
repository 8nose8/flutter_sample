import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_watch_page_state.freezed.dart';

@freezed
class StopWatchPageState with _$StopWatchPageState {
  factory StopWatchPageState({
    @Default(0.00) double time,
    @Default([]) List<double> laps,
  }) = _StopWatchPageState;
}
