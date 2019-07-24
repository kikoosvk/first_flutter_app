import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            color: Colors.deepOrangeAccent,
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: Text(
                        "Margaritta",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 30.0, decoration: TextDecoration.none),
                      )),
                  Expanded(
                      child: Text(
                        "Tomato, Mozzarella, Basil",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 30.0, decoration: TextDecoration.none),
                      ))
                ]),
                Row(children: <Widget>[
                  Expanded(
                      child: Text(
                        "Marinara",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 30.0, decoration: TextDecoration.none),
                      )),
                  Expanded(
                      child: Text(
                        "Tomato, Garlic",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 30.0, decoration: TextDecoration.none),
                      ))
                ]),
                PizzaImageWidget(),
                OrderButton()
              ],
            )));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = new AssetImage('images/pizza1.jpg');
    Image image = new Image(image: pizzaAsset, width: 380.0, height: 400.0);
    return new Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Oder your pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text("Order Completed"),
        content: Text("Thanks for your order")
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert); 
  }
}
