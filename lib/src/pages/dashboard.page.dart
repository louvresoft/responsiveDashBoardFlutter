import 'package:flutter/material.dart';
import 'package:responsivedemo/src/widgets/customAppbar.widget.dart';
import 'package:responsivedemo/src/widgets/customdrawer.widget.dart';

const KdesktopBreakPoint = 1024;
bool fullScreen;

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    // full screen es verdadero cuando media query sea mayor a 1024 pixeles
    fullScreen = (MediaQuery.of(context).size.width >= KdesktopBreakPoint)
        ? true
        : false;

    return LayoutBuilder(
        builder: (context, dimens) => Scaffold(
              drawer: !fullScreen ? builDrawer(context) : null,
              appBar: buildAppbar(),
              body: Row(
                children: [
                  if (fullScreen) builDrawer(context),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topCenter,
                    child: buildBody(dimens.maxWidth, dimens.maxHeight),
                  ))
                ],
              ),
            ));
  }

  buildBody(double maxWidth, double maxHeight) {
    print(maxHeight);
    double customHeight = (maxHeight > 730)?(maxHeight - 250 - 300 - 60 - 120);
    final myScroll = ScrollController();
    return Container(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: myScroll,
        child: ListView(
          controller: myScroll,
          physics: BouncingScrollPhysics(),
          children: [
            Wrap(
              alignment:
                  (fullScreen) ? WrapAlignment.start : WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start, //
              spacing:
                  13, // cantidad de espacio de semaracion entre los widgetrrrrrrrrrrs
              runSpacing: 13,
              children: [
                Card(
                  elevation: 10,
                  child: Container(
                    color: Colors.red,
                    height: 300,
                    width:
                        double.infinity, // dible infinite ocupa todo el espacio
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Container(
                      color: Colors.redAccent, height: 300, width: 362),
                ),
                Card(
                  elevation: 10,
                  child: Container(
                      color: Colors.redAccent, height: 300, width: 362),
                ),
                Container(
                  height: customHeight,
                ),
                buildFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildFooter() {
    return Card(
        elevation: 15.0,
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(color: Colors.black38, width: 2.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  spreadRadius: 3,
                  color: Colors.white10,
                )
              ]),
        ));
  }
}

// body: Center(
//   child:
//       (fullScreen) ? Text("full screen") : Text("Mobile screen"),
// ),
