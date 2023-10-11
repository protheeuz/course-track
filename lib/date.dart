import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormatWaktu extends StatelessWidget {
  const FormatWaktu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Format Waktu"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            DateFormat('EEEE, d MMMM y').format(DateTime.now()),
          ),
        ));
  }
}
