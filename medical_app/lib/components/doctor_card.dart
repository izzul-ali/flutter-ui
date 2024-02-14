import 'package:flutter/material.dart';
import 'package:medical_app/constant/color.dart';
import 'package:medical_app/model/doctor.dart';
import 'package:medical_app/screens/detail_screen.dart';

class DoctorCard extends StatelessWidget {
  final bool disableTap;
  final Doctor doctor;

  const DoctorCard({
    super.key,
    required this.doctor,
    this.disableTap = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (!disableTap)
          {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailScreen(doctor: doctor),
              ),
            )
          }
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 97,
        child: Card(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: 97,
                decoration: BoxDecoration(
                  color: doctor.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(doctor.picture),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: titleTextColor,
                      ),
                    ),
                    Text(
                      doctor.specialist,
                      style: TextStyle(
                        fontSize: 12,
                        color: subtitleTextColor,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffFFBB0E),
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 12,
                            color: subtitleTextColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
