import 'package:flutter/material.dart';

class DailyNewsView extends StatelessWidget {
  const DailyNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    _buildAppBar() {
      return AppBar(
        title: Text(
          'Daily News',
          style: TextStyle(color: Colors.black),
        ),
      );
    }

    return Scaffold(
      appBar: _buildAppBar(),
    );
  }
}
