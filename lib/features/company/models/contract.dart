class Contract {
  final int requiredSkill;
  final int complexity;
  final int reward;

  int progress;
  bool isCompleted;

  Contract({
    required this.requiredSkill,
    required this.complexity,
    required this.reward,

    this.progress = 0,
    this.isCompleted = false,
  });

  void reset() {
    progress = 0;
    isCompleted = false;
  }

  void complete() {
    isCompleted = true;
  }
}
