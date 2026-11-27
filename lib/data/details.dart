import 'package:flutter/material.dart';

class Details{
  bool _isRemote;
  bool _flutter;
  bool _android;
  bool _ios;

  var _contText;

  RangeValues _currentRangeValues;

  Details(this._contText,this._ios, this._android, this._flutter, this._isRemote, this._currentRangeValues);

  RangeValues get currentRangeValues => _currentRangeValues;

  get contText => _contText;

  bool get ios => _ios;

  bool get android => _android;

  bool get flutter => _flutter;

  bool get isRemote => _isRemote;


}