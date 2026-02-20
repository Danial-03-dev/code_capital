import 'dart:async';

import 'package:bloc/bloc.dart';

class GameLoopCubit extends Cubit<int> {
  GameLoopCubit() : super(0);

  Timer? _timer;

  void start() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      emit(state + 1);
    });
  }

  void stop() {
    _timer?.cancel();
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
