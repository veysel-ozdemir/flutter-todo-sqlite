import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sqflite_demo/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CommonTextField(
                title: 'Task Title',
                hintText: 'Task Title',
              ),
              const Gap(16),
              const SelectCategory(),
              const Gap(16),
              const SelectDateTime(),
              const Gap(16),
              const CommonTextField(
                title: 'Note',
                hintText: 'Task note',
                maxLines: 6,
              ),
              const Gap(60),
              ElevatedButton(
                onPressed: () {},
                child: const DisplayWhiteText(text: 'Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
