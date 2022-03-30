// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_page_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopPageElementTearOff {
  const _$TopPageElementTearOff();

  _TopPageElement call({required String title, required String route}) {
    return _TopPageElement(
      title: title,
      route: route,
    );
  }
}

/// @nodoc
const $TopPageElement = _$TopPageElementTearOff();

/// @nodoc
mixin _$TopPageElement {
  String get title => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopPageElementCopyWith<TopPageElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPageElementCopyWith<$Res> {
  factory $TopPageElementCopyWith(
          TopPageElement value, $Res Function(TopPageElement) then) =
      _$TopPageElementCopyWithImpl<$Res>;
  $Res call({String title, String route});
}

/// @nodoc
class _$TopPageElementCopyWithImpl<$Res>
    implements $TopPageElementCopyWith<$Res> {
  _$TopPageElementCopyWithImpl(this._value, this._then);

  final TopPageElement _value;
  // ignore: unused_field
  final $Res Function(TopPageElement) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TopPageElementCopyWith<$Res>
    implements $TopPageElementCopyWith<$Res> {
  factory _$TopPageElementCopyWith(
          _TopPageElement value, $Res Function(_TopPageElement) then) =
      __$TopPageElementCopyWithImpl<$Res>;
  @override
  $Res call({String title, String route});
}

/// @nodoc
class __$TopPageElementCopyWithImpl<$Res>
    extends _$TopPageElementCopyWithImpl<$Res>
    implements _$TopPageElementCopyWith<$Res> {
  __$TopPageElementCopyWithImpl(
      _TopPageElement _value, $Res Function(_TopPageElement) _then)
      : super(_value, (v) => _then(v as _TopPageElement));

  @override
  _TopPageElement get _value => super._value as _TopPageElement;

  @override
  $Res call({
    Object? title = freezed,
    Object? route = freezed,
  }) {
    return _then(_TopPageElement(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopPageElement implements _TopPageElement {
  _$_TopPageElement({required this.title, required this.route});

  @override
  final String title;
  @override
  final String route;

  @override
  String toString() {
    return 'TopPageElement(title: $title, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopPageElement &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.route, route));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(route));

  @JsonKey(ignore: true)
  @override
  _$TopPageElementCopyWith<_TopPageElement> get copyWith =>
      __$TopPageElementCopyWithImpl<_TopPageElement>(this, _$identity);
}

abstract class _TopPageElement implements TopPageElement {
  factory _TopPageElement({required String title, required String route}) =
      _$_TopPageElement;

  @override
  String get title;
  @override
  String get route;
  @override
  @JsonKey(ignore: true)
  _$TopPageElementCopyWith<_TopPageElement> get copyWith =>
      throw _privateConstructorUsedError;
}
