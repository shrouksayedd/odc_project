import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card({
   required String? lectureSubject,
  required String? lectureDate,
  required lectureStartTime,
  required String? lectureEndTime,
})=> Card(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
  ),
  elevation: 5,
  child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: 4.0,
              left:  4.0,
              top: 4.0,
              bottom: 12.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$lectureSubject',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer_rounded,
                    color: Color.fromARGB(255, 90, 90, 90),
                  ),
                  Text(
                    "2hrs",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Lecture Day',
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 169, 169, 169),
                        fontWeight: FontWeight.w700,
                        fontSize: 12
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        '$lectureDate',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ],
                  )],
              ),
              Column(
                children: [
                  Text(
                    'Start Time',
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 169, 169, 169),
                        fontWeight: FontWeight.w700,
                        fontSize: 12
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Color.fromARGB(255, 154, 213, 134),
                      ),
                      Text(
                        '${lectureStartTime}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ],
                  )],
              ),
              Column(
                children: [
                  Text(
                    'End Time',
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 169, 169, 169),
                        fontWeight: FontWeight.w700,
                        fontSize: 12
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Color.fromARGB(255, 230, 140, 140),
                      ),
                      Text(
                        '$lectureEndTime}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ],
                  )],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);



