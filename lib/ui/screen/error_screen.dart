import 'package:flutter/material.dart';
import 'package:quick_internet_client/data/quiet_internet_api_error.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error});

  final QuietInternetApiError error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.message),
    );
  }
}
