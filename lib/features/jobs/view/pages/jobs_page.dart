import 'package:code_capital/core/cubits/app_top_nav_cubit/app_top_nav_cubit.dart';
import 'package:code_capital/core/widgets/page/app_page_body.dart';
import 'package:code_capital/features/jobs/features/contracts/view/widgets/pages/contract_board_page.dart';
import 'package:code_capital/features/jobs/view/widgets/nav_bar/jobs_page_top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = const [ContractBoardPage(), ContractBoardPage()];

    return BlocProvider<AppTopNavCubit>(
      create: (_) => AppTopNavCubit(),
      child: Scaffold(
        body: AppPageBody(
          child: Column(
            spacing: 12,
            children: [
              JobsPageTopNavBar(),
              Expanded(
                child: BlocConsumer<AppTopNavCubit, int>(
                  listener: (_, _) {},
                  builder: (context, state) => pages[state],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
