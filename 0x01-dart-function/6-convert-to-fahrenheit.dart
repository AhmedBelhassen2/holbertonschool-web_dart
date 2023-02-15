List<String> convertToF(List<double> tempInC) {
    
    var idx = 0;
    List<String> list = [];
   
    for (; idx < tempInC.length; idx++) { list.add((tempInC[idx] * 9 / 5 + 32).toStringAsFixed(2)); }
    return list;
}