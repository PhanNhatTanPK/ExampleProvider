import 'package:example_provider/src/domain/models/model_video3.dart';
import 'package:example_provider/src/presentation/providers/provider_video3.dart';
import 'package:example_provider/src/presentation/views/home_page_video3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class AddPageVideo3 extends StatefulWidget {
  const AddPageVideo3({super.key});

  @override
  State<AddPageVideo3> createState() => _AddPageVideo3State();
}

class _AddPageVideo3State extends State<AddPageVideo3> {
  final textTitle = TextEditingController();
  final textBody = TextEditingController();
  final textId = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> _addNewData() async {
    String title = textTitle.text;
    String body = textBody.text;
    int id = int.parse(textId.text);
    DataModelVideo3 data = DataModelVideo3(title: title, body: body, id: id);
    ProviderVideo3 provider =
        Provider.of<ProviderVideo3>(context, listen: false);
    await provider.addData(data);
    if (provider.isBack) {
      Navigator.push(context,
          MaterialPageRoute(builder: (homePageContext) => HomePageVideo3()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<ProviderVideo3>(builder: ((context, data, child) {
      return data.isLoading
          ? Center(
              child: Container(
                child: SpinKitThreeBounce(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: index.isEven ? Colors.red : Colors.green,
                      ),
                    );
                  },
                ),
              ),
            )
          : Form(
              key: formKey,
              child: Column(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: textId,
                      decoration: const InputDecoration(
                        label: Text("ID"),
                      ),
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: textTitle,
                      decoration: const InputDecoration(
                        label: Text("Title"),
                      ),
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: textBody,
                      decoration: const InputDecoration(
                        label: Text("Body"),
                      ),
                    ),
                  ),
                  Flexible(
                      child: ElevatedButton(
                          onPressed: () => _addNewData(),
                          child: const Text("Add")))
                ],
              ));
    })));
  }
}
