import 'package:flutter/material.dart';

class FadeOnScroll extends StatefulWidget {
  final ScrollController? scrollController;
  final double? heightOfScreen;

  FadeOnScroll({
    Key? key,
    @required this.heightOfScreen,
    @required this.scrollController,
  });

  @override
  _FadeOnScrollState createState() => _FadeOnScrollState();
}

class _FadeOnScrollState extends State<FadeOnScroll> {
  @override
  initState() {
    super.initState();
    widget.scrollController!.addListener(_setOffset);
  }

  @override
  dispose() {
    widget.scrollController!.removeListener(_setOffset);
    super.dispose();
  }

  void _setOffset() => setState(() {});

  double _calculateOpacity() {
    final double offset = widget.scrollController!.offset;
    final double startPos = widget.heightOfScreen! - kToolbarHeight - 100;
    final double endPos = widget.heightOfScreen! - kToolbarHeight;
    if (offset >= startPos && offset <= endPos) {
      return (offset - startPos) / (endPos - startPos);
    } else if (offset < startPos)
      return 0;
    else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    double _opacity = _calculateOpacity();

    return IgnorePointer(
      ignoring: _opacity == 1 ? false : true,
      child: Opacity(
          opacity: _opacity,
          child: Container(
            padding: const EdgeInsets.only(top: kToolbarHeight * (3 / 5)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Text("Sharer"),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/search',
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
