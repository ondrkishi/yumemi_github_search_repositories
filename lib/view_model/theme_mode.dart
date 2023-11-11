import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

///
/// テーマモード（ダークモード/ライトモード）の状態を持つクラス
///

@riverpod
class ThemeModeState extends _$ThemeModeState {
  @override
  ThemeMode build() => ThemeMode.system;

  /// テーマモードを更新
  void update(ThemeMode mode) => state = mode;
}
