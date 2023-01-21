import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:untitled/courses/course-detail.dart';
import 'package:untitled/home/home.dart';

class AllCourse extends StatefulWidget {
  const AllCourse({Key? key}) : super(key: key);
  @override
  State<AllCourse> createState() => _AllCourse();
}

class _AllCourse extends State<AllCourse> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "All Courses",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home(),),);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Kotlin
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CourseDetail(),
                            ),
                          );
                        },
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbbaWt34Ai-dRqf_liNpBVNdASwm44g0xWFjAJhfqD5CobN1Y7oZUdNuuSPR4iMxLyZhY&usqp=CAU',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Basic Kotlin Course',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('233 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 258,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Web Development
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CourseDetail(),),
                          // );
                        },
                        child: Image.network(
                            'https://www.pngitem.com/pimgs/m/398-3987099_webdev-fix-web-development-white-background-hd-png.png',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Web Development',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('875 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 455,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Android Development
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CourseDetail(),),
                          // );
                        },
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZTc7cvtXv28tldRD7iTI3omf_KgjusQYdJQ&usqp=CAU',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Android App Development',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('181 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 325,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // AI for App
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CourseDetail(),),
                          // );
                        },
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh4xVu7ztHQoBl0rzcKc-koeRH-a2_Gjirag&usqp=CAU',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'AI for App Development',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('233 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 258,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ML
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CourseDetail(),),
                          // );
                        },
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMUlYcIQHMIIjw2fALgB4edkOT_r9qDQq9ZQ&usqp=CAU',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Machine Learning',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('233 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 258,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Node JS
              Container(
                margin: const EdgeInsets.all(10.0),
                height: size.height * 0.25,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CourseDetail(),),
                          // );
                        },
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeogdmQ9YtVIHrZmVIi84Iyr6M_SlXmUhv3A&usqp=CAU',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.20,
                      width: size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Node JS : Beginners',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.5),
                          ),
                          Text('233 Students Enrolled'),
                          LikeButton(
                            circleColor: CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeCount: 258,
                          ),
                        ],
                      ),
                    ),
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
