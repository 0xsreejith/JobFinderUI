import 'package:flutter/material.dart';
import 'package:jobtutorial/models/recent_jobs.dart';
import 'package:jobtutorial/util/job_card.dart';
import 'package:jobtutorial/util/recent_job_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<List<dynamic>> jobForYou = [
    ['lib/icons/apple.png', 'Apple', 'UI Designer', 90],
    ['lib/icons/google.png', 'Google', 'Flutter Developer', 80],
    ['lib/icons/nike.png', 'Nike', 'UI Designer', 60],
    ['lib/icons/uber.png', 'Uber', 'UI Designer', 80],
  ];

  final List<RecentJobs> recentJobs=[
    RecentJobs(companyImage: 'lib/icons/uber.png', companyName: 'Uber', jobTitle: 'Flutter Developer', hourlyRate: 70),
     RecentJobs(companyImage: 'lib/icons/google.png', companyName: 'Google', jobTitle: 'Django Developer', hourlyRate: 70),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Discover a New Path',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset('lib/icons/search.png'),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for a job...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    color: Colors.white,
                    'lib/icons/prefrences.png',
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'For You',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobForYou.length,
              itemBuilder: (context, index) {
                return JobCard(
                  imagePath: jobForYou[index][0],
                  companyName: jobForYou[index][1],
                  jobTitle: jobForYou[index][2],
                  hourlyRate: jobForYou[index][3],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Recently Added',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25
              ),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  final job = recentJobs[index];
                  return RecentJobCard(
                      companyImage: job.companyImage,
                      jobTitle: job.jobTitle,
                      companyName: job.companyName,
                      hourlyRate: job.hourlyRate
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
