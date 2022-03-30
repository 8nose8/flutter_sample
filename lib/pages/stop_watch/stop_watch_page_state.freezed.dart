// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stop_watch_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StopWatchPageStateTearOff {
  const _$StopWatchPageStateTearOff();

  _StopWatchPageState call({double time = 0.00, List<double> laps = const []}) {
    return _StopWatchPageState(
      time: time,
      laps: laps,
    );
  }
}

/// @nodoc
const $StopWatchPageState = _$StopWatchPageStateTearOff();

/// @nodoc
mixin _$StopWatchPageState {
  double get time => throw _privateConstructorUsedError;
  List<double> get laps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StopWatchPageStateCopyWith<StopWatchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopWatchPageStateCopyWith<$Res> {
  factory $StopWatchPageStateCopyWith(
          StopWatchPageState value, $Res Function(StopWatchPageState) then) =
      _$StopWatchPageStateCopyWithImpl<$Res>;
  $Res call({double time, List<double> laps});
}

/// @nodoc
class _$StopWatchPageStateCopyWithImpl<$Res>
    implements $StopWatchPageStateCopyWith<$Res> {
  _$StopWatchPageStateCopyWithImpl(this._value, this._then);

  final StopWatchPageState _value;
  // ignore: unused_field
  final $Res Function(StopWatchPageState) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? laps = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      laps: laps == freezed
          ? _value.laps
          : laps // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$StopWatchPageStateCopyWith<$Res>
    implements $StopWatchPageStateCopyWith<$Res> {
  factory _$StopWatchPageStateCopyWith(
          _StopWatchPageState value, $Res Function(_StopWatchPageState) then) =
      __$StopWatchPageStateCopyWithImpl<$Res>;
  @override
  $Res call({double time, List<double> laps});
}

/// @nodoc
class __$StopWatchPageStateCopyWithImpl<$Res>
    extends _$StopWatchPageStateCopyWithImpl<$Res>
    implements _$StopWatchPageStateCopyWith<$Res> {
  __$StopWatchPageStateCopyWithImpl(
      _StopWatchPageState _value, $Res Function(_StopWatchPageState) _then)
      : super(_value, (v) => _then(v as _StopWatchPageState));

  @override
  _StopWatchPageState get _value => super._value as _StopWatchPageState;

  @override
  $Res call({
    Object? time = freezed,
    Object? laps = freezed,
  }) {
    return _then(_StopWatchPageState(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      laps: laps == freezed
          ? _value.laps
          : laps // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_StopWatchPageState implements _StopWatchPageState {
  _$_StopWatchPageState({this.time = 0.00, this.laps = const []});

  @JsonKey()
  @override
  final double time;
  @JsonKey()
  @override
  final List<double> laps;

  @override
  String toString() {
    return 'StopWatchPageState(time: $time, laps: $laps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StopWatchPageState &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.laps, laps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(laps));

  @JsonKey(ignore: true)
  @override
  _$StopWatchPageStateCopyWith<_StopWatchPageState> get copyWith =>
      __$StopWatchPageStateCopyWithImpl<_StopWatchPageState>(this, _$identity);
}

abstract class _StopWatchPageState implements StopWatchPageState {
  factory _StopWatchPageState({double time, List<double> laps}) =
      _$_StopWatchPageState;

  @override
  double get time;
  @override
  List<double> get laps;
  @override
  @JsonKey(ignore: true)
  _$StopWatchPageStateCopyWith<_StopWatchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
