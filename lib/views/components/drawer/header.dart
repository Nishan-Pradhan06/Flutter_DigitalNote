import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: const Text(
        'Computer Science',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      accountEmail: const Text(
        'Grade 12 New Curriculam Course Notes',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        selectionColor: Colors.black,
      ),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset(
            'images/appLogo.png',
            width: 95,
            height: 95,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.lightBlue,
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1635350181304-be3f00f5af76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
