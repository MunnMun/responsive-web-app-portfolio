import 'package:fading_widget_animation/core/fading_widget.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({Key? key}) : super(key: key);

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> with SingleTickerProviderStateMixin{
  double width = 20;

  late AnimationController controller;
  late Animation<double>  animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Future.delayed(Duration(seconds: 1)).then((value) => setState((){
      width = 440;
    }));

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f3eb),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                Image.asset('images/orange.png',height: 33.0),
                SizedBox(width: 8.0),
                Text('HK',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.0,
                    fontSize: 24.0
                )),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xfff2f3eb),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset('images/resume.png',height: 150.0,width: 150.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Link(uri: Uri.parse('https://leetcode.com/munnmunn/'),target: LinkTarget.blank,
                      builder: (context,followLink){
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            child: Image.asset('images/code.png',height: 40),
                            onTap: followLink,
                          ),
                        );
                      }),
                  Text('LEETCODE',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Link(uri: Uri.parse('https://www.linkedin.com/in/harsh-kaushik-5a4614229/'),target: LinkTarget.blank,
                      builder: (context,followLink){
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            child: Image.asset('images/linkedin.png',height: 40),
                            onTap: followLink,
                          ),
                        );
                      }),
                  Text('LinkedIn',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Link(uri: Uri.parse('https://www.instagram.com/kaushik_harsh1619/'),target: LinkTarget.blank,
                      builder: (context,followLink){
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            child: Image.asset('images/instagram.png',height: 40),
                            onTap: followLink,
                          ),
                        );
                      }),
                  Text('Instagram',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Link(uri: Uri.parse('https://github.com/MunnMun'),target: LinkTarget.blank,
                      builder: (context,followLink){
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            child: Image.asset('images/github.png',height: 40),
                            onTap: followLink,
                          ),
                        );
                      }),
                  Text('GITHUB',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              GestureDetector(
                onTap: _sendEmail,
                child: Padding(
                  padding: const EdgeInsets.only(left : 30.0,right: 30.0,top: 20.0),
                  child: Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('contact me',style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0
                          ),),
                          SizedBox(width: 8.0),
                          Icon(Icons.arrow_forward,color: Colors.white,size: 24),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f3eb),
                    border: Border.all(color: Colors.black,width: 2.0),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Center(
                    child: Text('PORTFOLIO',style: TextStyle(
                      letterSpacing: 2.0
                    ),),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HARSH - ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60.0
                    ),),
                    Image.asset('images/orange-tree.png',height: 70.0),
                  ],
                ),
                Stack(
                  children: [
                    Positioned(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 36.0,
                        color: Color(0xffe2b6cd),
                        width: width,
                        curve: Curves.decelerate,
                      ),
                      bottom: 0,
                      left : 27.0,
                    ),
                    Text('  - - KAUSHIK ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60.0
                    )),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RotationTransition(
                        turns: animation,
                        child: Image.asset('images/plus.png',height: 100.0)),
                    Center(
                      child: FadingWidgetAnimator(
                        child: Container(
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 110,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/photo.jpeg'),
                                radius: 100,
                              ),
                            ),
                          ),
                          width: 240,
                          height: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfffee2e2)
                          ),
                        ),
                        duration: Duration(seconds: 2),
                        curve: Curves.bounceOut,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                FadingWidgetAnimator(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffbfdbfe),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('COLLEGE - ',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0
                          ),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('NSUT',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0,
                                letterSpacing: 2.0
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 2),
                  curve: Curves.easeInOutExpo,
                ),
                SizedBox(height: 8.0),
                FadingWidgetAnimator(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xfffde68a),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('HOBBIES - ',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontSize: 32.0
                          ),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('FOOTBALL',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('T.T',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('WORKOUT',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('DRAWING',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 4),
                  curve: Curves.bounceOut,
                ),
                SizedBox(height: 8.0),
                FadingWidgetAnimator(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffddd6fe),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('LOCATION - ',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0
                          ),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('NEW',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0,
                              ),),
                              Text('DELHI',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 32.0,
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 4),
                  curve: Curves.easeInOutExpo,
                ),
                SizedBox(height: 8.0),
                FadingWidgetAnimator(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffd6d3d1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('PROG - ',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0
                              ),),
                              Text('LANG - ',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0
                              ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('C++',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('C',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('JS',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                              Text('DART',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32.0
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 3),
                  curve: Curves.bounceOut,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _sendEmail(){
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'kaushikharsh1619@gmail.com',
    );

    launchUrl(emailLaunchUri);
  }
}