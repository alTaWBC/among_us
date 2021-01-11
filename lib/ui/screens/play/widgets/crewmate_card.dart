import 'package:among_us/configs/colors.dart';
import 'package:among_us/configs/images.dart';
import 'package:among_us/configs/typedefinitions.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

final List<bool> _longtasks = List<bool>.generate(3, (_) => false);
final List<bool> _shorttasks = List<bool>.generate(5, (_) => false);
final List<bool> _commontasks = List<bool>.generate(2, (_) => false);

class CrewmateCard extends StatefulWidget {
  const CrewmateCard(this._cardSize, {Key key}) : super(key: key);
  final Size _cardSize;

  @override
  _CrewmateCardState createState() => _CrewmateCardState();
}

class _CrewmateCardState extends State<CrewmateCard> {
  final GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

  void toggleCard() => _cardKey.currentState.toggleCard();

  @override
  Widget build(BuildContext context) {
    final double height = widget._cardSize.height;
    final double width = widget._cardSize.width;
    final Size iconSize = Size(width * .15, height * .15);
    return Column(
      children: <Widget>[
        FlipCard(
          key: _cardKey,
          flipOnTouch: false,
          back: CardFace(
            height: height,
            width: width,
            iconSize: iconSize,
            dead: true,
            toggle: toggleCard,
          ),
          front: CardFace(
            height: height,
            width: width,
            iconSize: iconSize,
            dead: false,
            toggle: toggleCard,
          ),
        ),
      ],
    );
  }
}

class TaskBar extends StatefulWidget {
  const TaskBar({Key key, this.iconSize = const Size(30, 30), @required this.tasks}) : super(key: key);
  final Size iconSize;
  final List<bool> tasks;

  @override
  _TaskBarState createState() => _TaskBarState();
}

class _TaskBarState extends State<TaskBar> {
  List<Image> getTasks() {
    final List<Image> images = <Image>[];
    for (int i = 0; i < widget.tasks.length; i++) {
      images.add(
        Image(
          width: widget.iconSize.width * .9,
          height: widget.iconSize.height * .9,
          image: AppImages.yellow,
        ),
      );
    }
    return images;
  }

  @override
  Widget build(BuildContext context) => ToggleButtons(
        disabledBorderColor: AppColors.black,
        fillColor: AppColors.black,
        constraints: BoxConstraints.tight(widget.iconSize),
        onPressed: (int index) => setState(() => widget.tasks[index] = !widget.tasks[index]),
        isSelected: widget.tasks,
        children: getTasks(),
      );
}

class CardFace extends StatelessWidget {
  const CardFace({Key key, @required this.width, @required this.height, @required this.iconSize, @required this.dead, @required this.toggle})
      : super(key: key);

  final Toggle toggle;
  final double width;
  final double height;
  final Size iconSize;
  final bool dead;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: width * .9,
                height: height * .9,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.white,
                ),
              ),
            ),
            Positioned(
              bottom: height * .44,
              left: width * .1,
              child: TaskBar(iconSize: iconSize, tasks: _commontasks),
            ),
            Positioned(
              bottom: height * .27,
              left: width * .1,
              child: TaskBar(iconSize: iconSize, tasks: _longtasks),
            ),
            Positioned(
              bottom: height * .1,
              left: width * .1,
              child: TaskBar(iconSize: iconSize, tasks: _shorttasks),
            ),
            Positioned(
              top: dead ? -height * .05 : -height * .01,
              left: dead ? -width * .02 : -width * .08,
              child: Image(
                height: height * .4,
                width: width * .4,
                image: dead ? AppImages.yellowDead : AppImages.yellow,
              ),
            ),
            Positioned(
              top: height * 0.1,
              right: width * 0.07,
              child: GestureDetector(
                onTap: toggle,
                child: Image(
                  height: height * .15,
                  width: width * .15,
                  image: AppImages.kill,
                ),
              ),
            ),
          ],
        ),
      );
}
