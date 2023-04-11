import 'package:flutter/material.dart';

class MyStoriesTab extends StatelessWidget {
  const MyStoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Center(
        child: ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(15),
      children: [
        Container(
          color: Colors.black87,
          child: const Text(
            "Just a container with some color added",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey,
          height: 50,
          width: width,
          child: const Text(
            "Just a container with some color added and some width and height",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green,
          padding: const EdgeInsets.all(5),
          height: 50,
          width: width,
          child: const Text(
            "Just a container with some color added and some width and height and some padding",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.pink,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          height: 80,
          width: width,
          child: const Text(
            "Just a container with some color added and some width and height and some padding and some margin",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.pinkAccent, shape: BoxShape.circle),
          child: const Text(
            "Just a container with some decoration(shape) of circle",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          decoration: const BoxDecoration(
              color: Colors.yellowAccent, shape: BoxShape.circle),
          child: const Text(
            "Just a container with some decoration(shape) added and some width and height and some padding and some margin",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          alignment: Alignment.center,
          child: const Text(
            "Just a container with some decoration(shape) added and some width and height and some padding and some margin fixed with some alignment",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
          alignment: Alignment.center,
          child: const Text(
            "Just a container with some border decoration added and some width and height and some padding and some margin fixed with center.",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          decoration: const BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.09),
          child: const Text(
            "Just a container with some border decoration added and some width and height and some padding and some margin fixed with center. THis container have some transformation",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("assets/images/my_dog.jpeg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstATop),
            ),
            borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
          ),
          decoration: BoxDecoration(
              color: Colors.purpleAccent.shade200,
              borderRadius: const BorderRadius.all(Radius.elliptical(20, 20))),
          alignment: Alignment.center,
          child: const Text(
            "Just a container with some border decoration added and some width and height and some padding and some margin fixed with center. THis container have some transformation",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(25),
          height: 300,
          width: width,
          clipBehavior: Clip.antiAlias,
          foregroundDecoration: BoxDecoration(
            color: Colors.yellowAccent.withOpacity(0.4),
          ),
          decoration: const BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
          child: const Text(
            "Just a container with some border decoration added and some width and height and some padding and some margin fixed with center. THis container have some transformation",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            height: height / 3.5,
            width: width / 3.2,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(80),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Colors.redAccent, Colors.orange]),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                    bottom: height / 8,
                    right: width / 12,
                    child: Container(
                      width: width / 3.5,
                      height: height / 3.5,
                      decoration: const BoxDecoration(
                        color: Colors.white38,
                        shape: BoxShape.circle,
                      ),
                    ))
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.antiAlias,
            height: height / 3.5,
            width: width / 3.2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(60),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Colors.black87, Colors.black12]),
            ),
            child: FractionalTranslation(
                translation: const Offset(-0.25, -0.5),
                child: Container(
                  width: width / 2.5,
                  height: height / 2.5,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.circle,
                  ),
                ))),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
      ],
    ));
  }
}
