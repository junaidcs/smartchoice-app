import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'package:smartchoice/screens/home.dart';

class IntoScreens extends StatefulWidget {
  @override
  _IntoScreensState createState() => _IntoScreensState();
}

class _IntoScreensState extends State<IntoScreens> {
  List<Slide> slides = new List();

  static const _colorBlue = 0xFF2A3B8F;
  var _colorOrange = 0xffef9807;

  final TextStyle _titleStyle = const TextStyle(
    color: Color(_colorBlue),
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    // fontFamily: 'Panton Bold',
  );

  final TextStyle _styleDescription = const TextStyle(
    color: Colors.black54,
    fontSize: 14.0,
    letterSpacing: 0.2,
    // fontFamily: 'RobotoMono',
  );

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Get your car insured, the road \nahead could be bumpy",
        maxLineTitle: 2,
        styleTitle: _titleStyle,
        description:
            "Whether it's a brand new model or a used \none, we offer multiple auto insurance covers \ndepending on what you need",
        styleDescription: _styleDescription,
        pathImage: "assets/images/car_ins_min.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Adventures should be \nsafe too",
        maxLineTitle: 2,
        styleTitle: _titleStyle,
        description:
            "Whether its a backpacking or a spiritual \njourney, we have a range of travel insurance \npolicies for you to choose from.",
        styleDescription: _styleDescription,
        pathImage: "assets/images/travel_ins_min.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Plan for your family's future.",
        maxLineTitle: 2,
        styleTitle: _titleStyle,
        description:
            "Our life insurance policies are designed to \nsafeguard your family's future without the \nhassle of long-term commitments or \nexpensive premiums.",
        styleDescription: _styleDescription,
        pathImage: "assets/images/health_ins_min.png",
      ),
    );
  }

  void onDonePress() {
    // this.goToTab(0);
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(_colorOrange),
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(_colorOrange),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 80.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  child: Image.asset(
                    currentSlide.pathImage,
                    width: 280.0,
                    height: 280.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  child: Text(
                    currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.center,
                  ),
                  margin: EdgeInsets.only(top: 50.0),
                ),
                Container(
                  child: Text(
                    currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      // renderSkipBtn: this.renderSkipBtn(),
      // colorSkipBtn: Color(0x33ffcc5c),
      // highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      // colorDoneBtn: Color(0x33ffcc5c),
      // highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      // colorDot: Color(_colorOrange),
      // sizeDot: 13.0,
      // typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: false,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
