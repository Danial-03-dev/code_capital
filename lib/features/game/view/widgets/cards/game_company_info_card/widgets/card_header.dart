part of '../game_company_info_card.dart';

class _CardHeader extends StatelessWidget {
  const _CardHeader();

  @override
  Widget build(BuildContext context) {
    final company = context.watch<AppCubit>().getCompany();
    final companyName = company.companyName;

    final textTheme = Theme.of(context).textTheme;

    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleLarge,
        ),
        Text('\$ 112.2k', style: textTheme.displaySmall),
      ],
    );
  }
}
