import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFF1A1A1A), 
        systemNavigationBarColor: Color(0xFF1E1E1E), 
        systemNavigationBarIconBrightness: Brightness.light 
        ),
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFF1A1A1A),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
      IconButton(
        onPressed: () {
          // Profile button action
        },
        icon: const Icon(
          Iconsax.user,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {
          // Notification button action
        },
        icon: const Icon(
          Iconsax.notification,
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 8),
    ],
              ),
              backgroundColor:Color(0xFF1A1A1A),
              body: SafeArea(
                child: Column(
                 children: [
                  Row(
                  children: 
                  [Container(
                    width: 44, 
                    height: 44, 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                       color: Color(0xFF2A2A2A),
                       border: Border.all(
                        color: Color(0xFF3A3A3A),
                        width:1, 
                        ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/image/user.jpg",
                            fit: BoxFit.cover,
                           ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ], 
      ),
    ); 
  }
}
