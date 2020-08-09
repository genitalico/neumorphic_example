import 'package:flutter/material.dart';

class NButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final int type;

  const NButton({Key key, this.onPressed, this.text,this.type}) : super(key: key);

  Widget _circle(double width,double height,Color primaryColor){

    return Container(
      width: width * 0.1,
      height: height * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: FlatButton(
        onPressed: this.onPressed,
        child: Text(
          this.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _rectangle(double width,double height,Color primaryColor){
    return Container(
      width: width,
      height: height * .08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        shape: BoxShape.rectangle,
        color: primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: FlatButton(
        onPressed: this.onPressed,
        child: Text(
          this.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _Corners(double width,double height,Color primaryColor){

    return Container(
      width: width * 0.1,
      height: height * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: FlatButton(
        onPressed: this.onPressed,
        child: Text(
          this.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Color primaryColor = Color(0xFFF4F4F4);

    if(this.type == 1)
      return _circle(height, height, primaryColor);
    
    if(this.type == 2)
      return _rectangle(width, height, primaryColor);

    if(this.type == 3)
      return _Corners(height,height,primaryColor);

    return _rectangle(width, height, primaryColor);
  }
}
