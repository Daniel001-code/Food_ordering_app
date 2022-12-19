import 'package:colors/Classes/Dimentions.dart';
import 'package:flutter/material.dart';

class restaurants extends StatelessWidget {
  final String Resimage;
  final String rate;
  final String Resname;
  final String Restype;
  final String Location;
  final Widget newpages;
  restaurants({
    required this.Resimage,
    required this.rate,
    required this.Resname,
    required this.Restype,
    required this.Location,
    required this.newpages,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Dimentions.width15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => newpages));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimentions.height5),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: Dimentions.restimageheight,
                  width: Dimentions.restimagewidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimentions.height5),
                        topRight: Radius.circular(Dimentions.height5)),
                    image: DecorationImage(
                      image: AssetImage(Resimage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: Dimentions.height110,
                right: Dimentions.width20,
                child: Container(
                  height: Dimentions.ratingheight,
                  width: Dimentions.ratingwidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimentions.height10),
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.pink,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: Dimentions.height5,
                        spreadRadius: .2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      rate,
                      style: TextStyle(
                        fontSize: Dimentions.fontsize10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: Dimentions.height70,
                child: Text(
                  Resname,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: Dimentions.fontsize20,
                  ),
                ),
              ),
              Positioned(
                bottom: Dimentions.height50,
                child: Text(
                  Restype,
                  style: TextStyle(
                    fontSize: Dimentions.fontsize15,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Positioned(
                bottom: Dimentions.height10,
                child: Row(children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: Dimentions.fontsize20,
                  ),
                  Text(
                    Location,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimentions.fontsize13,
                    ),
                  ),
                ]),
              ),
              Positioned(
                bottom: Dimentions.height10,
                right: Dimentions.height20,
                child: Container(
                  height: Dimentions.directionheight,
                  width: Dimentions.directionwidth,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.pink,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: Dimentions.height5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Center(
                      child: Icon(
                    Icons.directions_outlined,
                    size: Dimentions.iconsize25,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
