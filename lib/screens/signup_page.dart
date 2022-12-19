import 'package:colors/Classes/Dimentions.dart';
import 'package:colors/screens/Login_page1.dart';
import 'package:flutter/material.dart';
import 'package:colors/Classes/colors.dart';
import 'package:flutter/src/painting/gradient.dart';

import 'Pages/Signupcreated.dart';

class Signuppage extends StatefulWidget {
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool isAdminScreen = true;
  bool isRememberme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Padding(
        padding: EdgeInsets.only(
            left: Dimentions.width20,
            right: Dimentions.width20,
            top: Dimentions.height20),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.height5),
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimentions.height20,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Coloring.Tcolorbold,
                            fontSize: Dimentions.fontsize30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimentions.height15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAdminScreen = false;
                            });
                          },
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: Dimentions.width50),
                                  child: Text(
                                    'User',
                                    style: TextStyle(
                                      color: !isAdminScreen
                                          ? Coloring.Tcolorbold
                                          : Coloring.Tcolorblur,
                                      fontSize: Dimentions.fontsize25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                if (!isAdminScreen)
                                  Container(
                                    color: Coloring.Tcolorbold,
                                    height: Dimentions.height3,
                                    width: Dimentions.width145,
                                  ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAdminScreen = true;
                            });
                          },
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: Dimentions.width40),
                                  child: Text(
                                    'Admin',
                                    style: TextStyle(
                                      color: isAdminScreen
                                          ? Coloring.Tcolorbold
                                          : Coloring.Tcolorblur,
                                      fontSize: Dimentions.fontsize25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                if (isAdminScreen)
                                  Container(
                                    color: Coloring.Tcolorbold,
                                    height: Dimentions.height3,
                                    width: Dimentions.width145,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (isAdminScreen)
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width20),
                        child: Adminpage(context),
                      ),
                    if (!isAdminScreen) Userpage(context),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: Dimentions.height20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimentions.height5),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: Dimentions.height10),
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: Dimentions.fontsize18,
                          color: Coloring.Tcolorbold,
                        ),
                      ),
                      SizedBox(height: Dimentions.height20),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => loginpage()));
                          },
                          child: Container(
                            height: Dimentions.height50,
                            color: Coloring.Boxcolor,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                  fontSize: Dimentions.fontsize15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Container Adminpage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Admin Email Address',
            style: TextStyle(
              color: Coloring.Tcolorblur,
              fontSize: Dimentions.fontsize20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimentions.height10),
          BoxField(
              Icons.mail_outline, 'Enter Admin email address', false, true),
          SizedBox(height: Dimentions.height10),
          Text(
            'Admin password',
            style: TextStyle(
              color: Coloring.Tcolorblur,
              fontSize: Dimentions.fontsize20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimentions.height10),
          BoxField(Icons.lock_outlined, 'Enter Admin Password', true, false),
          SizedBox(height: Dimentions.height40),
          Container(
            height: Dimentions.height50,
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
              'SIGN UP',
              style: TextStyle(
                fontSize: Dimentions.fontsize15,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )),
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
              SizedBox(width: Dimentions.width5),
              Text(
                'Remember me',
                style: TextStyle(
                  fontSize: Dimentions.fontsize15,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimentions.height20),
          Container(
            height: Dimentions.height100,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  'Sign Up with',
                  style: TextStyle(
                    fontSize: Dimentions.fontsize20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: Dimentions.width10),
                Container(
                  height: Dimentions.height40,
                  width: Dimentions.width40,
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
                  height: Dimentions.height35,
                  width: Dimentions.width35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/Google_logo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: Dimentions.width10),
                Container(
                  height: Dimentions.height35,
                  width: Dimentions.width35,
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
    );
  }

  Container Userpage(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimentions.width20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: TextStyle(
              color: Coloring.Tcolorblur,
              fontSize: Dimentions.fontsize20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimentions.height10),
          BoxField(Icons.mail_outline, 'Enter email address', false, true),
          SizedBox(height: Dimentions.height10),
          Text(
            'password',
            style: TextStyle(
              color: Coloring.Tcolorblur,
              fontSize: Dimentions.fontsize20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimentions.height10),
          BoxField(Icons.lock_outlined, 'Enter Password', true, false),
          SizedBox(height: Dimentions.height10),
          Text(
            'Confirm password',
            style: TextStyle(
              color: Coloring.Tcolorblur,
              fontSize: Dimentions.fontsize20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimentions.height10),
          BoxField(Icons.lock_outlined, 'Confirm Password', true, false),
          SizedBox(height: Dimentions.height30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Signupcreated()));
            },
            child: Container(
              height: Dimentions.height50,
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
                'SIGN UP',
                style: TextStyle(
                  fontSize: Dimentions.fontsize15,
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
              SizedBox(width: Dimentions.width5),
              Text(
                'Remember me',
                style: TextStyle(
                  fontSize: Dimentions.fontsize15,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimentions.height20),
          Container(
            height: Dimentions.height50,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  'Sign Up with',
                  style: TextStyle(
                    fontSize: Dimentions.fontsize20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: Dimentions.width10),
                Container(
                  height: Dimentions.height40,
                  width: Dimentions.width40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/twitter_logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: Dimentions.width10),
                Container(
                  height: Dimentions.height35,
                  width: Dimentions.height35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/Google_logo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: Dimentions.width10),
                Container(
                  height: Dimentions.height35,
                  width: Dimentions.width35,
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
    );
  }

  Container BoxField(
      IconData icon, String hinttext, bool ispassword, bool ismail) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.only(left: Dimentions.width5),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: Dimentions.width5),
            Expanded(
              child: TextField(
                obscureText: ispassword,
                keyboardType:
                    ismail ? TextInputType.emailAddress : TextInputType.text,
                decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: TextStyle(
                    fontSize: Dimentions.fontsize15,
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
