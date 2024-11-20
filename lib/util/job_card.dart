import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String imagePath;
  final String jobTitle;
  final int hourlyRate;
  const JobCard(
      {super.key,
      required this.companyName,
      required this.imagePath,
      required this.jobTitle,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // comnay image
                  Image.asset(
                    imagePath,
                    height: 50,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                        ),
                        padding: const EdgeInsets.all(4),
                        child: const Text(
                          'Part Time',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  jobTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text('\$'+hourlyRate.toString()+'/hr')
            ],
          ),
        ),
      ),
    );
  }
}
