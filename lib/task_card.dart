import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String taskName;
  final String timePeriod;
  final bool isHighlighted;

  const TaskCard({
    super.key,
     this.taskName="Opening Ceremony",
     this.timePeriod="9:00 - 10:00",
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
      decoration: BoxDecoration(
        color: isHighlighted ? Color(0xFFB2E3FF) : Color(0xFF87CFF8),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            child: Text(
              taskName,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            timePeriod,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
