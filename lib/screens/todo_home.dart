import 'package:flutter/material.dart';
import 'package:tasks/utils/classes.dart';


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
        length: 3,
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
                  //color: Colors.grey[100],
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[100],
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor:Colors.black54,
                  tabs: const [
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            //color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            //color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            //color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child:  TabBarView(
                  children: [
                    Center(
                      child: Text(
                        "Today",
                      ),
                    ),Center(
                      child: Text(
                        "Upcoming",
                      ),
                    ),Center(
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