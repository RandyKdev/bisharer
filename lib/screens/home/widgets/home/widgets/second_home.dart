import 'package:flutter/material.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/interest_sec/interest_sec.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/normal_sec/jobs_temp.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/recent_sec/recent_sec.dart';

List<Widget> secondHome() {
  return [
    InterestSec('Jobs'),
    Divider(thickness: 5),
    RecentTemp(),
    Divider(thickness: 5),
    InterestSec('Trainings'),
    Divider(thickness: 5),
    JobsTemp(),
    Divider(thickness: 5),
    InterestSec('Competitions'),
    Divider(thickness: 5),
    InterestSec('Concours'),
    Divider(thickness: 5),
    InterestSec('Grants'),
    Divider(thickness: 5),
    InterestSec('Events'),
    SizedBox(height: 20),
  ];
}
