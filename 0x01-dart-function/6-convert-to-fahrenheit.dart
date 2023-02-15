List<double> convertToF(List<double> temperaturesInC) {
    
    var idx = 0;
    List<double> list = [];
   
    for (idx = 0 ; idx < temperaturesInC.length; idx++) { list.add((double.parse((temperaturesInC[idx] * 9 / 5 + 32).toStringAsFixed(2)))); }
    return list;
}