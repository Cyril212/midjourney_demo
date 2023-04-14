import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midjourney_demo/main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfffdfcf9),
            Color(0xfffafaf4),
            Color(0xfff0f2ef),
            Color(0xfffcfbf7),
            Color(0xfffbfaf9),
            Color(0xffeee9ca),
          ],
          stops: [0.0, 0.2, 0.4, 0.5, 0.6, 1.0],
        )),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        scale: 1,
                        image: Image.asset('assets/header.png').image))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Unlip tet",
                          style: GoogleFonts.abyssinicaSil().copyWith(
                              color: Color(0xff535254),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 19),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Lores ipsilum fdafffa ffsdfsd asdf asddf asd fasd fasd fasd fsdaf safasfasdfasdfsadf asdf asddf asddf asddf as fasdd fasdf asdfasdfasdfasdfasdf asfasdfasdfsafsa",
                          style: GoogleFonts.abyssinicaSil().copyWith(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1,
                              height: 1.75,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Overal feeling",
                        style: GoogleFonts.abyssinicaSil().copyWith(
                            color: Color(0xff535254),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            fontSize: 13),
                      ),
                      Text(
                        "PIW 1.23",
                        style: GoogleFonts.abyssinicaSil().copyWith(
                            color: Color(0xff535254),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Energy level".toUpperCase(),
                        style: GoogleFonts.abyssinicaSil().copyWith(
                            color: Color(0xff535254),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            fontSize: 12),
                      ),
                      Text(
                        "75",
                        style: GoogleFonts.abyssinicaSil().copyWith(
                            color: Color(0xff535254),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            fontSize: 13),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SliderTheme(
                  data: const SliderThemeData(
                    thumbColor: Color(0xfff4d472),
                    trackHeight: 6,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 4,
                    ),
                    trackShape: GradientRectSliderTrackShape(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff431d2a),
                          Color(0xff5e3844),
                          Color(0xffffe57a),
                        ], stops: [
                          0.05,
                          0.06,
                          0.75
                        ]),
                        darkenInactive: false),
                  ),
                  child: Slider(
                    min: 0,
                    max: 10,
                    value: 10,
                    onChanged: (double value) {},
                  )),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Emotion level".toUpperCase(),
                    style: GoogleFonts.abyssinicaSil().copyWith(
                        color: Color(0xff535254),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        fontSize: 12),
                  ),
                  Text(
                    "75",
                    style: GoogleFonts.abyssinicaSil().copyWith(
                        color: Color(0xff535254),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
