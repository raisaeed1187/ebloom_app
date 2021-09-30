import 'package:flutter/material.dart';
import 'package:ebloom_app/config/app_config.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: true,
        elevation: 3,
        title: Text('About', style: TextStyle(color: kDarkColor),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kDarkColor,)),

      ),
      
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 20, top:5.0),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: (tl.length),
          itemBuilder: (BuildContext context, index) {
            TermsList t = tl[index];

            return Padding(
              padding: EdgeInsets.all(18.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '${index+1}. ',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.4,
                          fontFamily: 'Montserrat-M',
                          color: kDarkColor,
                        ),
                      ),
                      Text(
                        t.heading,
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.4,
                          fontFamily: 'Montserrat-M',
                          color: kDarkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    t.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.0,
                      wordSpacing: 0.4,
                      color: Colors.black54,
                      fontFamily: 'Montserrat-R',
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            );
          },

        ),
      ),
    );
  }
}


class TermsList{
  String heading, description;

  TermsList(
      {required this.heading, required this.description,}
      );
}

List<TermsList> tl = [
  TermsList(
    heading: 'About Heading 1 ',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
        'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
        'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
        'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
        'tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. '
        'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, '
        'no sea takimata sanctus est Lorem ipsum dolor sit amet.',
  ),
  TermsList(
    heading: 'About Heading 2',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
        'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
        'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
        'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
        'tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. '
        'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, '
        'no sea takimata sanctus est Lorem ipsum dolor sit amet.',  ),
  TermsList(
    heading: 'About Heading 3',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
        'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
        'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
        'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
        'tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. '
        'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, '
        'no sea takimata sanctus est Lorem ipsum dolor sit amet.',  ),

];