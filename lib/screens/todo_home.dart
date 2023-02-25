import 'package:flutter/material.dart';
import 'package:tasks/utils/classes.dart';
import 'package:tasks/utils/constants.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const Header(),
              const Greeting(),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TabBar(
                    physics: const BouncingScrollPhysics(),
                    isScrollable: true,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColour,
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black54,
                    tabs: const [
                      TasksTabs(tabName: "All Tasks"),
                      TasksTabs(tabName: "Today"),
                      TasksTabs(tabName: "Upcoming"),
                      TasksTabs(tabName: "Completed"),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    AllTasksBody(),
                    Center(
                      child: Text(
                        "Today",
                      ),
                    ),
                    Center(
                      child: Text(
                        "Upcoming",
                      ),
                    ),
                    Center(
                      child: Text(
                        "Completed",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
