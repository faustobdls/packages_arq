import 'package:app_packages_theme/app_packages_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const CustomButton({Key? key, required this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.themeData,
      child: Container(
        padding: EdgeInsets.all(10),
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(10),
            color: AppTheme.colorScheme.primary,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                SizedBox(width: 10,),
                Text(
                  label,
                  style: AppTheme.themeData.textTheme.headline3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
