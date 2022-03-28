import 'package:calculate_app/components/calculate_card.dart';
import 'package:calculate_app/components/value_card.dart';
import 'package:calculate_app/models/home_page_state.dart';
import 'package:calculate_app/view_models/home_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDisposeで再度画面を開いた時に初期状態で表示するようにする
// 例えば画面遷移時にWidgetと共にそのWidgetが参照するクラス（例:ViewModel)のインスタンスも同時に破棄できる
final homePageNotifierProvider =
    StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>((ref) {
  // Readerを渡している なくても良い
  // HomePageNotifierのメソッドを使用できるようになった
  return HomePageNotifier(ref.read);
});

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HomePageState 値を描画する
    final pageState = ref.watch(homePageNotifierProvider);
    // HomePageStateNotifier　クラスのメソッドを使える
    final pageStateNotifier = ref.watch(homePageNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATE APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          valueCard(
            '${pageState.mainCount}',
            pageStateNotifier.increaseMainCount,
            pageStateNotifier.decreaseMainCount,
          ),
          valueCard(
            '${pageState.subCount}',
            pageStateNotifier.increaseSubCount,
            pageStateNotifier.decreaseSubCount,
          ),
          Column(
            children: [
              calculateCard(() {
                {
                  pageStateNotifier.multiplication(
                    pageState.mainCount.toInt(),
                    pageState.subCount.toInt(),
                  );
                }
              }, pageState.mulCount.toStringAsFixed(1), '掛け算'),
              const SizedBox(height: 20.0),
              calculateCard(() {
                {
                  pageStateNotifier.division(
                    pageState.mainCount.toDouble(),
                    pageState.subCount.toDouble(),
                  );
                }
              }, pageState.divCount.toStringAsFixed(1), '割り算'),
            ],
          )
        ],
      ),
    );
  }
}
