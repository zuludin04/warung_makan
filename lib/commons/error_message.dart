import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorMessage extends StatelessWidget {
  final bool isError;
  final Function retryButton;
  final String errorMessage;

  ErrorMessage({
    @required this.isError,
    @required this.errorMessage,
    this.retryButton,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            isError ? 'assets/ic_error.svg' : 'assets/ic_not_found.svg',
            width: 86.0,
            height: 86.0,
          ),
          SizedBox(height: 20.0),
          Text(
            errorMessage,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 25.0),
          Visibility(
            visible: isError,
            child: RaisedButton(
              onPressed: retryButton,
              child: Text(
                'Try Again',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
