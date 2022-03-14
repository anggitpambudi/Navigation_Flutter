import 'package:flutter/material.dart';
import 'detail_page.dart';

import 'model/book.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome To The Store"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataServices = getData;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataServices[index], context);
      },
      itemCount: dataServices.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Books data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(image: data.image, name: data.name,);
          }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.image),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)),
            ),
          ],
        ),
      ),
    );
  }
}