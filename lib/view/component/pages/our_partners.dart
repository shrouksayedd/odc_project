import 'package:flutter/material.dart';

class our_partners extends StatelessWidget {
  const our_partners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Our partner",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              )),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
            leading: IconButton( icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.orange,), onPressed: () { Navigator.pop(context); },)

        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(

                alignment: AlignmentDirectional.topStart,
                children: [
                  Image(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_DpJaeRJ2_wIHqixEtMLcfOfDrxrU_SPfmA&usqp=CAU",
                    ),width: double.infinity,
                    fit: BoxFit.cover,

                  ),
                  Text("ODCs", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20,
                  ),),


                ],
              ),
            ),
          ),
        ),

    );
  }
}
