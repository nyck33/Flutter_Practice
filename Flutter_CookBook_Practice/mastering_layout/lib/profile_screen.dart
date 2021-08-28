import 'package:flutter/material.dart';
import './star_custom.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('beachStairs.jpg'),
          Transform.translate(
            //from (0,0) top left (x,y)
            offset: Offset(0, 150),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/cats.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    List<Map> headingValues = [
      {'Age': '10'},
      {'Status': 'Good Siblings'}
    ];
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sylvester and Tama-chan",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Expanded(
                child: StarRating(
                  value: 5,
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          _buildDetailsColumn(headingValues),
          _buildActions(context),
        ],
      ),
    );
    /*
      Padding(
      padding: const EdgeInsets.all(20.0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sylvester and Tama-chan",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            StarRating(
              value: 5,
            ),

            ///these two rows need to be in their own column not Row->Col
            ///for each
            //_buildDetailsRow('Age', '10'),
            //_buildDetailsRow('Status', 'Good Siblings'),
            _buildDetailsColumn(headingValues)
          ],
        ),
      ),
    );

       */
  }

  Widget _buildDetailsColumn(List<Map> headingValues) {
    return Expanded(
      child: Row(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: ListView.builder(
              itemCount: headingValues.length,
              itemBuilder: (context, i) {
                return ListTile(
                  //start here doesn't align
                  title: Text(
                    '${headingValues[i].keys.toString().substring(1, headingValues[i].keys.toString().length - 1)}: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(headingValues[i].values.toString().substring(
                      1, headingValues[i].values.toString().length - 1)),
                );
              },
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //start here doesn't align
          children: [
            Text(
              '$heading: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(value),
          ],
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions, 'Walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[Icon(icon, size: 40), Text(text)],
      ),
    );
  }
}
