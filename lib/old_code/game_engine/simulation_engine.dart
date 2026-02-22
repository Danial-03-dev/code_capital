import 'package:code_capital/features/company/models/company.dart';
import 'package:code_capital/features/company/models/contract.dart';

class SimulationEngine {
  void processTick({required Company company, required Contract contract}) {
    if (contract.isCompleted) return;

    final totalSkill = company.employees
        .map((employ) => employ.programmingSkill)
        .reduce((sum, skill) => sum + skill);

    if (totalSkill < contract.requiredSkill) {
      return; // Not skilled enough
    }

    contract.progress += totalSkill;

    if (contract.progress >= contract.complexity) {
      contract.complete();
      company.money += contract.reward;
    }
  }

  void resetContract(Contract contract) {
    contract.reset();
  }
}
