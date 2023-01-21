import 'package:flutter/material.dart';
import 'package:untitled/user/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login(),),);
        }, icon: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,)),
        title: const Text(
          "Register",
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.04),
                    const Text("Welcome Learners.....",style: TextStyle(fontSize: 25, color: Colors.indigo, fontWeight: FontWeight.w500),),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    SizedBox(
                      height: size.height * 0.63,
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 50,
                        margin: const EdgeInsets.all(12.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight:FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.person, color: Colors.indigo,),
                                  labelText: "First Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "John",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight:FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.email_outlined, color: Colors.indigo,),
                                  labelText: "Enter E-mail I'D",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "john147@gmail.com",
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.025,
                                  fontWeight:FontWeight.w100,
                                ),
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.lock, color: Colors.indigo,),
                                  labelText: "Enter Password",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                  hintText: "********",
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.03,),
                            MaterialButton(
                              minWidth: size.width * 0.65,
                              color: Colors.indigo,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login(),),);
                              },
                              height: size.height * 0.08,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                "Register",
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
