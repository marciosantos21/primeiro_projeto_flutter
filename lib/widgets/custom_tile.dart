import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Color color;
  final Widget leading;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;

  const CustomTile({
    super.key,
    required this.color,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final gap = SizedBox(height: 8, width: 18,);

    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color, 
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leading,
              gap,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title,
                  gap,
                  subTitle,
                ],
              ),
            ],
          ),
          trailing
        ],
      ),
    );
  }
}