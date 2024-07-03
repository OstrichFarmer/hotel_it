import 'package:flutter/material.dart';
import 'package:hotel_it/views/onboarding/onboarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  OnboardingViewState createState() => OnboardingViewState();
}

class OnboardingViewState extends State<OnboardingView>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;

  late Animation<Offset> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();

    // First image animation
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation1 = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).chain(CurveTween(curve: Curves.bounceOut)).animate(_controller1);

    // Second and third image animation
    _controller2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller3 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation2 = Tween<double>(begin: 1.0, end: 1.2)
        .chain(CurveTween(curve: Curves.elasticInOut))
        .animate(_controller2);
    _animation3 = Tween<double>(begin: 1.0, end: 1.2)
        .chain(CurveTween(curve: Curves.elasticInOut))
        .animate(_controller3);

    // Fourth image animation
    _controller4 =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animation4 = Tween<Offset>(
      begin: const Offset(1, 1),
      end: Offset.zero,
    ).chain(CurveTween(curve: Curves.easeInOut)).animate(_controller4);

    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 1), () {
      _controller1.forward();
    });

    Future.delayed(const Duration(seconds: 1), () {
      _controller2.forward();
    });

    Future.delayed(const Duration(seconds: 1), () {
      _controller3.forward();
    });

    Future.delayed(const Duration(seconds: 8), () {
      _controller4.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      onViewModelReady: (model) => model.startTimer(),
      builder: (
        BuildContext context,
        OnboardingViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: model.backgroundColors[model.currentIndex],
          body: Center(
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _buildAnimatedImage(model),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAnimatedImage(OnboardingViewModel model) {
    Widget image;

    switch (model.currentIndex) {
      case 0:
        image = SlideTransition(
          position: _animation1,
          child: Image.asset(
            model.images[model.currentIndex],
            key: ValueKey<String>(model.images[model.currentIndex]),
          ),
        );
        break;
      case 1:
        image = ScaleTransition(
          scale: _animation2,
          child: Image.asset(
            model.images[model.currentIndex],
            key: ValueKey<String>(model.images[model.currentIndex]),
          ),
        );
        break;
      case 2:
        image = ScaleTransition(
          scale: _animation3,
          child: Image.asset(
            model.images[model.currentIndex],
            key: ValueKey<String>(model.images[model.currentIndex]),
          ),
        );
        break;
      case 3:
        image = SlideTransition(
          position: _animation4,
          child: Image.asset(
            model.images[model.currentIndex],
            key: ValueKey<String>(model.images[model.currentIndex]),
          ),
        );
        break;
      default:
        image = Container();
    }

    return image;
  }
}
