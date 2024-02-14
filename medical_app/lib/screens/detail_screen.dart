import 'package:flutter/material.dart';
import 'package:medical_app/components/doctor_card.dart';
import 'package:medical_app/constant/color.dart';

import '../model/doctor.dart';

class DetailScreen extends StatelessWidget {
  final Doctor doctor;

  const DetailScreen({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Detail Doctor',
          style: TextStyle(
            color: titleTextColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DoctorCard(
            doctor: doctor,
            disableTap: true,
          ),
          const SizedBox(height: 20),
          Text(
            'Biography',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: subtitleTextColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              color: textColor,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Specialist',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: subtitleTextColor,
            ),
          ),
          const SizedBox(height: 20),
          _renderSpecialistItems(),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: titleTextColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'July',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _renderScheduleDate(),
          const SizedBox(height: 20),
          const Text(
            'Time',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: titleTextColor,
            ),
          ),
          const SizedBox(height: 20),
          _renderScheduleTime(),
          const SizedBox(height: 100),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          child: const Text(
            'Book Appointment',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _renderScheduleTime() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ['12:20 AM', '15:32 AM', '17:43 AM']
            .map(
              (String v) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 14,
                  ),
                  decoration: BoxDecoration(
                    color: v == '15:32 AM' ? primaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Text(
                    v,
                    style: TextStyle(
                      color: v == '15:32 AM' ? Colors.white : textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  SingleChildScrollView _renderScheduleDate() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: dateTime
            .map((v) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color:
                          (v['date'] ?? 0) == 16 ? primaryColor : Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          v['date']?.toString() ?? '',
                          style: TextStyle(
                            color: (v['date'] ?? 0) == 16
                                ? Colors.white
                                : textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          v['day'] ?? '',
                          style: TextStyle(
                            color: (v['date'] ?? 0) == 16
                                ? Colors.white
                                : subtitleTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  SingleChildScrollView _renderSpecialistItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: specialist
            .map(
              (v) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    v,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
