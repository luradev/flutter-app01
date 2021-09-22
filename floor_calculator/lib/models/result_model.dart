class ResultModel {
  var areaFloor;
  var piecesByLength;
  var piecesByWidth;

  ResultModel({this.areaFloor, this.piecesByWidth, this.piecesByLength});

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  num get areaWithoutFooter => amountPieces * areaFloor;
  num get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
