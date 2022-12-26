import 'package:flutter/material.dart';
import 'package:web_one/constants/style.dart';
import 'package:web_one/widgets/custom_text.dart';

class InfoCardsSmallScreen extends StatelessWidget {
  final String? title;
  final String? value;
  final bool? isActive;
  final Function()? ontap;

  const InfoCardsSmallScreen({super.key, this.title, this.value, this.isActive = false, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive! ? active : lightGrey, width: .5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title!,
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: isActive! ? active : lightGrey,
              ),
              CustomText(
                text: value!,
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: isActive! ? active : lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}