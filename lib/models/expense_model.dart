import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food : Icons.fastfood_rounded,
  Category.travel : Icons.flight_takeoff_rounded,
  Category.leisure : Icons.movie_creation_rounded,
  Category.work : Icons.work
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}