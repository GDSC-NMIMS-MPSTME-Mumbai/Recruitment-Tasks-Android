import 'package:flutter/material.dart';
import 'package:weatherapp/model/json_model.dart';
import 'package:weatherapp/network/network_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();
  WeatherResponse _response;

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8EC5FC),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[2],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width / 6),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width / 6),
                    ),
                    color: Color(0xFFE0C3FC),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_response != null)
                        Column(
                          children: [
                            Image.network(_response.iconUrl),
                            Text(
                              '${_response.main.temp}°',
                              style: TextStyle(fontSize: 40),
                            ),
                            Text(_response.weather[0].description)
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.25),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.75,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.7),
                          boxShadow: kElevationToShadow[2]),
                      child: TextFormField(
                        controller: _cityTextController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "Enter City",
                          fillColor: Color(0xFFb3c4fc),
                          filled: true,
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.7),
                              borderSide: new BorderSide(
                                  width: 0.0, style: BorderStyle.none)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.7),
                              borderSide: new BorderSide(
                                  width: 0.0, style: BorderStyle.none)),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                right: 15.0, left: 15, top: 15, bottom: 15),
                            child: IconButton(
                              icon: Icon(Icons.search_rounded),
                              onPressed: () {
                                _search();
                              },
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                right: 15.0, left: 15, top: 15, bottom: 15),
                            child: Icon(Icons.location_city_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
