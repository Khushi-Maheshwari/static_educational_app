import 'package:flutter/material.dart';
import 'package:untitled/courses/all_courses.dart';
import 'package:untitled/home/home.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Check Your Profile", style: TextStyle(
            color: Colors.indigo, fontWeight: FontWeight.w600,fontSize: 16),),
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Home(),),);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.indigo,)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: size.height * 0.25,
                // color: Colors.indigo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    // const SizedBox(height: 10),
                    const Text("John Andrew",
                        style: TextStyle(fontSize: 18, color: Colors.indigo)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Edit Profile",
                          style: TextStyle(
                              fontSize: 12, color: Colors.indigo),),
                        IconButton(onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _editProfile(context),
                          );
                        }, icon: const Icon(Icons.border_color_outlined, size: 15,
                          color: Colors.indigo,))
                      ],
                    )
                  ],
                ),
              ),
              // Certificate
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.credit_card, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'My Certificate',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => Design(),
                  //     ),
                  //   );
                  // },
                ),
              ),
              //
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.note_sharp, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'My Projects',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => Design(),
                  //     ),
                  //   );
                  // },
                ),
              ),
              // Saved Course
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.cloud_download_outlined, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'Saved Course',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AllCourse(),
                      ),
                    );
                  },
                ),
              ),
              // My Card
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.credit_card, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'My Card',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => Design(),
                  //     ),
                  //   );
                  // },
                ),
              ),
              // Contact us
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.contact_phone_outlined, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Contact(),
                      ),
                    );
                  },
                ),
              ),
              // Privacy Policy
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.lock_outline, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => Design(),
                  //     ),
                  //   );
                  // },
                ),
              ),
              // Feedback
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  leading: const Icon(Icons.thumb_up_alt_outlined, size: 23,color: Colors.black,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,color: Colors.black,),
                  title: const Text(
                    'Feedback',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => Design(),
                  //     ),
                  //   );
                  // },
                ),
              ),
              const SizedBox(height: 15),

            ],
          ),
        ),
      ),
    );
  }


  // Edit Profile
  _editProfile(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Update Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile(),),);
        },icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
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
                      height: size.height * 0.7,
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 50,
                        margin: const EdgeInsets.all(12.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                            ),
                            TextButton(onPressed: () {}, child: const Text(
                              'Upload New Image',
                              style: TextStyle(fontSize: 12, color: Colors.indigo, fontWeight: FontWeight.w600,),
                            ),),
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
                                  labelText: "Enter Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
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
                                  labelText: "Enter Email I'D",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.03,),
                            MaterialButton(
                              minWidth: size.width * 0.65,
                              color: Colors.indigo,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile(),),);
                              },
                              height: size.height * 0.08,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                "Save Information",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w600,
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
            ),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Check Your Profile", style: TextStyle(
            color: Colors.indigo, fontWeight: FontWeight.w600,fontSize: 16),),
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Home(),),);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.indigo,)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  title: const Text(
                    'Visit Website',
                    style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              //
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  title: const Text(
                    'Whatsapp',
                    style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              //
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  title: const Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              //
              Card(
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: ListTile(
                  title: const Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.indigo,fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

            ],
          ),
        ),
      ),
    );
  }

}

