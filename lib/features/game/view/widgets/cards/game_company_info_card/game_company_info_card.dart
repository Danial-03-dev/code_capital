import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/widgets/backgrounds/glow_background_container.dart';
import 'package:code_capital/core/widgets/display/stat_row/stat_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/card_header.dart';
part 'widgets/card_data.dart';

class GameCompanyInfoCard extends StatelessWidget {
  final double? height;

  const GameCompanyInfoCard({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 256,
      child: const Card(
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
