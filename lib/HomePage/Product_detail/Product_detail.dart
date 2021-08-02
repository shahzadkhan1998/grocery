import 'package:flutter/material.dart';
import 'package:grocery/Cart/Cart.dart';
import 'package:grocery/colors/Colors.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_description;
  ProductDetail({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_description,
  });

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121945),
      appBar: AppBar(
        title: Text("Product detail Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF121945),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      height: MediaQuery.of(context).size.height * 0.300,
                      decoration: BoxDecoration(
                        color: ColorConstants.gold,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.7, 0.7),
                              ),
                            ],
                          ),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              widget.product_detail_picture.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Name : " + widget.product_detail_name.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Price :    " +
                                  widget.product_detail_new_price.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ////////////////////////////////////
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Condition: ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ///////////////////////////////////////
                            ],
                          ),
                          //////////////////////////////////////////////
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Delivery: ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "7 days",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ///////////////////////////////////////
                            ],
                          ),
                          /////////////////////////////////////////////////////////////
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Availability: ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "InStock",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ///////////////////////////////////////
                            ],
                          ),

                          ////////////////////////////////////////////////////////////////////////
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Add Quantity:",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _itemCount++;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                _itemCount.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _itemCount--;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              ///////////////////////////////////////
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////////////////////////////////////////////////

              //////////////////////////////////////////////////////////////////
              Container(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 5),
                    child: Text(
                      "About Product",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ),
                  subtitle: Padding(
                    padding:
                        const EdgeInsets.only(left: 5.0, top: 10, right: 20),
                    child: Text(
                      widget.product_detail_description.toString() +
                          "::::" +
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                              "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                              "It has survived not only five centuries, but also the leap into electronic typesetting, "
                              "remaining essentially unchanged."
                              " It was popularised in the 1960s with the release of Letraset "
                              "sheets containing Lorem Ipsum passages,"
                              " and more recently with desktop publishing software like Aldus PageMaker "
                              "including versions of Lorem Ipsum.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.1,
                            blurRadius: 0.1,
                            offset: Offset(0.2, 0.2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width / 2,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Cart(
                                          CartProductName:
                                              widget.product_detail_name,
                                          CartProductPrice:
                                              widget.product_detail_new_price,
                                          qantity: _itemCount,
                                        )));
                          },
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          textColor: Colors.white,
                          child: Text("Buy")),
                    ),

                    //====== Icon of Cart============///////////

                    //====== Icon of favorite============///////////
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
