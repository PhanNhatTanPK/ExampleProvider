import 'package:example_provider/src/domain/models/model_video3.dart';
import 'package:example_provider/src/presentation/providers/provider_video3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class HomePageVideo3 extends StatefulWidget {
  const HomePageVideo3({super.key});

  @override
  State<HomePageVideo3> createState() => _HomePageVideo3State();
}

class _HomePageVideo3State extends State<HomePageVideo3> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<ProviderVideo3>(context, listen: false);
    provider.getSingleData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProviderVideo3>(builder: (context, data, child) {
        return Container(
            padding: EdgeInsets.all(20),
            child: data.isLoading
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
                : Column(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          data.data?.title ?? "",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                          fit: FlexFit.tight,
                          child: Text(data.data?.body ?? "",
                              style: const TextStyle(fontSize: 12)))
                    ],
                  ));
      }),
    );
  }
}
