import 'package:flutter/material.dart';

class NotificationModel {
  final String image;
  final String name;
  final String title;
  final Widget action;

  NotificationModel({
    required this.image,
    required this.name,
    required this.title,
    required this.action,
  });
}
