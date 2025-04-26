import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this._expense, {super.key});

  final Expense _expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _expense.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text("\$${_expense.amount.toStringAsFixed(2)}"),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[_expense.category]),
                    const SizedBox(width: 8),
                    Text(_expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
