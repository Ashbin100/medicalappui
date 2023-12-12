import 'package:flutter/material.dart';

class categoryCard  extends StatelessWidget {
  final iconPath;
  final String categoryName;
  const categoryCard ({
    required this.iconPath,
    required this.categoryName,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(10)
        ),
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(iconPath,height: 40,),
                            const SizedBox(width: 5,),
                            Text(categoryName),
                          ],
                        ),
                      ),
                    ),
    );
  }
}