import 'package:colors/screens/homepage.dart';
import 'package:colors/screens/restaurants.dart';
import 'package:flutter/material.dart';
import 'package:colors/Classes/colors.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:colors/screens/signup_page.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isRememberme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Signuppage()));
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Coloring.Boxcolor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Welcome Back\n       Login',
                    style: TextStyle(
                      color: Coloring.Tcolorbold,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: Coloring.Tcolorblur,
                          fontSize: 20,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      BoxField(Icons.mail_outline, 'Enter email', false, true),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Coloring.Tcolorblur,
                          fontSize: 20,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      BoxField(Icons.lock_clock_outlined, 'Enter password',
                          true, false),
                      SizedBox(height: 60),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => homePage()));
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFF7F69),
                                Color(0xFFFF4E75),
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: !isRememberme,
                              onChanged: (value) {
                                setState(() {
                                  isRememberme = !isRememberme;
                                });
                              }),
                          SizedBox(width: 5),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 100,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              'Login with',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/twitter_logo.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/Google_logo.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/Facebook_logo.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
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
    );
  }

  Container BoxField(
      IconData icon, String hinttext, bool ispassword, bool ismail) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 5),
            Expanded(
              child: TextField(
                obscureText: ispassword,
                keyboardType:
                    ismail ? TextInputType.emailAddress : TextInputType.text,
                decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Coloring.Tcolorblur,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
