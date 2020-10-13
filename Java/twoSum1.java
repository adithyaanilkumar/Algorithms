// You get passed an array of numbers. Find the indices of two numbers that add upto a particlar target twoSum
// assume that there is only one solution
// input=[1,4,5,2],target=9
// output=[1,2] since 4+5=9
import java.util.HashMap;
class twoSum1{
	public static int[] twoSum(int[] nums,int target){
		HashMap<Integer,Integer> map= new HashMap<Integer,Integer>();

		for(int i=0;i<nums.length;i++){
			map.put(nums[i],i);
		}
		for(int i=0;i<nums.length;i++)
		{
			int complement=target-nums[i];
			if(map.containsKey(complement) && map.get(complement)!=i)
				return new int[] {i,map.get(complement)};
		}
		return new int[]{};
	}

	public static void main(String[] args){
		int nums[]={2,4,3,5,7};
		int target=8;
		int ans[]=twoSum(nums,target);

		for(int i:ans)
			System.out.print(i+" "); //expected [2,3]
	}
}