import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midjourney_demo/detail_screen.dart';
import 'package:neon_widgets/neon_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: Image.asset('assets/background.png').image)),
          ),
          const ParticleField(),
          const Align(alignment: Alignment.topRight, child: MoonAnimation()),
          const Align(alignment: Alignment.topRight, child: BirdAnimation()),
          Align(
            alignment: const Alignment(-1, -0.86),
            child: Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      "Pinitgtem".toUpperCase(),
                      style: GoogleFonts.aBeeZee().copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.5,
                          fontSize: 9),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Nelaicke",
                    style: GoogleFonts.aBeeZee().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.5,
                        fontSize: 17.5),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "New way of life".toUpperCase(),
                    style: GoogleFonts.aBeeZee().copyWith(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                        fontSize: 6),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Find the meaning of your life by owning\nyour life"
                        .toUpperCase(),
                    style: GoogleFonts.aBeeZee().copyWith(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        height: 2.5,
                        fontSize: 6),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-1, 0.9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 36,
                      ),
                      Text(
                        "Eelioy Flarts",
                        style: GoogleFonts.roboto().copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            fontSize: 21),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Define your state".toUpperCase(),
                          style: GoogleFonts.aBeeZee().copyWith(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 2,
                              height: 2.5,
                              fontSize: 7),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: SliderTheme(
                      data: const SliderThemeData(
                        thumbColor: Color(0xffe2855f),
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 3,
                        ),
                        trackShape: GradientRectSliderTrackShape(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff234853),
                              Color(0xff60214e),
                              Color(0xff300f3a)
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      stops: [
                                        0.1,
                                        0.9
                                      ],
                                      colors: [
                                        Color(0xfff9ba32),
                                        Color(0xfff9ba32).withOpacity(0.8)
                                      ]),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            // decoration: BoxDecoration(
                            //     color: Color(0xff85f5da), shape: BoxShape.circle),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    stops: const [
                                      0.1,
                                      0.8
                                    ],
                                    colors: [
                                      Color(0xff85f5da),
                                      Color(0xff85f5da).withOpacity(0.8)
                                    ]),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    stops: const [
                                      0.1,
                                      0.9
                                    ],
                                    colors: [
                                      Color(0xfffad443),
                                      Color(0xfffad443).withOpacity(0.8)
                                    ]),
                                shape: BoxShape.circle),
                            // decoration: BoxDecoration(
                            //     color: Color(0xfffbc137), shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    stops: const [
                                      0.1,
                                      0.9
                                    ],
                                    colors: [
                                      const Color(0xfffad443),
                                      const Color(0xfffad443).withOpacity(0.8)
                                    ]),
                                shape: BoxShape.circle),
                            // decoration: BoxDecoration(
                            //     color: Color(0xfff9d149), shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    stops: const [
                                      0.1,
                                      0.9
                                    ],
                                    colors: [
                                      const Color(0xffce3f50),
                                      const Color(0xffce3f50).withOpacity(0.9)
                                    ]),
                                shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    stops: const [
                                      0.1,
                                      0.9
                                    ],
                                    colors: [
                                      const Color(0xff773c8c),
                                      const Color(0xff773c8c).withOpacity(0.8)
                                    ]),
                                shape: BoxShape.circle),
                            // decoration: const BoxDecoration(
                            //     color: Color(0xff702e8b), shape: BoxShape.circle),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: CustomPaint(
                        size: const Size(20, 20),
                        painter: RoundedSmilePainter(),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: SliderTheme(
                      data: const SliderThemeData(
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 3,
                        ),
                        trackShape: GradientRectSliderTrackShape(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff592036),
                              Color(0xff321341),
                            ]),
                            darkenInactive: false),
                      ),
                      child: Slider(
                        min: 0,
                        max: 10,
                        value: 5,
                        thumbColor: Colors.orange,
                        onChanged: (double value) {},
                      )),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pinitgtem".toUpperCase(),
                            style: GoogleFonts.aBeeZee().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2.5,
                                fontSize: 9),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Define your state".toUpperCase(),
                            style: GoogleFonts.aBeeZee().copyWith(
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 2,
                                height: 2.5,
                                fontSize: 6),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: CustomPaint(
                        size: const Size(26, 26),
                        painter: CirclePainter(),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ParticleField extends StatefulWidget {
  const ParticleField({super.key});

  @override
  ParticleFieldState createState() => ParticleFieldState();
}

class ParticleFieldState extends State<ParticleField>
    with TickerProviderStateMixin {
  List<Particle> particles = [];
  int density = 130;
  double speed = 1;

  @override
  void initState() {
    super.initState();
    createParticles();
  }

  void createParticles() {
    for (int i = 0; i < density; i++) {
      particles.add(Particle(tickerProvider: this, speed: speed, index: i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: particles.map((particle) => particle.widget).toList(),
    );
  }
}

class Particle {
  final Random random = Random();
  late final double size = 8.5 * random.nextDouble();

  final TickerProvider tickerProvider;
  late AnimationController _animationController;
  late ParticleTween _particleTween;
  late GlobalKey _particleKey;
  final double speed;
  final int index;

  Particle(
      {required this.tickerProvider,
      required this.speed,
      required this.index}) {
    _particleKey = GlobalKey();
    _animationController = AnimationController(
      duration:
          Duration(seconds: 15 + (random.nextDouble() * index * 4).toInt()),
      vsync: tickerProvider,
    );
    _particleTween = ParticleTween(
        speed: speed,
        begin: ParticleData.initial(random),
        end: ParticleData.random(random));
    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
        _particleTween = ParticleTween(
            speed: speed,
            begin: ParticleData.initial(random),
            end: ParticleData.random(random));
        _animationController.forward();
      }
    });
  }

  Widget get widget {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        final data = _particleTween.evaluate(_animationController);
        return Positioned(
          left: data.x,
          top: data.y,
          child: Opacity(
            opacity: data.opacity,
            child: Transform.scale(
              scale: data.scale,
              child: NeonPoint(
                key: _particleKey,
                pointSize: 2.5,
                lightBlurRadius: 6,
                lightSpreadRadius: 0.5,
                spreadColor: index % 2 == 0
                    ? const Color(0xffffcc00)
                    : const Color(0xffe7132a).withOpacity(0.9),
                pointColor: index % 2 == 0
                    ? const Color(0xFFefc725)
                    : const Color(0xFFdd697a),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ParticleData {
  final double x, y, scale, opacity;

  ParticleData(
      {required this.x,
      required this.y,
      required this.scale,
      required this.opacity});

  factory ParticleData.initial(Random random) {
    return ParticleData(
        x: 160,
        y: 428,
        scale: random.nextDouble(),
        opacity: random.nextDouble());
  }

  factory ParticleData.random(Random random) {
    return ParticleData(
      x: random.nextDouble() * 370 + 250,
      y: random.nextDouble() * 200,
      scale: random.nextDouble(),
      opacity: random.nextDouble(),
    );
  }
}

class ParticleTween extends Tween<ParticleData> {
  final ParticleData begin;
  final ParticleData end;
  final double speed;

  ParticleTween({required this.begin, required this.end, required this.speed})
      : super(begin: begin, end: end);

  @override
  ParticleData lerp(double t) {
    return ParticleData(
      x: lerpDouble(begin.x, end.x, t * speed)!,
      y: lerpDouble(begin.y, end.y, t * speed)!,
      scale: lerpDouble(begin.scale, end.scale, t)!,
      opacity: t * 3 * lerpDouble(begin.opacity, end.opacity, t)! < 1
          ? (t * 3 * lerpDouble(begin.opacity, end.opacity, t)!)
          : 1,
    );
  }
}

class BirdAnimation extends StatefulWidget {
  const BirdAnimation({super.key});

  @override
  BirdAnimationState createState() => BirdAnimationState();
}

class BirdAnimationState extends State<BirdAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 15),
  );
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(-0.02, 0.75),
    end: const Offset(-0.12, 0.75),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOut,
  ));

  @override
  void initState() {
    super.initState();

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        'assets/bird.png',
        scale: 3.25,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MoonAnimation extends StatefulWidget {
  const MoonAnimation({super.key});

  @override
  MoonAnimationState createState() => MoonAnimationState();
}

class MoonAnimationState extends State<MoonAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2050),
  );
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(-1.25, -2.5),
    end: const Offset(-1.25, 1.7),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutCubicEmphasized,
  ));

  @override
  void initState() {
    super.initState();

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        'assets/moon.png',
        scale: 3.25,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class GradientRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  //https://www.youtube.com/watch?v=Wl4F5V6BoJw
  /// Create a slider track that draws two rectangles with rounded outer edges.
  final LinearGradient gradient;
  final bool darkenInactive;
  final double additionalActiveTrackHeight;

  const GradientRectSliderTrackShape(
      {this.gradient =
          const LinearGradient(colors: [Colors.lightBlue, Colors.blue]),
      this.darkenInactive = true,
      this.additionalActiveTrackHeight = 0});

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
  }) {
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting  can be a no-op.
    if (sliderTheme.trackHeight! <= 0) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = darkenInactive
        ? ColorTween(
            begin: sliderTheme.disabledInactiveTrackColor,
            end: sliderTheme.inactiveTrackColor)
        : activeTrackColorTween;
    final Paint activePaint = Paint()
      ..shader = gradient.createShader(trackRect)
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..shader = gradient.createShader(trackRect)
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    Paint leftTrackPaint;
    Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }
    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius = Radius.circular(trackRect.height / 2 + 1);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
      ),
      rightTrackPaint,
    );
  }
}

class RoundedSmilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width / 4;

    // Create a LinearGradient brush
    final gradient = LinearGradient(
        begin: Alignment.topCenter,
        stops: const [0.1, 0.8],
        colors: [Color(0xff85f5da), Color(0xff85f5da).withOpacity(0.8)]);
    final Paint backgroundPaint = Paint()
      ..shader = gradient.createShader(Rect.fromCenter(
          center: center, width: size.width / 2, height: size.height / 2));
    canvas.drawCircle(center, size.width / 2, backgroundPaint);

    // Apply the gradient on the Paint object
    // final Rect gradientRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final Paint paint = Paint()
      ..color = Color(0xff324f58)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    // Draw half of a circle with rounded edges
    final Rect halfCircleRect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawArc(halfCircleRect, -0.15 * 3.14159265359, 1.3 * 3.14159265359,
        false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width / 4;

    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke // Set the style to stroke
      ..strokeWidth = 4;

    // Draw a circle with a stroke
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
