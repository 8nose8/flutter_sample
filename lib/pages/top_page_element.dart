import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_page_element.freezed.dart';

@freezed
class TopPageElement with _$TopPageElement {
  factory TopPageElement({
    required String title,
    required String route,
  }) = _TopPageElement;
}
