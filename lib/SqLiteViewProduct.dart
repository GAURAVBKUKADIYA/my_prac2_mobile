import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

import 'SqLiteUpdateProduct.dart';

class SqLiteViewProduct extends StatefulWidget {
  @override
  State<SqLiteViewProduct> createState() => _SqLiteViewProductState();
}

class _SqLiteViewProductState extends State<SqLiteViewProduct> {
  Future<List> alldata;

  getdata() async {
    DatabaseHandler obj = new DatabaseHandler();
    setState(() {
      alldata = obj.getAllProducts();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ViewProduct"),
        ),
      ),
      body: FutureBuilder(
        future: alldata,
        builder: (context, snapshots) {
          //all data loaded
          if (snapshots.hasData) {
            if (snapshots.data.length <= 0) {
              return Center(
                child: Text("No Data Available!"),
              );
            } else {
              return ListView.builder(
                itemCount: snapshots.data.length,
                itemBuilder: (context, index) {
                  return Container(

                    width: MediaQuery.of(context).size.width,
                    height: 180.0,
                    color: Colors.grey,
                    margin: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshots.data[index]["product_name"].toString(),
                            style: TextStyle(
                                color:
                                    (snapshots.data[index]["qty"].toString() ==
                                            "debit")
                                        ? Colors.white
                                        : Colors.black,
                                fontSize: 25.0)),
                        Text(
                            "QTY : " + snapshots.data[index]["qty"].toString()),
                        Text(
                            "Rs " + snapshots.data[index]["rprice"].toString()),
                        Text(
                            "Rs " + snapshots.data[index]["sprice"].toString()),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  AlertDialog alert = AlertDialog(
                                      title: Text(
                                        "Warning ?",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      content: Text(
                                          "Are you sure this product has delete"),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () async{
                                              var pid = snapshots.data[index]["pid"].toString();


                                              DatabaseHandler  obj = new DatabaseHandler();
                                              var status = await obj.deleteProduct(pid);

                                              if(status==1)
                                                {

                                                }
                                              else
                                                {

                                                }
                                              Navigator.of(context).pop();
                                              getdata();


                                            }, child: Text("Yes")),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }, child: Text("No")),
                                      ]);
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return alert;
                                      });
                                },
                                child: Text("Delete")),
                            ElevatedButton(
                              onPressed: (){
                                var pid = snapshots.data[index]["pid"].toString();

                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=>SqLiteUpdateProduct(updateid: pid))
                                );
                              },


                              child: Text("Update"),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                  );
                  // return ListTile(
                  //   title: Text(snapshots.data[index]["product_name"].toString()),
                  //   subtitle:Text("QTY : "+snapshots.data[index]["qty"].toString()),
                  //   trailing:Text("Rs "+snapshots.data[index]["sprice"].toString()),
                  // );
                },
              );
            }
          } else {
            //loading
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CircularProgressIndicator(), Text("Please Wait...")],
            );
          }
        },
      ),
    );
  }
}
