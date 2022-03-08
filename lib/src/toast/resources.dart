import 'package:flutter/material.dart';

class CWFadeInFrom extends StatefulWidget {
  final Widget child;
  final Duration? duration;
  final bool fromTop;

  CWFadeInFrom({
    required this.child,
    this.duration = const Duration(milliseconds: 3000),
    this.fromTop = false,
  });

  @override
  _CWFadeInFromState createState() => _CWFadeInFromState();
}

class _CWFadeInFromState extends State<CWFadeInFrom> with TickerProviderStateMixin {
  AnimationController? _animController;
  Animation<Offset>? _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 350));

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, widget.fromTop ? -1.0 : 1.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animController!,
        curve: Curves.easeInSine,
      ),
    );

    WidgetsBinding.instance!.addPostFrameCallback(onLayoutDone);
  }

  void onLayoutDone(Duration timeStamp) {
    _animController!.forward().whenComplete(() async {
      await Future.delayed(widget.duration ?? Duration(milliseconds: 3000), () {
        _animController!.reverse();
      });
    });
  }

  @override
  void dispose() {
    _animController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation!,
      child: FadeTransition(
        opacity: _animController!,
        child: widget.child,
      ),
    );
  }
}

enum ToastDirection { top, bottom }