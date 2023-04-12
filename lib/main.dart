import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

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
                    image: Image.asset('assets/background.png').image)),
          ),
          const ParticleField(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ParticleField extends StatefulWidget {
  const ParticleField({super.key});

  @override
  _ParticleFieldState createState() => _ParticleFieldState();
}

class _ParticleFieldState extends State<ParticleField>
    with TickerProviderStateMixin {
  List<Particle> particles = [];
  int density = 250;
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
  late final double width = 9 * random.nextDouble();
  late final double height = 10 * random.nextDouble();

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
          Duration(seconds: 15 + (random.nextDouble() * index * 3).toInt()),
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
              child: Container(
                key: _particleKey,
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  color: Color(0xFFefc725),
                  shape: BoxShape.circle,
                ),
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
      x: random.nextDouble() * 350 + 250,
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
