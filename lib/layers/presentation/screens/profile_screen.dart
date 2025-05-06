import 'package:flutter/material.dart';
import 'package:matule/core/brand/brand_colors.dart';


/// Profile Screen
/// 06.05.2025
/// M9M9Ra
/// ----------------------------------------------
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.accent,
    );
  }
}