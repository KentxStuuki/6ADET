/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198-6ADET
Activity Name: Midterm Quiz Lab
*/

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Midterm Quiz Lab',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 4, 75),
        centerTitle: false,
        title: const Text('Genshin Impact',
        style: TextStyle(color: Color.fromARGB(255, 222, 192, 131), 
        fontWeight: FontWeight.bold ),),
      ),
      body: Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(child: Column(
          children: <Widget> [
            Container(
                    height: 100.0,
                    width: 400.0,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 75, 4, 123),
                      borderRadius: BorderRadius.circular(15.0)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      const Text(
                          "Raiden Shogun",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'SmoochSans-Black',
                            color: Color.fromARGB(255, 232, 188, 31),
                          )),
                          Image.asset('assests/images/raiden.jpg',height: 60.0, width: 100.0,),
                          const SizedBox(width: 10.20),
                          const Icon(Icons.thumb_up, color: Color.fromARGB(255, 232, 188, 31),size: 25.0,),
                        ],
                      )
                    ),

              Container(
                    height: 100.0,
                    width: 400.0,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 123, 4, 4),
                      borderRadius: BorderRadius.circular(10.0)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      const Text(
                          "Mavuika",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'SmoochSans-Black',
                            color: Color.fromARGB(255, 232, 188, 31),
                          )),
                          Image.asset('assests/images/mavuika.jpeg',height: 60.0, width: 100.0,),
                          const SizedBox(width: 10.0),
                          const Icon(Icons.thumb_up, color: Color.fromARGB(255, 232, 188, 31),size: 25.0,),
                        ],
                      )
                    ),

              Container(
                      height: 100.0,
                      width: 400.0,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 51, 184, 202),
                        borderRadius: BorderRadius.circular(10.0)),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        const Text(
                            "Eula",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SmoochSans-Black',
                              color: Color.fromARGB(255, 232, 188, 31),
                            )),
                            Image.asset('assests/images/eula.jpeg',height: 60.0, width: 100.0,),
                            const SizedBox(width: 10.0),
                            const Icon(Icons.thumb_up, color: Color.fromARGB(255, 232, 188, 31),size: 25.0,),
                      
                          ],
                      )
                    ),
          
          Container(
                      height: 100.0,
                      width: 400.0,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 75, 4, 123),
                        borderRadius: BorderRadius.circular(10.0)),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        const Text(
                            "Yae Miko",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SmoochSans-Black',
                              color: Color.fromARGB(255, 232, 188, 31),
                            )),
                            Image.asset('assests/images/yae.jpeg',height: 60.0, width: 100.0,),
                            const SizedBox(width: 10.0),
                            const Icon(Icons.thumb_up, color: Color.fromARGB(255, 232, 188, 31),size: 25.0,),
                      
                          ],
                      )
                    ),
          Container(
                      height: 100.0,
                      width: 400.0,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 73, 205),
                        borderRadius: BorderRadius.circular(10.0)),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        const Text(
                            "Yelan",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SmoochSans-Black',
                              color: Color.fromARGB(255, 232, 188, 31),
                            )),
                            Image.asset('assests/images/yelan.jpeg',height: 60.0, width: 100.0,),
                            const SizedBox(width: 10.0),
                            const Icon(Icons.thumb_up, color: Color.fromARGB(255, 232, 188, 31),size: 25.0,),
                      
                          ],
                      )
                    ),
          ]
        ),),
      ),
      ),
  ));
}