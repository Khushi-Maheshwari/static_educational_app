import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:untitled/courses/course-detail.dart';

import '../user/login.dart';
import '../user/user_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: const Text(
          'Hey, Wade Warren',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      //------Body---------
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  // slider
                  CarouselSlider(
                    items: [
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhSDccg_IvzWfSsyjsrYNXTU6vYJpqoBWxzw&usqp=CAU'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSULXzIF3BWgoR2bYbFSAfJ5Dat7NvN8OTu8g&usqp=CAU'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUZvl6zxzBmBygEMlEFh8w3fHfDdlrqN3zZg&usqp=CAU'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 500),
                      aspectRatio: 10 / 9,
                      viewportFraction: 0.85,
                    ),
                  ),
                  // Categories
                  SizedBox(
                    height: size.height * 0.2,
                    width: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5.5),
                                  height: size.height * 0.15,
                                  width: size.width * 0.3,
                                  child: GestureDetector(
                                    child: Container(
                                      margin: const EdgeInsets.all(5.5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                            spreadRadius: 1.0,
                                          ), //BoxShadow
                                          //BoxShadow
                                        ],
                                        image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSENf7TMzoro-GrPWNlb6bRaMbFf4lXl_pmKw&usqp=CAU'),fit: BoxFit.fill),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => Design(),
                                        ),
                                      );
                                    },
                                  )
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Design',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            // code
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5.5),
                                  height: size.height * 0.15,
                                  width: size.width * 0.3,
                                  child: GestureDetector(
                                    child: Container(
                                      margin: const EdgeInsets.all(5.5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                            spreadRadius: 1.0,
                                          ), //BoxShadow
                                          //BoxShadow
                                        ],
                                        image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1XWWRkJ-11m24Xsb4tCMJZk9uTceSwd11Ew&usqp=CAU'),fit: BoxFit.fill),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => Code(),
                                        ),
                                      );
                                    },
                                  )
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Code',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            // photography
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5.5),
                                  height: size.height * 0.15,
                                  width: size.width * 0.3,
                                  child: GestureDetector(
                                    child: Container(
                                      margin: const EdgeInsets.all(5.5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                            spreadRadius: 1.0,
                                          ), //BoxShadow
                                          //BoxShadow
                                        ],
                                        image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIkOMWSEIr4gNXiTXclJmYESpofeccuie7Lg&usqp=CAU'),fit: BoxFit.fill),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PhotoShop(),
                                        ),
                                      );
                                    },
                                  )
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Photography',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            // development
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5.5),
                                  height: size.height * 0.15,
                                  width: size.width * 0.3,
                                  child: GestureDetector(
                                    child: Container(
                                      margin: const EdgeInsets.all(5.5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                            spreadRadius: 1.0,
                                          ), //BoxShadow
                                          //BoxShadow
                                        ],
                                        image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8tmS2AGerIBwVXxPbMpjzfSGk990AnRKOwQ&usqp=CAU'),fit: BoxFit.fill),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => Development(),
                                        ),
                                      );
                                    },
                                  )
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Development',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Trending Courses
                  Container(
                    margin: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Trending Course',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Design(),
                                ),
                              );
                            },
                            child: const Text('See All',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.32,
                    width: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qTSRH0au56CzdNKAi2s2XgKCI-dEP36MdA&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'UI/UX Design Master \nClass',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYf2TEcYIuun35Kpsn9qckFtU4A3uvvCDjGw&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Creative Photo With \nPhotoshop',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlmHDL2JKJnZSd2dHECvsRoWsg9junBhILZQ&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Digital Photography \nMaster Class',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ0FNSl4ALW5fJYr4pIVA_-LCdvH_BG5Dsw&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Software Development',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJN1dwI99T0yAVJv_iwC7e8YVlrrnYQD3JTg&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Flutter Development',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.5),
                                height: size.height * 0.24,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    //BoxShadow
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKDMljiMVphn0_Bf6KuZDkfcCBwQsGj2tFMw&usqp=CAU'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Master Class of DSA',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                  // Recently added
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12.5, vertical: 3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recently Add Course',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const AddCourse(),
                                ),
                              );
                            },
                            child: const Text('See All',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.48,
                    width: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(children: [
                          // 1st
                          Container(
                            margin: const EdgeInsets.only(left: 10.0,top: 2.5,right: 2.5,bottom: 2.5),
                            height: size.height * 0.44,
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: size.height * 0.22,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1591024622168-fa91b5df0c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwY29kaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 4.9',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.alarm,
                                              color: Colors.black54,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 2.40 Hrs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Full Course of coding with different custom field',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 21,
                                            backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                          ),
                                          const Text(
                                            ' Wade Warren',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.indigo),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              '1500.0 INR',
                                              style: TextStyle(
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 2nd
                          Container(
                            margin: const EdgeInsets.all(2.5),
                            height: size.height * 0.44,
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: size.height * 0.22,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29kaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 4.9',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.alarm,
                                              color: Colors.black54,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 2.40 Hrs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Full Course of coding with different custom field',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 21,
                                            backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                          ),
                                          const Text(
                                            ' Wade Warren',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.indigo),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              '1500.0 INR',
                                              style: TextStyle(
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 3rd
                          Container(
                            margin: const EdgeInsets.only(left: 2.5,top: 2.5,right: 7.5,bottom: 2.5),
                            height: size.height * 0.44,
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: size.height * 0.22,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 4.9',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.alarm,
                                              color: Colors.black54,
                                              size: size.height * 0.03,
                                            ),
                                            label: const Text(
                                              ' 2.40 Hrs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Full Course of coding with different custom field',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 21,
                                            backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                          ),
                                          const Text(
                                            ' Wade Warren',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.indigo),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              '1500.0 INR',
                                              style: TextStyle(
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //------Drawer---------
      drawer: Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.3,
              child: DrawerHeader(
                child: Column(
                  children: const [
                    Center(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Wade Warren",
                        style: TextStyle(fontSize: 20, color: Colors.indigo)),
                    Text("wade145@gmail.com",
                        style: TextStyle(fontSize: 20, color: Colors.indigo)),
                  ],
                ),
              ),
            ),
            ListTile(
              iconColor: Colors.indigo,
              leading: const Icon(Icons.book),
              title: const Text('My Course',
                  style: TextStyle(color: Colors.indigo)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CourseDetail(),
                  ),
                );
              },
            ),
            ListTile(
              iconColor: Colors.indigo,
              leading: const Icon(Icons.timeline_sharp),
              title: const Text('Check Progress',
                  style: TextStyle(color: Colors.indigo)),
              onTap: () {
                // Add Navigation logic here
              },
            ),
            ListTile(
              iconColor: Colors.indigo,
              leading: const Icon(Icons.person),
              title: const Text('Check Profile',
                  style: TextStyle(color: Colors.indigo)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
            ),
            ListTile(
              iconColor: Colors.indigo,
              leading: const Icon(Icons.output),
              title:
                  const Text('Log Out', style: TextStyle(color: Colors.indigo)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => _logOut(context),
                  ),
                );
              },
            ),
          ],
        ),
      ),

    //

    );
  }
}

// class for Recently Added Course
class AddCourse extends StatelessWidget {
  const AddCourse({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Recently Added Course",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.5,horizontal: 2.5),
                  height: size.height * 0.43,
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),//BoxShadow
                      //BoxShadow
                    ],

                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.24,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1591024622168-fa91b5df0c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwY29kaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 4.9',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.alarm,
                                    color: Colors.black54,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 2.40 Hrs',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Full Course of coding with different custom field',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 21,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    ),
                                    Text(
                                      ' Wade Warren',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.indigo),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '1500.0 INR',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // 2nd
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.5,horizontal: 2.5),
                  height: size.height * 0.43,
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),//BoxShadow
                      //BoxShadow
                    ],

                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.24,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1591024622168-fa91b5df0c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwY29kaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 4.9',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.alarm,
                                    color: Colors.black54,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 2.40 Hrs',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Full Course of coding with different custom field',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 21,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    ),
                                    Text(
                                      ' Wade Warren',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.indigo),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '1500.0 INR',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // 3rd
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.5,horizontal: 2.5),
                  height: size.height * 0.43,
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),//BoxShadow
                      //BoxShadow
                    ],

                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.24,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1591024622168-fa91b5df0c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwY29kaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 4.9',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.alarm,
                                    color: Colors.black54,
                                    size: size.height * 0.03,
                                  ),
                                  label: const Text(
                                    ' 2.40 Hrs',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Full Course of coding with different custom field',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 21,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    ),
                                    Text(
                                      ' Wade Warren',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.indigo),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '1500.0 INR',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
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

// class for Design Course
class Design extends StatelessWidget {
  Design({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Designing Course",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(7.0),
            child: Wrap(runSpacing: 11, children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qTSRH0au56CzdNKAi2s2XgKCI-dEP36MdA&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'UI/UX Design Master \nClass',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYf2TEcYIuun35Kpsn9qckFtU4A3uvvCDjGw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Creative Photo With \nPhotoshop',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlmHDL2JKJnZSd2dHECvsRoWsg9junBhILZQ&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Digital Photography \nMaster Class',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ0FNSl4ALW5fJYr4pIVA_-LCdvH_BG5Dsw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Software Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJN1dwI99T0yAVJv_iwC7e8YVlrrnYQD3JTg&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Flutter Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKDMljiMVphn0_Bf6KuZDkfcCBwQsGj2tFMw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Master Class of DSA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// class for Development Course
class Development extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Designing Course",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(7.0),
            child: Wrap(runSpacing: 11, children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qTSRH0au56CzdNKAi2s2XgKCI-dEP36MdA&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'UI/UX Design Master \nClass',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYf2TEcYIuun35Kpsn9qckFtU4A3uvvCDjGw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Creative Photo With \nPhotoshop',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlmHDL2JKJnZSd2dHECvsRoWsg9junBhILZQ&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Digital Photography \nMaster Class',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ0FNSl4ALW5fJYr4pIVA_-LCdvH_BG5Dsw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Software Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJN1dwI99T0yAVJv_iwC7e8YVlrrnYQD3JTg&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Flutter Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKDMljiMVphn0_Bf6KuZDkfcCBwQsGj2tFMw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Master Class of DSA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// class for Code Course
class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Designing Course",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(7.0),
            child: Wrap(runSpacing: 11, children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qTSRH0au56CzdNKAi2s2XgKCI-dEP36MdA&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'UI/UX Design Master \nClass',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYf2TEcYIuun35Kpsn9qckFtU4A3uvvCDjGw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Creative Photo With \nPhotoshop',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlmHDL2JKJnZSd2dHECvsRoWsg9junBhILZQ&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Digital Photography \nMaster Class',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ0FNSl4ALW5fJYr4pIVA_-LCdvH_BG5Dsw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Software Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJN1dwI99T0yAVJv_iwC7e8YVlrrnYQD3JTg&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Flutter Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKDMljiMVphn0_Bf6KuZDkfcCBwQsGj2tFMw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Master Class of DSA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// class for Design Course
class PhotoShop extends StatelessWidget {
  PhotoShop({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Designing Course",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(7.0),
            child: Wrap(runSpacing: 11, children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qTSRH0au56CzdNKAi2s2XgKCI-dEP36MdA&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'UI/UX Design Master \nClass',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYf2TEcYIuun35Kpsn9qckFtU4A3uvvCDjGw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Creative Photo With \nPhotoshop',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlmHDL2JKJnZSd2dHECvsRoWsg9junBhILZQ&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Digital Photography \nMaster Class',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ0FNSl4ALW5fJYr4pIVA_-LCdvH_BG5Dsw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Software Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJN1dwI99T0yAVJv_iwC7e8YVlrrnYQD3JTg&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Flutter Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.5),
                    height: size.height * 0.24,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKDMljiMVphn0_Bf6KuZDkfcCBwQsGj2tFMw&usqp=CAU'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Master Class of DSA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// Log Out
Widget _logOut(BuildContext context) {
  return AlertDialog(
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Do you really want to log out!!!!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      MaterialButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => const Login(),
          );
        },
        textColor: Colors.red,
        child: const Text('Yes 😯'),
      ),
      MaterialButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => const Home(),
          );
        },
        textColor: Colors.blue,
        child: const Text('No 😀'),
      ),
    ],
  );
}
