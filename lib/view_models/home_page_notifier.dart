import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:calculate_app/models/home_page_state.dart';

// StateNotifierクラスは「state変数」を使用して状態を管理することができる
class HomePageNotifier extends StateNotifier<HomePageState> {
  HomePageNotifier(this.read) : super(const HomePageState());
  final Reader read;

  void increaseMainCount() {
    // HomePageStateは不変クラスなのでcopyWithでコピーを作成する
    state = state.copyWith(mainCount: state.mainCount + 1);
  }

  void decreaseMainCount() {
    // HomePageStateは不変クラスなのでcopyWithでコピーを作成する
    state = state.copyWith(mainCount: state.mainCount - 1);
  }

  void increaseSubCount() {
    state = state.copyWith(subCount: state.subCount + 1);
  }

  void decreaseSubCount() {
    // HomePageStateは不変クラスなのでcopyWithでコピーを作成する
    state = state.copyWith(mainCount: state.mainCount - 1);
  }

  void resetAllCount() {
    state = state.copyWith(mainCount: 0, subCount: 0);
  }

  void multiplication(int main, int sub) {
    state = state.copyWith(mulCount: main * sub);
  }

  void division(double main, double sub) {
    state = state.copyWith(divCount: main / sub);
  }
}
