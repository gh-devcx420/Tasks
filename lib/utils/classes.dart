import 'package:flutter/material.dart';
import 'package:tasks/utils/lists.dart';
import 'package:tasks/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

//************************Stateless Widgets************************
///*****Elements*****
//1. Button Widget used to make a Double Icon Button.
class DoubleIconButton extends StatelessWidget {
  const DoubleIconButton({
    Key? key,
    required this.searchTapped,
    required this.notificationsTapped,
  }) : super(key: key);

  final Function() searchTapped;
  final Function() notificationsTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: searchTapped,
            child: const Icon(
              Icons.search_sharp,
              size: 30,
              color: Colors.black,
            ),
          ),
          Container(
            width: 2,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          GestureDetector(
            onTap: notificationsTapped,
            child: const Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

//2. Widget used to build individual tabs in the Homescreen.
class TasksTabs extends StatelessWidget {
  const TasksTabs({
    super.key,
    required this.tabName,
  });

  final String tabName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 100,
      child: Center(
        child: Text(
          tabName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            //color: Colors.black,
          ),
        ),
      ),
    );
  }
}

//*****Sections*****
//1. Row Widget used to make a Header Row.
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.dashboard,
              size: 30,
              color: Colors.black,
            ),
          ),
          Text(
            'Tasks',
            style: GoogleFonts.ptSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: kPrimaryColour,
              borderRadius: BorderRadius.circular(25),
            ),
            child: DoubleIconButton(
              searchTapped: () {},
              notificationsTapped: () {},
            ),
          ),
        ],
      ),
    );
  }
}

//2. Row Widget used to display a welcome greeting.
class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Here are the updates.',
                style: GoogleFonts.ptSans(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//3. Widget used to display the contents inside All Tasks Tab.
class AllTasksBody extends StatelessWidget {
  const AllTasksBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(
            left: 5,
            top: 8,
            right: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: kPrimaryColour,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    taskList[index],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      //color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  '${index + 1}',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
