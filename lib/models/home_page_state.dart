import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ファイル名.freezed.dartでファイルを作成する
part 'home_page_state.freezed.dart';

@freezed // 不変なクラスを作成
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(0) int mainCount,
    @Default(0) int subCount,
    @Default(0) int mulCount,
    @Default(0) double divCount,
  }) = _HomePageState;
}
