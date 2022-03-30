import 'package:freezed_annotation/freezed_annotation.dart';

part 'drag_drop_sample_state.freezed.dart';

@freezed
class DragDropSampleState with _$DragDropSampleState {
  factory DragDropSampleState({
    @Default([]) List<String> lane1,
    @Default([]) List<String> lane2,
    @Default([]) List<String> lane3,
  }) = _DragDropSampleState;
}
