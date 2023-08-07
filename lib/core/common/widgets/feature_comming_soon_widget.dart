import 'package:flutter/material.dart';

class FeatureComingSoonWidget extends StatelessWidget {
  const FeatureComingSoonWidget({super.key, this.feature});
  final String? feature;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$feature feature is coming soon'),
    );
  }
}
