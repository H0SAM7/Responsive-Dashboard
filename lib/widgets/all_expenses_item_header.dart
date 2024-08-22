
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, required this.color});
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 60,
              maxWidth: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration:  const ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(image)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.571 * 2,
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: color,
          ),
        ),
      ],
    );
  }
}
