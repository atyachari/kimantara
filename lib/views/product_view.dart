// import 'dart:async';
// import 'dart:async';
// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:kimantara/models/cart_bloc.dart';
import 'package:kimantara/models/order.dart';
import 'package:kimantara/models/product.dart';

class ProductView extends StatefulWidget{

  final Product product;
  ProductView({Key key, this.product}) : super(key:key);

  @override
  _ProductView createState() => new _ProductView();
}

class _ProductView extends State<ProductView> {

  final CartBloc _cartBloc = new CartBloc();
  int _quantity = 1;

  // void _increment(){
  //   setState(() {
  //     _quantity++;
  //   });
  // }

  // void _decrement(){
  //   if(_quantity>1) {
  //     setState(() {
  //       _quantity--;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // void _showToast(BuildContext context) {
    // final scaffold = Scaffold.of(context);
    // scaffold.showSnackBar(
    //   SnackBar(
    //     content: const Text('Added to favorite'),
    //     action: SnackBarAction(
    //         label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    //   ),
    // );
  // }
    return new Scaffold(backgroundColor: Colors.white, appBar: new AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)), body:
        new SafeArea(child:
          new Column(children: <Widget>[
            new Container(padding: EdgeInsets.symmetric(horizontal: 20), height: MediaQuery.of(context).size.height*0.85, child:
              new SingleChildScrollView(child:
                new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                  new Center(child:
                    new StreamBuilder(initialData: null, stream: _cartBloc.observableLastOrder, builder: (context, AsyncSnapshot<Order> snapshot){
                      String tag = snapshot.data == null ? "tagHero${widget.product.id}" : "tagHeroOrder${snapshot.data.id}";
                      return new Hero(tag: tag, child:
                        new Image.asset(widget.product.urlToImage, fit: BoxFit.cover, height: MediaQuery.of(context).size.height*0.4)
                      );
                    })
                  ),
                  new Container(margin: EdgeInsets.only(top: 20), child:
                    new Text(widget.product.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black)),
                  ),
                  // new Container(margin: EdgeInsets.only(top: 10), child:
                    // new Text("${widget.product.weight}g", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey)),
                  // ),
                  // new Container(margin: EdgeInsets.only(top: 20), child:
                  //     new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                  //       new Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(50)), child:
                  //         new Row(children: <Widget>[
                  //           new InkWell(
                  //             child: new Icon(Icons.remove, size: 15,),
                  //             onTap: _decrement,
                  //           ),
                  //           new Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: new Text(_quantity.toString(), style: TextStyle(fontSize: 20))),
                  //           new InkWell(
                  //             child: new Icon(Icons.add, size: 15,),
                  //             onTap: _increment,
                  //           ),
                  //         ]),
                  //       ),
                  //       // new Text("\$${(widget.product.price*_quantity).toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black)),
                  //     ])
                  // ),
                  new Container(margin: EdgeInsets.only(top: 40, bottom: 40), child:
                    new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            // _cartBloc.addOrderToCart(widget.product, _quantity);
                            Navigator.of(context).pushNamed('/scan');
                          },
                          child: new Text("Enter Store", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                      SizedBox(height: 15.0),
                      new Text("Available slots:", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height: 15.0),
                      // new Padding(padding: EdgeInsets.only(top: 10), child: new Text(widget.product.about, style: TextStyle(color: Colors.grey, fontSize: 18))),
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            _cartBloc.addOrderToCart(widget.product, _quantity);
                            // Fluttertoast.showToast(
                            //  msg: "This is Center Short Toast",
                            //   toastLength: Toast.LENGTH_LONG,
                            //   gravity: ToastGravity.CENTER,
                            //   timeInSecForIosWeb: 5,
                            //   backgroundColor: Colors.red,
                            //   textColor: Colors.black,
                            //   fontSize: 116.0
                            // );
                            // sleep(const Duration(seconds: 5));
                            // Timer(Duration(seconds: 3), () {
                              Navigator.of(context).pop();
                            // });
                          },
                          child: new Text("10:00AM - 10:30AM", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                      SizedBox(height: 15.0),
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            _cartBloc.addOrderToCart(widget.product, _quantity);
                            Navigator.of(context).pop();
                          },
                          child: new Text("10:30AM - 11:00AM", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                      SizedBox(height: 15.0),
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            _cartBloc.addOrderToCart(widget.product, _quantity);
                            Navigator.of(context).pop();
                          },
                          child: new Text("11:00AM - 11:30AM", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                      SizedBox(height: 15.0),
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            _cartBloc.addOrderToCart(widget.product, _quantity);
                            Navigator.of(context).pop();
                          },
                          child: new Text("1:00PM - 1:30PM", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                      SizedBox(height: 15.0),
                      ButtonTheme(
                        minWidth: 500.0,
                        child: new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
                          onPressed: (){
                            _cartBloc.addOrderToCart(widget.product, _quantity);
                            Navigator.of(context).pop();
                          },
                          child: new Text("1:30PM - 2:00PM", style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                      ),
                    ])
                  )
                ])
              )
            ),
            // new Container(decoration: BoxDecoration(boxShadow:  [
            //   BoxShadow(
            //     color: Colors.white,
            //     blurRadius: 30.0, // has the effect of softening the shadow
            //     spreadRadius: 5.0, // has the effect of extending the shadow
            //     offset: Offset(
            //       0.0, // horizontal, move right 10
            //       -20.0, // vertical, move down 10
            //     ),
            //   )
            // ]), padding: EdgeInsets.symmetric(horizontal: 20), height: MediaQuery.of(context).size.height*0.1, child:
            //   new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
            //     new FlatButton.icon(onPressed: (){}, icon: new Icon(Icons.favorite_border), label: new Text("")),
            //     new SizedBox(width: MediaQuery.of(context).size.width * 0.6, child:
            //       new RaisedButton(color: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)), padding: EdgeInsets.all(20),
            //           onPressed: (){
            //             _cartBloc.addOrderToCart(widget.product, _quantity);
            //             Navigator.of(context).pop();
            //           },
            //           child: new Text("Add to cart", style: TextStyle(fontWeight: FontWeight.bold))
            //       )
            //     )
            //   ]),
            // )
          ])
      )
    );
  }

}