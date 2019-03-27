function appleStock (array){
  let  min = array[0]
  let  max_profit = array[1] - array[0]

  for(i=1; i < array.length - 1; i++){
    let potential_profit = array[i] - min;
    max_profit = Math.max(max_profit, potential_profit)
    min = Math.min(min, array[i])
  }
  console.log(max_profit)
}

let a = [100, 90, 80, 75]

var Parse = require('parse');

function stringTest (string){
  let a = parseInt(string, 10)
  console.log(a)
}


let b = "1+2"

stringTest(b)
