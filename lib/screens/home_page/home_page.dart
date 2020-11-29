import 'package:flutter/material.dart';
import 'package:venda/layout/layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Layout.primaryColor(),
        toolbarHeight: 100,
        title: Center(
            child: Column(
          children: [
            Text(
              'TG Store',
              style: TextStyle(
                  color: Layout.colorWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Cadastro',
              style: TextStyle(
                  color: Layout.colorWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
      body: Container(
        child: Center(
          child: Text('Home'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext ctx) {
                final input = TextFormField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Produto',
                    contentPadding: EdgeInsets.all(10),
                    labelText: 'Produto',
                  ),
                );
                return AlertDialog(
                  title: Text('Venda'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [input],
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          RaisedButton(
                            onPressed: () {
                              print(_textEditingController.text);
                              Navigator.of(context).pop();
                            },
                            color: Layout.okButtom,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Confirmar'),
                            ),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            onPressed: () {},
                            color: Layout.cancelButtom,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Cancelar'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              });
        },
        backgroundColor: Layout.primaryColor(),
        elevation: 5,
        child: const Icon(Icons.add),
      ),
    );
  }
}
