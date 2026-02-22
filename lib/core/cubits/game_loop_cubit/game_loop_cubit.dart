import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class GameLoopCubit extends Cubit<int> {
  Timer? _timer;

  GameLoopCubit() : super(0);

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

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
}
