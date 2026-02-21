import 'package:code_capital/core/storage/models/company_model/company_model.dart';
import 'package:code_capital/core/storage/services/company_storage_service.dart';
import 'package:code_capital/features/company/models/company.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  final CompanyStorageService _storage;

  AppCubit({required CompanyStorageService companyStorageService})
    : _storage = companyStorageService,
      super(AppLoadingState());

  void loadGame() {
    final company = _storage.getCompany();

    if (company == null) {
      emit(AppNoCompanyState());
      return;
    }

    emit(
      AppReadyState(
        company: Company(
          id: company.id,
          name: company.name,
          money: company.money,
          week: company.week,
        ),
      ),
    );
  }

  void createCompany(String name) async {
    final startingMoney = 1000;

    final company = Company(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      name: name,
      money: startingMoney,
    );

    await _storage.saveCompany(
      CompanyModel(
        id: company.id,
        name: company.name,
        money: company.money,
        week: company.week,
      ),
    );

    emit(AppReadyState(company: company));
  }
}
