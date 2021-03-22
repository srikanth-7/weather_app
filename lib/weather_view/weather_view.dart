import 'package:flutter/material.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  int temp=0;
  String cityName="San Fransisco";
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image:  AssetImage("assets/morning.jpeg") )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(temp.toString()+" °C",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 50,
            ),
            ),
            Text(cityName.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 40,
              ),
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    onSubmitted: (String input){
                      
                    },
                    controller: searchController  ,
                    style: TextStyle(color: Colors.white,fontSize: 25),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                      hintText: "Search another city",
                      prefixIcon: Icon(Icons.search,color: Colors.white,)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
