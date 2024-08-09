import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          ResponsiveBreakpoints.of(context).isMobile ? 'MOBILE' : 'DESKTOP',
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.deepPurple.shade200,
            ),
          ),
          Expanded(
            child: ListView.builder(
              // padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: 120,
                  color: Colors.deepPurple.shade200,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
