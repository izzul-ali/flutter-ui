import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/components/categories.dart';
import 'package:medical_app/components/doctor_card.dart';
import 'package:medical_app/constant/color.dart';
import 'package:medical_app/model/doctor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.sizeOf(context).height * 0.4,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(32),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hi, Steven',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Badge(
                        label: const Text('10'),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xff66B2FF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child:
                              SvgPicture.asset('assets/icons/Notification.svg'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Let’s find your top doctor!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Spacer(flex: 3),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset(
                        'assets/icons/Search.svg',
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minHeight: 50,
                      minWidth: 50,
                    ),
                    hintText: 'Search Here',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Categories(),
                const SizedBox(height: 20),
                ...doctors
                    .map(
                      (Doctor doctor) => DoctorCard(doctor: doctor),
                    )
                    .toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
