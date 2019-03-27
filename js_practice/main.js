function lis (nums){
	let dp = Array(nums.length).fill(1)
	let max_ans = 1


	for(i = 1; i < nums.length; i++){
		for(j = 0; j < i; j++){
			if(nums[i] > nums[j]){
				dp[i] = Math.max(dp[j] + 1, dp[i])
				max_ans = Math.max(max_ans, dp[i])
			}
		}
	}
	console.log(max_ans)
}

lis([3,4,-1,0,6,2])
