import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/link.dart';
import 'package:fading_widget_animation/fading_widget_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class desktopScaffold extends StatefulWidget {
  const desktopScaffold({Key? key}) : super(key: key);

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> with SingleTickerProviderStateMixin{
  double width = 20.0;
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 25.0),
            child: Container(
              height: 55.0,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      height: 45.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 3.0,
                          )
                      ),
                      child: Center(
                          child: Row(
                            children: [
                              Text('7011589810',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 16.0),
                              Icon(Icons.phone,color: Colors.white),
                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0,left: 75),
                        child: Image.asset('images/resume.png',height: 150.0,width: 150.0),
                      ),
                      Container(
                        child: Text('PORTFOLIO'),
                        padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black)
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HARSH - ',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 72.0
                          ),),
                          Image.asset('images/orange-tree.png',height: 80.0),
                        ],
                      ),
                      Stack(
                        children: [
                          Positioned(
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              height: 40.0,
                              color: Color(0xffe2b6cd),
                              width: width,
                              curve: Curves.decelerate,
                            ),
                            bottom: 0,
                            left : 27.0,
                          ),
                          Text('  - - KAUSHIK ',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 72.0
                          )),
                        ],
                      ),
                      SizedBox(height: 60.0),
                      Text('" I Think, Therefore I am "',style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Text(' - René Descartes',style: TextStyle(
                            fontSize: 20.0
                        ),),
                      ),
                      SizedBox(height: 60.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: GestureDetector(
                          onTap: _sendEmail,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Row(
                              children: [
                                Text('Contact me',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),),
                                HoverContainer(
                                  width: 25.0,
                                  height: 20.0,
                                  hoverWidth: 50.0,
                                  hoverHeight: 20.0,
                                ),
                                Icon(Icons.arrow_forward,color: Colors.white,size: 30.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 440.0,left: 110),
                    child: RotationTransition(
                        turns: animation,
                        child: Image.asset('images/plus.png',height: 100.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 150.0),
                              child: Column(
                                children: [
                                  FadingWidgetAnimator(
                                    child: HoverCrossFadeWidget(
                                      duration: Duration(milliseconds: 100),
                                      firstChild: Container(
                                        width: 240,
                                        height: 220,
                                        decoration: BoxDecoration(
                                          color: Color(0xffbbf7d0),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Text('HOBBIES',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 34.0
                                          ),),
                                        ),
                                      ),
                                      secondChild: Container(
                                          width: 240,
                                          height: 220,
                                          decoration: BoxDecoration(
                                            color: Color(0xffbbf7d0),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('FOOTBALL',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('T.T',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('WORKOUT',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('DRAWING',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                            ],
                                          )
                                      ),
                                    ),
                                    duration: Duration(seconds: 4),
                                    curve: Curves.bounceOut,
                                  ),
                                  SizedBox(height: 8.0),
                                  FadingWidgetAnimator(
                                    child: HoverCrossFadeWidget(
                                      duration: Duration(milliseconds: 100),
                                      firstChild: Container(
                                        width: 240,
                                        height: 220,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd6d3d1),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('PROG',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 34.0
                                                ),),
                                                Text('LANG',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 34.0
                                                ),),
                                              ],
                                            )
                                        ),
                                      ),
                                      secondChild: Container(
                                        width: 240,
                                        height: 220,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd6d3d1),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('C++',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('C',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('DART',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                              Text('JS',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 34.0
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    duration: Duration(seconds: 3),
                                    curve: Curves.easeInOutExpo,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(top: 70.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    FadingWidgetAnimator(
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
                                    SizedBox(height: 8.0),
                                    FadingWidgetAnimator(
                                      child: HoverCrossFadeWidget(
                                        duration: Duration(milliseconds: 100),
                                        firstChild: Container(
                                          width: 240,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xffbfdbfe),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text('COLLEGE',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 34.0
                                            ),),
                                          ),
                                        ),
                                        secondChild: Container(
                                          width: 240,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xffbfdbfe),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text('NSUT',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 34.0
                                            ),),
                                          ),
                                        ),
                                      ),
                                      duration: Duration(seconds: 2),
                                      curve: Curves.easeInOutExpo,
                                    ),
                                    SizedBox(height: 8.0),
                                    FadingWidgetAnimator(
                                      child: HoverCrossFadeWidget(
                                        duration: Duration(milliseconds: 100),
                                        firstChild: Container(
                                          width: 240,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xffddd6fe),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text('LOCATION ',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 34.0
                                            ),),
                                          ),
                                        ),
                                        secondChild: Container(
                                          width: 240,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xffddd6fe),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text('NEW DELHI',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 34.0
                                            ),),
                                          ),
                                        ),
                                      ),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.easeInOutExpo,
                                    ),
                                    SizedBox(height: 8.0),
                                    FadingWidgetAnimator(
                                      child: HoverCrossFadeWidget(
                                        duration: Duration(milliseconds: 100),
                                        firstChild: Container(
                                          width: 240,
                                          height: 180,
                                          decoration: BoxDecoration(
                                            color: Color(0xfffde68a),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('SOCIAL',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 34.0
                                                ),),
                                                Text('MEDIA',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 34.0
                                                ),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        secondChild: Container(
                                            width: 240,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              color: Color(0xfffde68a),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Link(uri: Uri.parse('https://leetcode.com/munnmunn/'),
                                                      target: LinkTarget.blank,
                                                      builder: (context,followLink){
                                                        return Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: GestureDetector(
                                                            child: Image.asset('images/code.png',height: 40),
                                                            onTap: followLink,
                                                          ),
                                                        );
                                                      }),
                                                  top: 90,
                                                  left: 120,
                                                ),
                                                Positioned(
                                                  child: Link(uri: Uri.parse('https://www.linkedin.com/in/harsh-kaushik-5a4614229/'),
                                                      target: LinkTarget.blank,
                                                      builder: (context,followLink){
                                                        return Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: GestureDetector(
                                                            child: Image.asset('images/linkedin.png',height: 40),
                                                            onTap: followLink,
                                                          ),
                                                        );
                                                      }),
                                                  top: 16,
                                                  left: 30,
                                                ),
                                                Positioned(
                                                  child: Link(uri: Uri.parse('https://www.instagram.com/kaushik_harsh1619/'),
                                                      target: LinkTarget.blank,
                                                      builder: (context,followLink){
                                                        return Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: GestureDetector(
                                                            child: Image.asset('images/instagram.png',height: 40),
                                                            onTap: followLink,
                                                          ),
                                                        );
                                                      }),
                                                  top: 80,
                                                ),
                                                Positioned(
                                                  child: Link(uri: Uri.parse('https://github.com/MunnMun'),
                                                      target: LinkTarget.blank,
                                                      builder: (context,followLink){
                                                        return Padding(
                                                          padding: const EdgeInsets.all(20.0),
                                                          child: GestureDetector(
                                                            child: Image.asset('images/github.png',height: 40),
                                                            onTap: followLink,
                                                          ),
                                                        );
                                                      }),
                                                  left: 130,
                                                  top: 10.0,
                                                ),
                                              ],
                                            )
                                        ),
                                      ),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.easeInOutExpo,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
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
