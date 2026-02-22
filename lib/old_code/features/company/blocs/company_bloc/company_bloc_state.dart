part of 'company_bloc.dart';

class CompanyBlocState {
  final Company company;
  final Contract contract;

  const CompanyBlocState({required this.company, required this.contract});

  CompanyBlocState copyWith({Company? company, Contract? contract}) {
    return CompanyBlocState(
      company: company ?? this.company,
      contract: contract ?? this.contract,
    );
  }
}
