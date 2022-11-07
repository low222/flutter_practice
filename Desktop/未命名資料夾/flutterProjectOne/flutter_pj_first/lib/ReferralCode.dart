import 'package:flutter/material.dart';
import 'assets/constants.dart';

class ReferralCode extends StatelessWidget{

  final _referralCodeController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    //1 textfield
    final referralCode = TextFormField(
      controller: _referralCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 8,
      maxLines: 1,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your referral code',
        contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
        hintStyle: TextStyle(
          color: Colors.white
        )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    //2 button
    final continueBtn = SizedBox(
      width: 100,
      height: 50,
      //color: Colors.blueGrey,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        ),
        onPressed: () { },
        child:  Text('Skip', style: TextStyle(color:Colors.white)),
      ),
    );

    return Scaffold(
    backgroundColor: Colors.orange,
    appBar: AppBar(
      title: Text('Create Account'),
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.amber,
              child: referralCode,
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            ),
            Container(
              child: continueBtn,
              color: Colors.green,
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            ),
        ],
        ),
      ),
      
    );

  }

}