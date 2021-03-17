import 'package:flutter/material.dart';

builDrawer(BuildContext context) {
  buildListTitle(int index, IconData icon, String name) {
    return Container(
      child: ListTile(
        title: TextButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.red[600]),
              SizedBox(width: 20.0),
              Text(
                name,
                style: TextStyle(color: Colors.blueGrey[600]),
              )
            ],
          ),
        ),
      ),
    );
  }

  return Container(
    width: 265,
    child: Drawer(
        elevation: 15.0,
        child: Container(
          color: Colors.white,
          child: Scrollbar(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.redAccent[400],
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(
                            "https://scontent.fmex31-1.fna.fbcdn.net/v/t1.0-9/116342210_107099391094108_2693571932246494536_o.png?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHpt5cwcMXHF5hwAZdIKinLOQlUD7ajo1w5CVQPtqOjXOZjrJZWnkQ0KBJLUTHkA391wxdeYBMz0WzBanH-yqPI&_nc_ohc=qc3z8203hAMAX-0sR1K&_nc_ht=scontent.fmex31-1.fna&oh=e4fe4f1ca9562b872e8999bba4ab0007&oe=607752E4"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Louvresoft",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                buildListTitle(0, Icons.search, "Busqueda"),
                buildListTitle(1, Icons.delete, "Inbox"),
                buildListTitle(2, Icons.info, "Spam"),
                buildListTitle(3, Icons.flag, "Updates"),
              ],
            ),
          )),
        )),
  );
}
