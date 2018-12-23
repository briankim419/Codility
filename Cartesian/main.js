function printCombos(array) {
  var results = [[]];
for (var i = 0; i < array.length; i++) {
    var currentSubArray = array[i];
    var temp = [];
    for (var j = 0; j < results.length; j++) {
      for (var k = 0; k < currentSubArray.length; k++) {
        debugger;
        temp.push(results[j].concat(currentSubArray[k]));
      }
    }
    results = temp;
  }
  console.log("FINAL")
  console.log(results);
}

a = [["cat", "dog"], ["foo", "bar", "baz"], ["hello", "world"]]


printCombos(a);

// numbers = [1,2,3,4,5,6,7,8,9,10]
//
// console.log(numbers[1...-2])
