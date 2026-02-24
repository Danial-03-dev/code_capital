import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/widgets/backgrounds/glow_background_container.dart';
import 'package:code_capital/core/widgets/display/stat_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/card_header.dart';
part 'widgets/card_data.dart';

class GameCompanyInfoCard extends StatelessWidget {
  const GameCompanyInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 256,
      width: 256,
      child: Card(
        elevation: 2,
        child: GlowBackgroundContainer(
          borderRadius: 12,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_CardHeader(), _CardData()],
            ),
          ),
        ),
      ),
    );
  }
}
