import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginScreenMonitor()));
}

class LoginScreenMonitor extends StatelessWidget {
  var primaryColor = const Color(0xFFE42A4C);
  var primaryColor2 = const Color(0xFFEDEDED);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //LogAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        leading: const IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: printMess,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20), //EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 105,
                height: 105,
                child: Image.asset('images/TUlogin1.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome To',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    ' Tutum App',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.pink,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.person_outline,
                      color: Colors.black54,
                      size: 27,
                    ),
                    Text(
                      ' Email address',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: primaryColor2,
                  child: TextField(
                    cursorColor: primaryColor,
                    controller: emailController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Tap,  & Enter Email Address',
                      hintStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.lock_outlined,
                      color: Colors.black54,
                      size: 27,
                    ),
                    Text(
                      ' Password',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //color: primaryColor2,
                  child: TextField(
                    obscureText: true,
                    cursorColor: primaryColor,
                    controller: passwordController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: '           Tap, & Enter Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.pink.withOpacity(.5),
                      ),
                      hintStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                '---------------------   Or, login With   ---------------------',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 60,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  child: MaterialButton(
                    color: primaryColor,
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New User ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        print("connect to sign up page ...");
                      },
                      child: Text(
                        'Create new account',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void printMess() {
  print(" this");
}

void printMess2(value) {
  print(value);
}
