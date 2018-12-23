function euclidean (N, M) {
    // write your code in JavaScript (Node.js 4.0.0)
    if(N === 1) {
        return 1;
    }

    if(M === 1) {
        return N;
    }

    console.log(N / gcd(N, M));
}

function gcd(a, b) {
    if(a % b === 0) {
        return b;
    } else {
      debugger;
        return gcd(b, a % b);
    }
}


function solution(array){
  let results = [[]];

  for(let i = 0; i < array.length; i++){
    let sub = array[i]
    let temp = [];

    for(let j = 0)
  }

}
