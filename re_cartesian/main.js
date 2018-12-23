function solution(A) {

    if(A.length === 1) {
        return A[0];
    }

    var maxSum = -Infinity;
    var sums = [];
    var i = 0;

    for(i=0; i<A.length; i++) {
        if(i === 0) {
            sums[i] = A[i];
        } else {
            sums[i] = Math.max(sums[i-1] + A[i], A[i]);
        }

        maxSum = Math.max(sums[i], maxSum);
    }

    return maxSum;
}
