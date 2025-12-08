import '../models/data_layer.dart';
import '../provider/plan_provider.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final int planIndex; 

  const PlanScreen({super.key, required this.planIndex});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get currentPlan => PlanProvider.of(context).value[widget.planIndex];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentPlan.name),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ), 
      body: Column(
        children: [
          Expanded(child: _buildList()),
          SafeArea(child: Text(currentPlan.completenessMessage)),
        ],
      ),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  Widget _buildAddTaskButton() {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan updatedPlan = Plan(
          name: currentPlan.name,
          tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
        );
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[widget.planIndex] = updatedPlan;
      },
    );
  }

  Widget _buildList() {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: currentPlan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(currentPlan.tasks[index], index),
    );
  }

  Widget _buildTaskTile(Task task, int index) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          Plan updatedPlan = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: task.description,
                complete: selected ?? false,
              ),
          );
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[widget.planIndex] = updatedPlan;
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan updatedPlan = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: text,
                complete: task.complete,
              ),
          );
          
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[widget.planIndex] = updatedPlan;
        },
      ),
    );
  }
}