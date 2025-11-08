import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
