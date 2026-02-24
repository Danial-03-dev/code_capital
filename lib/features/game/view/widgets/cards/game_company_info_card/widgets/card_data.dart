part of '../game_company_info_card.dart';

class _CardData extends StatelessWidget {
  const _CardData();

  @override
  Widget build(BuildContext context) {
    final company = context.watch<AppCubit>().getCompany();

    final totalEmployees = company.employees.length;
    final maxEmployeesLimit = company.maxEmployees;
    final rating = company.rating;
    final maxRating = 100;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatRow(
          label: 'Employees',
          current: totalEmployees.toString(),
          max: maxEmployeesLimit.toString(),
          toolTip:
              'Workforce capacity. More employees increase delivery efficiency.',
        ),
        StatRow(
          label: 'Rating',
          current: rating.toString(),
          max: maxRating.toString(),
          toolTip:
              'Corporate reputation. Higher reputation attracts premium clients.',
        ),
      ],
    );
  }
}
