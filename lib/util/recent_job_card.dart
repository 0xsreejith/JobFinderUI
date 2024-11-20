import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyImage;
  final String companyName;
  final String jobTitle;
  final int hourlyRate;
  const RecentJobCard(
      {super.key,
      required this.companyImage,
      required this.companyName,
      required this.jobTitle,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white)
            , color: Colors.grey[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  child: Image.asset(
                    companyImage,
                    height: 30,
                  )),
            ),
            Column(
              children: [
                Text(
                  jobTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(companyName)
              ],
            ),
            Container(
              width: 60,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green
              ),
              child: Text('\$'+hourlyRate.toString()+'/hr'))
          ],
        ),
      ),
    );
  }
}
