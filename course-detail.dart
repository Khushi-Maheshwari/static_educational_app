import 'package:flutter/material.dart';
import 'package:untitled/courses/all_courses.dart';
import 'package:untitled/home/home.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);
  @override
  State<CourseDetail> createState() => _CourseDetail();
}

class _CourseDetail extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Course Detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AllCourse(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Image
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      height: size.height * 0.3,
                      width: size.width * 1.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbbaWt34Ai-dRqf_liNpBVNdASwm44g0xWFjAJhfqD5CobN1Y7oZUdNuuSPR4iMxLyZhY&usqp=CAU',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Play Button
                    MaterialButton(
                      minWidth: size.width * 0.94,
                      color: Colors.indigoAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllCourse(),),);
                      },
                      height: size.height * 0.08,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: Text(
                        "Play",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Heading
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Heading
                        Text(
                          "Kotlin for Application Development",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: size.height * 0.03,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Use Date Picker
                        Container(
                          margin: const EdgeInsets.all(10.5),
                          child: Row(
                            children: [
                              Text(
                                'Last Update : ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: size.height * 0.023,
                                ),
                              ),
                              Text(
                                '24.04.2022',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    // Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          minWidth: size.width * 0.4,
                          color: Colors.indigoAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _kotlin(context),
                            );
                          },
                          height: size.height * 0.08,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: Text(
                            "Course Detail",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        MaterialButton(
                          minWidth: size.width * 0.4,
                          color: Colors.grey.shade200,
                          textColor: Colors.black,
                          onPressed: () {
                            showDialog(context: context,
                              builder: (BuildContext context) =>
                                  _lectures(context),);
                          },
                          height: size.height * 0.08,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: Text(
                            "Lectures",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Description
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Text(
                        "Whether you're interested in getting started with Kotlin or are looking to grow your expertise, Google's Kotlin for Android training courses can help you advance your skills.",
                        style: TextStyle(
                          fontSize: size.height * 0.02,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // List View
                    Column(
                      children: [
                        Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.school,
                              color: Colors.indigo,
                            ),
                            title: Text(
                              "Subject : Kotlin",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.028,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.computer,
                              color: Colors.red,
                            ),
                            title: Text(
                              "Lecture : 8 Lectures",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.028,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.lock_clock,
                              color: Colors.black,
                            ),
                            title: Text(
                              "Duration : 2 Months",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.028,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.person_add,
                              color: Colors.green,
                            ),
                            title: Text(
                              "Enroll : 250 Students",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.028,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.star_border,
                              color: Colors.teal,
                            ),
                            title: Text(
                              "Review : 28 Reviews",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.028,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Payment Heading
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, bottom: 10.0),
                      child: Row(
                        children: const [
                          Text(
                            'Payment Methods',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Payment
                    SizedBox(
                      child: Row(
                        children: const [
                          // Image.network('src'),
                          // Image.network('src'),
                          // Image.network('src'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Card Payment
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        minWidth: size.width * 0.94,
                        color: Colors.indigoAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _cardPayment(context),
                          );
                        },
                        height: size.height * 0.08,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),),
                        child: Text(
                          "Pay Using Card",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// Course Detail
  _kotlin(BuildContext context) {
    return AlertDialog(
      title: const Text('Course Detail'),
      content: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of Kotlin's standard library depends on the Java Class Library, but type inference allows its syntax to be more concise.\nIt's Paradigms are : Multi-paradigm: object-oriented, functional, imperative, block structured, declarative, generic, reflective, concurrent."
                    "\nKotlin tutorial provides basic and advanced concepts of Kotlin programming language. Our Kotlin tutorial is designed for beginners and professionals both.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ]
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme
              .of(context)
              .primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }

// Lecture Details
  _lectures(BuildContext context) {
    return AlertDialog(
      title: const Text('Lectures'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            ListTile(title: Text("Kotlin basic tutorial",),
              subtitle: Text("12 Topic"),),
            ListTile(title: Text("Control Flow",), subtitle: Text("7 Topic"),),
            ListTile(title: Text("Function",), subtitle: Text("6 Topic"),),
            ListTile(
              title: Text("Array & String",), subtitle: Text("2 Topic"),),
            ListTile(
              title: Text("Exception Handling",), subtitle: Text("6 Topic"),),
            ListTile(title: Text("Null Safety",), subtitle: Text("4 Topic"),),
            ListTile(title: Text("Collection",), subtitle: Text("13 Topic"),),
            ListTile(title: Text("Annotation & Reflection",),
              subtitle: Text("2 Topic"),),
          ],
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme
              .of(context)
              .primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }

// Payment Option
  _cardPayment(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Card Payment",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CourseDetail(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              width: size.width,
              height: size.height,
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.04,),
                    SizedBox(
                      height: size.height * 0.8,
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 50,
                        margin: const EdgeInsets.all(12.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "CARD HOLDER",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "JOHN ANDREW",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "CARD NUMBER",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "7419 9412 5910 9218",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "CVV NUMBER",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "7465",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "EXPIRATION DATE",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "15/12/2028",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "AMOUNT PAYABLE",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "INR 1199/-",
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MaterialButton(
                                  minWidth: size.width * 0.35,
                                  color: Colors.indigo,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          _confirm(context),
                                    );
                                  },
                                  height: size.height * 0.08,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Text(
                                    "Confirm",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.height * 0.025,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                MaterialButton(
                                  minWidth: size.width * 0.35,
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (
                                          context) => const CourseDetail(),),);
                                  },
                                  height: size.height * 0.08,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.height * 0.025,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Thank You Popup Box
  _confirm(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Payment Done 👍👍",
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
              builder: (BuildContext context) => const Home(),
            );
          },
          textColor: Colors.indigo,
          child: const Text('OK Thank You🤩🤩'),
        ),
      ],
    );
  }
}
