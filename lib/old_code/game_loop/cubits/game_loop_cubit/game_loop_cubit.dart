import 'dart:async';

import 'package:bloc/bloc.dart';

class GameLoopCubit extends Cubit<int> {
  GameLoopCubit() : super(0);

  Timer? _timer;

  void start() {
    if (_timer != null) return;

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(state + 1);
    });
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
