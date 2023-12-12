import 'package:flutter/material.dart';

class doctorDetails extends StatelessWidget {
  final String imagePath;
  final String rating;
  final String doctorName;
  final String specialist;
  const doctorDetails({
    required this.imagePath,
    required this.rating,
    required this.doctorName,
    required this.specialist,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
color: Colors.deepPurple[100],
borderRadius: BorderRadius.circular(12),
        ),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //picture of the doctor
                  ClipRRect(
                    borderRadius:BorderRadius.circular(12) ,
                    child: Image.asset(imagePath,
                    
                    height: 100,
                    ),
                  ),
                   const SizedBox(height: 20,),
                  //rating of doctor
                   Row(
                    children: [
                      const Icon(Icons.star,color: Colors.amber,),
                      Text(rating,style: const TextStyle( fontSize: 18)),
                    ],
                  ),
                   const SizedBox(height: 20,),
    
                  //doctor name
                  Text(doctorName,style:const  TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  const SizedBox(height: 20,),
                  //doctor title
                  Text(specialist,style: const TextStyle( fontSize: 18),)
                ],
              ),
             ),
    );
  }
}