import 'package:flutter/material.dart';
import 'package:project_1/Providers/lengthprovider.dart';
import 'package:project_1/Providers/pressureprovider.dart';
import 'package:project_1/Providers/speedprovider.dart';
import 'package:project_1/Providers/timeprovider.dart';
import 'package:project_1/Providers/volumeprovider.dart';
import 'package:project_1/Providers/weightprovider.dart';
import 'package:provider/provider.dart';
import 'package:project_1/Providers/areaprovider.dart';
import 'package:project_1/Providers/mileageprovider.dart';
import 'package:project_1/Providers/powerprovider.dart';
import 'package:project_1/Providers/tempratureprovider.dart';

import 'package:project_1/Modal_Data/converterdata.dart';
import 'package:project_1/Providers/binaryprovider.dart';
import 'package:project_1/Providers/currencyprovider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.convertername,
    required this.gradientcolor,
  });

  final String convertername;
  final dynamic gradientcolor;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool texteditorenable = false;
  final _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var a;

    if (widget.convertername == "Area") {
      a = Provider.of<AreaProvider>(context, listen: false);
    } else if (widget.convertername == "Data") {
      a = Provider.of<BinaryProvider>(context, listen: false);
    } else if (widget.convertername == "Currency") {
      a = Provider.of<CurrencyProvider>(context, listen: false);
    } else if (widget.convertername == "Mileage") {
      a = Provider.of<MileageProvider>(context, listen: false);
    } else if (widget.convertername == "Length") {
      a = Provider.of<LengthProvider>(context, listen: false);
    } else if (widget.convertername == "Power") {
      a = Provider.of<PowerProvider>(context, listen: false);
    } else if (widget.convertername == "Volume") {
      a = Provider.of<VolumeProvider>(context, listen: false);
    } else if (widget.convertername == "Temprature") {
      a = Provider.of<TempratureProvider>(context, listen: false);
    } else if (widget.convertername == "Time") {
      a = Provider.of<TimeProvider>(context, listen: false);
    } else if (widget.convertername == "Pressure") {
      a = Provider.of<PressureProvider>(context, listen: false);
    } else if (widget.convertername == "Weight") {
      a = Provider.of<WeightProvider>(context, listen: false);
    } else if (widget.convertername == "Speed") {
      a = Provider.of<SpeedProvider>(context, listen: false);
    }

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //big column
          Column(
            children: [
              //1st container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: widget.gradientcolor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.convertername,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * 0.45,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: TextField(
                                controller: a.textEditingController1,
                                focusNode: _focusNode,
                                onChanged: (data) {
                                  if (a.textEditingController1.text.isEmpty) {
                                    texteditorenable = false;
                                  } else {
                                    texteditorenable = true;
                                  }
                                  setState(() {});
                                },
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white10,
                                    ),
                                  ),
                                  hintText: 'Enter Value',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.4,
                            alignment: Alignment.centerRight,
                            child: Consumer<CurrencyProvider>(
                              builder: (context, value, child) {
                                return DropdownButton(
                                  isExpanded: true,
                                  itemHeight: null,
                                  underline: const SizedBox(),
                                  elevation: 16,
                                  borderRadius: BorderRadius.circular(30),
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 42,
                                  items:
                                      pagenameToDataList[widget.convertername],
                                  onChanged: (s) {
                                    // print(widget.convertername);
                                    setState(() {
                                      a.setunit1(s!);
                                    });
                                  },
                                  hint: Text(
                                    a.getUnit1,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //2nd container
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width * 0.45,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            controller: a.textEditingController2,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                ),
                              ),
                              // prefixText: "\$",
                              hintText: 'Enter Value',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.4,
                        alignment: Alignment.centerRight,
                        child: Consumer<CurrencyProvider>(
                          builder: (context, value, child) {
                            return DropdownButton(
                              isExpanded: true,
                              itemHeight: null,
                              underline: const SizedBox(),
                              icon: const Icon(Icons.arrow_drop_down),
                              borderRadius: BorderRadius.circular(30),
                              iconSize: 42,
                              items: pagenameToDataList[widget.convertername],
                              onChanged: (s) {
                                setState(() {
                                  a.setunit2(s!);
                                });
                              },
                              hint: Text(
                                a.getUnit2,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: widget.gradientcolor[0],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: texteditorenable
                  ? () {
                      a.convert();
                      _focusNode.unfocus();
                    }
                  : null,
              backgroundColor: texteditorenable
                  ? widget.gradientcolor[0]
                  : widget.gradientcolor[1],
              focusElevation: 2, elevation: 10,
              child: const Icon(
                Icons.swap_vert,
                color: Colors.black,
                size: 40,
              ),
              // hoverColor: Colors.blue.shade100,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                Navigator.of(context).pop();
              },
              backgroundColor: widget.gradientcolor[1],
              elevation: 0,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
