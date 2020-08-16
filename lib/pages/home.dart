import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFf1f1f1)),
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: FractionalOffset.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                    left: 100, right: 200.0, top: 50, bottom: 120.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Card(
                      elevation: 10.0,
                      child: SingleChildScrollView(
                        child: Container(
                            width: 400,
                            child: Column(
                              children: [
                                Container(
                                  height: 300,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage('assets/jone.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Jane Doe',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                      )),
                                ),
                                _getRow(FontAwesomeIcons.suitcase, 'Designer'),
                                _getRow(
                                    FontAwesomeIcons.home, 'Luanda, Angola'),
                                _getRow(FontAwesomeIcons.envelope,
                                    'john.doe@gmail.com'),
                                _getRow(FontAwesomeIcons.phoneAlt,
                                    '+244 934 567 890'),
                                SizedBox(
                                  height: 20.0,
                                ),
                                _getTitle(
                                    'Skills', FontAwesomeIcons.asterisk, false),
                                SizedBox(
                                  height: 20.0,
                                ),
                                _getSkills('Adobe Photoshop', 0.9, '90%'),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Photography', 0.8, '80%'),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Illustrator', 0.75, '75%'),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Media', 0.50, '50%'),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Media', 0.50, '50%'),
                                SizedBox(
                                  height: 20.0,
                                ),
                                _getTitle(
                                    'Languages', FontAwesomeIcons.globe, false),
                                SizedBox(
                                  height: 20.0,
                                ),
                                _getSkills('English', 1.0, ''),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Germany', 0.8, ''),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _getSkills('Spanish', 0.5, ''),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Card(
                                elevation: 10.0,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _getTitle('Work Experience',
                                          FontAwesomeIcons.suitcase, true),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience(
                                          'Front End Developer / w3schools.com',
                                          'Jan 2015',
                                          'Current',
                                          """Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde dolorem que repellendus iure, iste."""),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience(
                                          'Web Developer / something.com',
                                          'Mar 2012',
                                          'Dec 2014',
                                          """Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste."""),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience(
                                          'Graphic Designer / designsomething.com',
                                          'Jun 2010',
                                          'Mar 2012',
                                          """Lorem ipsum dolor sit amet, consectetur adipisicing elit."""),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Card(
                                elevation: 10.0,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _getTitle('Education',
                                          FontAwesomeIcons.graduationCap, true),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience(
                                          'W3Schools.com',
                                          'Forever',
                                          '',
                                          """Web Development! All I need to know in one place"""),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience('London Business School',
                                          '2013', '2015', """Master Degree"""),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      _getExperience(
                                          'GSchool of Coding',
                                          '2010',
                                          '2013', """Bachelor Degree"""),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFF009688)),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Find me on social media.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.pinterest,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.telegram,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Powered by w3.css',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget _getRow(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF009688),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget _getSkills(String skill, double value, String perce) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(skill),
          SizedBox(
            height: 10.0,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: value,
            center: new Text(
              perce,
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Color(0xFF009688),
          ),
        ],
      ),
    );
  }

  _getTitle(String title, IconData icon, bool isBig) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF009688),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(title,
              style: isBig
                  ? Theme.of(context).textTheme.headline4
                  : Theme.of(context).textTheme.headline5),
        ],
      ),
    );
  }

  Widget _getExperience(
      String title, String start, String end, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(15.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Color(0xFF009688),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                start,
                style: TextStyle(color: Color(0xFF009688)),
              ),
              SizedBox(
                width: 10.0,
              ),
              end.toLowerCase() == 'current'
                  ? Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xFF009688)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          end,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          '-',
                          style: TextStyle(color: Color(0xFF009688)),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          end,
                          style: TextStyle(color: Color(0xFF009688)),
                        ),
                      ],
                    ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
