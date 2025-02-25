import 'package:flutter/material.dart';

class SwipeCard extends StatefulWidget {
  final Widget child;
  final VoidCallback onSwipeLeft;
  final VoidCallback onSwipeRight;

  const SwipeCard({
    Key? key,
    required this.child,
    required this.onSwipeLeft,
    required this.onSwipeRight,
  }) : super(key: key);

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  Offset _position = Offset.zero;
  bool _isDragging = false;
  Size _screenSize = Size.zero;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenSize = MediaQuery.of(context).size;
  }

  void _onDragStart(DragStartDetails details) {
    setState(() {
      _isDragging = true;
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _position += details.delta;
    });
  }

  void _onDragEnd(DragEndDetails details) {
    setState(() {
      _isDragging = false;
    });

    if (_position.dx > _screenSize.width * 0.25) {
      widget.onSwipeRight();
    } else if (_position.dx < -_screenSize.width * 0.25) {
      widget.onSwipeLeft();
    }

    setState(() {
      _position = Offset.zero;
    });
  }

  double _getRotationAngle() {
    const double maxRotationAngle = 15; 
    return _position.dx / _screenSize.width * maxRotationAngle;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onDragStart,
      onPanUpdate: _onDragUpdate,
      onPanEnd: _onDragEnd,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()
          ..translate(_position.dx, _position.dy)
          ..rotateZ(_isDragging ? _getRotationAngle() * (3.141592653589793 / 180.0) : 0),
        child: widget.child,
      ),
    );
  }
}