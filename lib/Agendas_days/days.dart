import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../task_card.dart';

List<Widget> agenda_days = [
  // Day 1
  Column(
    children: [
      TaskCard(
        taskName: "Opening ceremony",
        timePeriod: "08:30 - 09:00",
        isHighlighted: true,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Welcome speech",
        timePeriod: "09:00 - 09:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Coffee break",
        timePeriod: "09:30 - 10:00",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Workshop session",
        timePeriod: "10:00 - 11:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Lunch",
        timePeriod: "11:30 - 12:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Networking session",
        timePeriod: "12:30 - 14:00",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Panel discussion",
        timePeriod: "14:00 - 15:30",
        isHighlighted: false,
      ),
    ],
  ),

  // Day 2
  Column(
    children: [
      TaskCard(
        taskName: "Morning keynote",
        timePeriod: "09:00 - 10:00",
        isHighlighted: true,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Breakout sessions",
        timePeriod: "10:00 - 11:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Coffee break",
        timePeriod: "11:30 - 12:00",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Lunch",
        timePeriod: "12:00 - 13:00",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Tech demonstration",
        timePeriod: "13:00 - 14:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Q&A Session",
        timePeriod: "14:30 - 15:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Networking dinner",
        timePeriod: "19:00 - 21:00",
        isHighlighted: false,
      ),
    ],
  ),

  // Day 3
  Column(
    children: [
      TaskCard(
        taskName: "Final day kick-off",
        timePeriod: "09:00 - 09:30",
        isHighlighted: true,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Expert roundtable",
        timePeriod: "09:30 - 10:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Coffee break",
        timePeriod: "10:30 - 11:00",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Innovation showcase",
        timePeriod: "11:00 - 12:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Lunch",
        timePeriod: "12:30 - 13:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Closing ceremony",
        timePeriod: "13:30 - 14:30",
        isHighlighted: false,
      ),
      SizedBox(height: 15),
      TaskCard(
        taskName: "Awards & recognition",
        timePeriod: "14:30 - 15:30",
        isHighlighted: false,
      ),
    ],
  ),
];
