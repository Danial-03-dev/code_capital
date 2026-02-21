import 'package:code_capital/core/storage/models/company_model/company_model.dart';
import 'package:hive_ce/hive.dart';

class CompanyStorageService {
  final Box<CompanyModel> _box = Hive.box<CompanyModel>('company_box');
  final _companyKey = 'company';

  CompanyModel? getCompany() {
    return _box.get(_companyKey);
  }

  Future<void> saveCompany(CompanyModel company) async {
    await _box.put(_companyKey, company);
  }

  Future<void> deleteCompany() async {
    await _box.delete(_companyKey);
  }
}
