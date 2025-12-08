import 'package:flutter/material.dart';
import './views/plan_creator_screen.dart'; // Import screen baru
import './provider/plan_provider.dart';
import './models/data_layer.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      // Inisialisasi dengan List kosong
      notifier: ValueNotifier<List<Plan>>(const []), 
      child: MaterialApp(
        title: 'State Management App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanCreatorScreen(), // Home diganti ke PlanCreatorScreen
      ),
    );
  }
}