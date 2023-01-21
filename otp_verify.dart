import 'package:flutter/material.dart';
import 'package:untitled/user/login.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);
  @override
  State<OTPVerification> createState() => _OTPVerification();
}

class _OTPVerification extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text(
            "Forgot Password",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          leading: IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login(),),);
          }, icon: const Icon(Icons.arrow_back_ios),color:Colors.white,
          ),
          centerTitle: true,
          elevation: 0,
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: size.height * 0.3,
                color: Colors.indigo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(Icons.mobile_friendly_outlined, color: Colors.white,size: size.height * 0.175,),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.only(bottom: 10.5),
                elevation: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Text('Re-Generate Your Password', style: TextStyle(fontSize: size.height * 0.027, fontWeight: FontWeight.w500),),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Enter EMAIL I'D",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Enter OTP",
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        minWidth: size.width * 0.45,
                        color: Colors.indigo,
                        textColor: Colors.white,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home(),),);
                        },
                        height: size.height * 0.08,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(
                          "Send OTP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){}, child: const Text('Resend OTP..', style: TextStyle(fontSize: 12, color: Colors.indigo),)),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: (){Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Verification(),
                ),
              );}, icon: const Icon(Icons.arrow_forward), iconSize: size.height * 0.125, color: Colors.indigo,),
            ],
          ),
        ]
    ),
      ),
    ));
  }
}

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text(
            "Re-Generate Your Password",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          ),
          leading: IconButton(onPressed: (){Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OTPVerification(),
            ),
          );}, icon: const Icon(Icons.arrow_back_ios),color:Colors.white,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: size.height * 0.35,
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Icon(Icons.mobile_friendly_outlined, color: Colors.white,size: size.height * 0.2,),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.only(bottom: 10.5),
                        elevation: 0,
                        child: Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Text('New Password', style: TextStyle(fontSize: size.height * 0.027, fontWeight: FontWeight.w500),),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: "Enter Password",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: "Re-Enter Password",
                                    ),
                                  ),
                                ),
                              ),
                              ],
                          ),
                        ),
                      ),
                      IconButton(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login(),),);
                      }, icon: const Icon(Icons.arrow_forward), iconSize: size.height * 0.15, color: Colors.indigo,),
                    ],
                  ),
                ]
            ),
          ),
        ));
  }
}

