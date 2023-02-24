import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//**************Stateful Widgets**************
//Widget used to display the tasks in a scrollable list form (Called in TodoHome)

//**************Stateless Widgets**************

//Button Widget used to make a Double Icon Button.
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
            color: Colors.grey,
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

//Row Widget used to make a Header Row.
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
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(25),
            ),
            child: DoubleIconButton(
             searchTapped: (){},
             notificationsTapped: (){},
            ),
          ),
        ],
      ),
    );
  }
}

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
