function printCombos(array) {
  var results = [[]];
  for (var i = 0; i < array.length; i++) {
    var currentSubArray = array[i];
    var temp = [];
    for (var j = 0; j < results.length; j++) {
      for (var k = 0; k < currentSubArray.length; k++) {
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

var numbers = [45, 4, 9, 16, 25];
var over18 = numbers.filter(myFunction);

function myFunction(value, index, array) {
  return value > 18;
}


for(let i=0; i < 5; i++){

}
