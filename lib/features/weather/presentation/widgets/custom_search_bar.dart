import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_living/core/consts/consts.dart';
import 'package:smart_living/core/theme/theme.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    required this.hintText,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.transparent,
        border: Border.all(color: theme.textBlack.withOpacity(0.1), width: 2),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          SvgPicture.asset(
            width: 23,
            height: 23,
            SvgAssets.search,
            color: theme.textBlack.withOpacity(0.5),
          ),
          const SizedBox(width: 9),
          Expanded(
            child: TextField(
              style: theme.emphasisBody,
              onChanged: onChanged,
              cursorColor: theme.textBlack,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: theme.emphasisBody.copyWith(
                  color: theme.textBlack.withOpacity(
                    0.28,
                  ),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
