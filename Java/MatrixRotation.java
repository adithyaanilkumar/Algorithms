/* 	
	-> All rotation is consider in clockwise.
 	-> Rotation is allowed only in multiple of 90 degree. 
		 Ex. 90,180,270,360,.....
	
	Ex. arr={{1,2,3},{4,5,6},{7,8,9}}
	
	input : rotate(arr,90) or rotate(arr,450)
	output:	arr={{7, 4, 1},
			{8, 5, 2},
			{9, 6, 3}}
	
	input : rotate(arr,180) or rotate(arr,540)
	output: arr={{9, 2, 7},
				{6, 5, 4},
				{3, 8, 1}}

	input : rotate(arr,270) or rotate(arr,630)
	output: arr={{3, 6, 9},
				{2, 5, 8},
				{1, 4, 7}}

	input : rotate(arr,360) or roate(arr,720)
	output: arr={{1, 2, 3},
				 {4, 5, 6},
				 {7, 8, 9}}
*/

class MatrixRotation 
{

	// Main rotation function contains 2d array and rotation degree.
	public static void rotate(int[][] arr,int degree){
		int remainder=degree%360;
		if (remainder==270){
			rotate270(arr);
		}
		else if(remainder==180){
			rotate180(arr);
		}
		else if(remainder==90){
			rotate90(arr);
		}
	}

	// 90 degree Rotation
	private static void rotate90(int[][] arr){

		int len=arr.length;

		for(int i=0;i<len-1;i++){
			for(int j=i;j<len-i-1;j++){
				int temp = arr[len-j-1][i];
				arr[len-j-1][i]=arr[len-i-1][len-1-j];
				arr[len-i-1][len-1-j]=arr[j][len-i-1];
				arr[j][len-i-1]=arr[i][j];
				arr[i][j]=temp;
			}
		}
		
	}

	// 270 degree Rotation
	private static void rotate270(int[][] arr){ 
		
		// direct method.
		int len=arr.length;

		for(int i=0;i<len-1;i++){
			for(int j=i;j<len-i-1;j++){
				int temp=arr[i][j];
				arr[i][j]=arr[j][len-i-1];
				arr[j][len-i-1]=arr[len-i-1][len-1-j];
				arr[len-i-1][len-1-j]=arr[len-j-1][i];
				arr[len-j-1][i]=temp;
			}
		}

		/*
		// 270 = 90+180
		rotate90(arr);
		rotate180(arr);
		 */
		
		/*
		// 270 = 90+90+90
		rotate90(arr);
		rotate90(arr);
		rotate90(arr);
		 */
	}

	// 180 degree Rotation
	private static void rotate180(int[][] arr){

		//direct method.
		int len=arr.length;

		for(int i=0;i<len;i++){
			for(int j=0;j<len/2;j++){
				int temp=arr[i][j];
				arr[i][j]=arr[len-i-1][len-j-1];
				arr[len-i-1][len-j-1]=temp;
			}
		}

		/*
		// 180 = 90+90
		rotate90(arr);
		rotate90(arr);
		*/
	}
}