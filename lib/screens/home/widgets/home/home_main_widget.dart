import 'package:flutter/material.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/first_home.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/second_home.dart';
import 'package:bisharer/screens/home/widgets/home/fade_on_scroll.dart';

class BuildCustomScrollView extends StatefulWidget {
  BuildCustomScrollView(this.scrollController, this.heightOfScreen);
  final ScrollController scrollController;
  final double heightOfScreen;
  @override
  _BuildCustomScrollViewState createState() => _BuildCustomScrollViewState();
}

class _BuildCustomScrollViewState extends State<BuildCustomScrollView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomScrollView(
      controller: widget.scrollController,
      // key: PageStorageKey('home'),
      physics: ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          stretch: true,
          pinned: true,
          collapsedHeight: kToolbarHeight,
          automaticallyImplyLeading: false,
          expandedHeight: MediaQuery.of(context).size.height,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: FirstHomeWidget(),
            title: FadeOnScroll(
              scrollController: widget.scrollController,
              heightOfScreen: widget.heightOfScreen,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            secondHome(),
          ),
        ),
      ],
    );
  }
}

class HomeMainWidget extends StatefulWidget {
  @override
  _HomeMainWidgetState createState() => _HomeMainWidgetState();
}

class _HomeMainWidgetState extends State<HomeMainWidget> {
  final ScrollController scrollController =
      ScrollController(keepScrollOffset: true);
  bool reachedTop = false;
  double? heightOfScreen;

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    heightOfScreen = MediaQuery.of(context).size.height;
    return NotificationListener<ScrollNotification>(
      onNotification: (Notification scrollNotification) {
        if (scrollNotification is ScrollEndNotification) {
          _onEndScroll(scrollNotification);
          return true;
        }
        return false;
      },
      child: BuildCustomScrollView(scrollController, heightOfScreen!),
    );
  }

  void _onEndScroll(ScrollEndNotification scrollNotification) {
    final double offset = scrollController.offset;
    if ((offset > 0) && (offset < heightOfScreen! - kToolbarHeight)) {
      if (reachedTop) {
        animateList(
          position: 0,
          duration: (heightOfScreen! - offset),
        );
        reachedTop = false;
      } else {
        final pos = heightOfScreen! - kToolbarHeight + 1;
        animateList(
          position: pos,
          duration: (offset - kToolbarHeight),
        );
        reachedTop = true;
      }
    } else if (offset >= heightOfScreen! - kToolbarHeight) {
      reachedTop = true;
    } else {
      reachedTop = false;
    }
  }

  void animateList({double? position, double? duration}) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      scrollController.animateTo(
        position!,
        duration: Duration(milliseconds: duration!.toInt()),
        curve: Curves.easeInCubic,
      );
    });
  }
}
