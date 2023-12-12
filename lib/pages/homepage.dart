import 'package:flutter/material.dart';
import 'package:medicalappui/utils/categories.dart';
import 'package:medicalappui/utils/doctorcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        //appbar
        body: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RichText(
                      text: const TextSpan(
                      text: 'Hello ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children:  <TextSpan>[
                        TextSpan(text: '\nWelcome Everyone', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      ],
                      ),
                    )
                    ],
                  ),
                ),


                 //right profile icon
                Container(
              height: 25,
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.person)),
              ],
            ),

            //card-> how do you feel
            const SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
                
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.deepPurple,
                        child: const Image(
                           fit: BoxFit.cover,
                          image: NetworkImage('https://plus.unsplash.com/premium_photo-1673953509975-576678fa6710?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZG9jdG9yc3xlbnwwfHwwfHx8MA%3D%3D')),
                      ),
                    ),
            
            const SizedBox(width: 15,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('How do you feel?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 8,),
                        const Text('Fill out your medical card right now'),
                        const SizedBox(height: 8,),
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[400],
                            borderRadius: BorderRadius.circular(15)
                          ),
                          
                          child: const Center(child: Text('Get Started', style: TextStyle(color: Colors.white),))),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25,),
           //searchbar

           Padding(
             padding: const EdgeInsets.symmetric(horizontal:20.0),
             child: Container(
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(15)
              ),
               child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'How can I help you',
                  hintStyle: TextStyle(color: Colors.black),
                ),
               ),
             ),
           ),

           //horizontal listview -> categories: detist,surgon etc...

           Container(
            height: 100,
            
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                categoryCard(iconPath: 'lib/icons/tooth.png', categoryName: 'Dentist'),
                categoryCard(iconPath: 'lib/icons/medicine.png', categoryName: 'Medicine'),
                categoryCard(iconPath: 'lib/icons/surgeon.png', categoryName: 'Surgon')
              ],
            ),
           ),

           //doctor list

           const SizedBox(height: 25,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Doctor's List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Container(
                  color: Colors.grey[100],
                  child: const Text('See All',style: TextStyle(color: Colors.grey, fontSize: 14),))
              ],
             ),
           ),

            const SizedBox(height: 25,),
           Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              doctorDetails(imagePath: 'lib/images/doctor2.jpg', rating: '3.5', doctorName: 'Asbin khanal', specialist: 'cardiologist'),
              doctorDetails(imagePath: 'lib/images/doctor3.jpg', rating: '4.5', doctorName: 'Asmita khanal', specialist: 'therapist'),
              doctorDetails(imagePath: 'lib/images/doctor1.jpg', rating: '2.5', doctorName: 'Apil khanal', specialist: 'Dentist'),
            ],
           ))
          ],
        ),
    
      ),
    );
  }
}