// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drag_drop_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DragDropSampleStateTearOff {
  const _$DragDropSampleStateTearOff();

  _DragDropSampleState call(
      {List<String> lane1 = const [],
      List<String> lane2 = const [],
      List<String> lane3 = const []}) {
    return _DragDropSampleState(
      lane1: lane1,
      lane2: lane2,
      lane3: lane3,
    );
  }
}

/// @nodoc
const $DragDropSampleState = _$DragDropSampleStateTearOff();

/// @nodoc
mixin _$DragDropSampleState {
  List<String> get lane1 => throw _privateConstructorUsedError;
  List<String> get lane2 => throw _privateConstructorUsedError;
  List<String> get lane3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DragDropSampleStateCopyWith<DragDropSampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragDropSampleStateCopyWith<$Res> {
  factory $DragDropSampleStateCopyWith(
          DragDropSampleState value, $Res Function(DragDropSampleState) then) =
      _$DragDropSampleStateCopyWithImpl<$Res>;
  $Res call({List<String> lane1, List<String> lane2, List<String> lane3});
}

/// @nodoc
class _$DragDropSampleStateCopyWithImpl<$Res>
    implements $DragDropSampleStateCopyWith<$Res> {
  _$DragDropSampleStateCopyWithImpl(this._value, this._then);

  final DragDropSampleState _value;
  // ignore: unused_field
  final $Res Function(DragDropSampleState) _then;

  @override
  $Res call({
    Object? lane1 = freezed,
    Object? lane2 = freezed,
    Object? lane3 = freezed,
  }) {
    return _then(_value.copyWith(
      lane1: lane1 == freezed
          ? _value.lane1
          : lane1 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lane2: lane2 == freezed
          ? _value.lane2
          : lane2 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lane3: lane3 == freezed
          ? _value.lane3
          : lane3 // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DragDropSampleStateCopyWith<$Res>
    implements $DragDropSampleStateCopyWith<$Res> {
  factory _$DragDropSampleStateCopyWith(_DragDropSampleState value,
          $Res Function(_DragDropSampleState) then) =
      __$DragDropSampleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> lane1, List<String> lane2, List<String> lane3});
}

/// @nodoc
class __$DragDropSampleStateCopyWithImpl<$Res>
    extends _$DragDropSampleStateCopyWithImpl<$Res>
    implements _$DragDropSampleStateCopyWith<$Res> {
  __$DragDropSampleStateCopyWithImpl(
      _DragDropSampleState _value, $Res Function(_DragDropSampleState) _then)
      : super(_value, (v) => _then(v as _DragDropSampleState));

  @override
  _DragDropSampleState get _value => super._value as _DragDropSampleState;

  @override
  $Res call({
    Object? lane1 = freezed,
    Object? lane2 = freezed,
    Object? lane3 = freezed,
  }) {
    return _then(_DragDropSampleState(
      lane1: lane1 == freezed
          ? _value.lane1
          : lane1 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lane2: lane2 == freezed
          ? _value.lane2
          : lane2 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lane3: lane3 == freezed
          ? _value.lane3
          : lane3 // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DragDropSampleState implements _DragDropSampleState {
  _$_DragDropSampleState(
      {this.lane1 = const [], this.lane2 = const [], this.lane3 = const []});

  @JsonKey()
  @override
  final List<String> lane1;
  @JsonKey()
  @override
  final List<String> lane2;
  @JsonKey()
  @override
  final List<String> lane3;

  @override
  String toString() {
    return 'DragDropSampleState(lane1: $lane1, lane2: $lane2, lane3: $lane3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DragDropSampleState &&
            const DeepCollectionEquality().equals(other.lane1, lane1) &&
            const DeepCollectionEquality().equals(other.lane2, lane2) &&
            const DeepCollectionEquality().equals(other.lane3, lane3));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lane1),
      const DeepCollectionEquality().hash(lane2),
      const DeepCollectionEquality().hash(lane3));

  @JsonKey(ignore: true)
  @override
  _$DragDropSampleStateCopyWith<_DragDropSampleState> get copyWith =>
      __$DragDropSampleStateCopyWithImpl<_DragDropSampleState>(
          this, _$identity);
}

abstract class _DragDropSampleState implements DragDropSampleState {
  factory _DragDropSampleState(
      {List<String> lane1,
      List<String> lane2,
      List<String> lane3}) = _$_DragDropSampleState;

  @override
  List<String> get lane1;
  @override
  List<String> get lane2;
  @override
  List<String> get lane3;
  @override
  @JsonKey(ignore: true)
  _$DragDropSampleStateCopyWith<_DragDropSampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
