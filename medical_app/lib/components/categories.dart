import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/color.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            color: titleTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              _categoryItem(icon: SvgPicture.asset('assets/icons/Heart.svg')),
              const SizedBox(width: 40),
              _categoryItem(icon: Image.asset('assets/icons/Pil.png')),
              const SizedBox(width: 40),
              _categoryItem(
                  icon: Image.asset('assets/icons/Dentist.png'),
                  isActive: true),
              const SizedBox(width: 40),
              _categoryItem(
                  icon: SvgPicture.asset('assets/icons/Pregnant.svg')),
              const SizedBox(width: 40),
            ],
          ),
        )
      ],
    );
  }

  GestureDetector _categoryItem({
    required Widget icon,
    bool isActive = false,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: icon,
      ),
    );
  }
}
