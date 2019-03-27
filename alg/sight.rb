require 'pry'

def max_score_sightseeing_pair(a)
    max_1 = {a[0] => 0}
    max_2 = {a[1] => 1}
    ans = max_1.keys[0] + max_1.values[0] + max_2.keys[0] - max_2.values[0]

    a.each_with_index do |num, idx|

        if num + idx > max_1.keys[0] + max_1.values[0]
          binding.pry
            max_1.delete(max_1.keys[0])
            max_1[num] = idx
        end

        if num - idx > max_2.keys[0] - max_2.values[0] && idx > max_1.values[0]
          binding.pry
            max_2.delete(max_2.keys[0])
           max_2[num] = idx
           ans = [ans, max_1.keys[0] + max_1.values[0] + max_2.keys[0] - max_2.values[0]].max
        end
    end
    binding.pry
    return ans
end

a = [8,1,5,2,6]
b = [1,3,5]
max_score_sightseeing_pair(b)

public int maxScoreSightseeingPair(int[] A) {

    int ans =A[0];
    int prevBestIdx =0;
    for(int j=1;j<A.length;j++){
        ans = Math.max(ans, A[prevBestIdx]+prevBestIdx+A[j]-j);
        if(A[prevBestIdx ]+prevBestIdx <A[j]+j){
            prevBestIdx =j;
        }
    }
    return ans;
}
