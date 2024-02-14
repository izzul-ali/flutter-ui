import 'package:flutter/material.dart';

class Doctor {
  final String name;
  final String specialist;
  final String picture;
  final Color color;

  const Doctor({
    required this.name,
    required this.specialist,
    required this.picture,
    required this.color,
  });
}

const List<Doctor> doctors = [
  Doctor(
    name: 'Dr. Jenny Wilson',
    specialist: 'Dental Surgeon',
    picture: 'assets/images/Doctor-1.png', // from remote url
    color: Colors.orange,
  ),
  Doctor(
    name: 'Dr. Kristin Watson',
    specialist: 'General Dentist',
    picture: 'assets/images/Doctor-2.png',
    color: Colors.teal,
  ),
  Doctor(
    name: 'Dr. Angeline Alga',
    specialist: 'Dental Surgeon',
    picture: 'assets/images/Doctor-1.png',
    color: Colors.red,
  ),
  Doctor(
    name: 'Dr. Jessica Niana',
    specialist: 'General Dentist',
    picture: 'assets/images/Doctor-2.png',
    color: Colors.green,
  ),
];

const List<String> specialist = [
  'Dental Surgeon',
  'Aesthetic Surgeon',
  'General Dentist',
];

const List<Map<String, dynamic>> dateTime = [
  {
    'day': 'Sun',
    'date': 14,
  },
  {
    'day': 'Mon',
    'date': 15,
  },
  {
    'day': 'Tue',
    'date': 16,
  },
  {
    'day': 'Wed',
    'date': 17,
  },
  {
    'day': 'Thu',
    'date': 18,
  },
];
