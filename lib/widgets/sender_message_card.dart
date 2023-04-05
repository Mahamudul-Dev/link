import 'package:flutter/material.dart';
import 'package:link/styles/link_colors.dart';

class SenderMessegeCard extends StatelessWidget {
  final String message;
  final String time;
  const SenderMessegeCard({required this.message, required this.time})
      : super();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: deepGrey,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 30, top: 5, bottom: 20),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(fontSize: 13, color: platinum),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
