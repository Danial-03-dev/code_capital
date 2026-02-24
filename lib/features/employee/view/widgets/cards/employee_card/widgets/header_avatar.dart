part of '../employee_card.dart';

class _HeaderAvatar extends StatelessWidget {
  const _HeaderAvatar();

  @override
  Widget build(BuildContext context) {
    const double size = 64;

    return const SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(child: Icon(Icons.person, size: 48)),
    );
  }
}
