import java.util.*;

class BinarySearchTree 
{
	Node root=null;

	//Structure of node.
	class Node{
		int data;
		Node left,right;
		Node(int data){
			this.data=data;
			left=null;
			right=null;
		}
	}

	//Add element in root.
	public void add(int data){
		Node newNode=new Node(data);
		if(root==null){
			root=newNode;
		}
		else{
			Node curr=root,pre=root;
			while(curr!=null){
				pre=curr;
				if(curr.data==data){
					System.out.println(data+" is already exist.");
					return;
				}
				else if(curr.data>data){
					curr=curr.left;
				}
				else{
					curr=curr.right;
				}
			}
			if(pre.data>data)
				pre.left=newNode;
			else
				pre.right=newNode;
		}
		System.out.println(data+" added successfully.");
	}

	//Inorder logic
	public String inorder(Node root){
		if(root==null)
			return "";

		return inorder(root.left) + root.data + " " + inorder(root.right);
	}

	//Preorder logic
	public String preorder(Node root){
		if(root==null)
			return "";

		return root.data + " " + preorder(root.left) + preorder(root.right);
	}

	//Postorder logic
	public String postorder(Node root){
		if(root==null)
			return "";

		return postorder(root.left) + postorder(root.right) +  root.data + " " ;
	}

	// Delete Node from BST
	public String delete(int data){
		if(root==null){
			return "BST is empty.";
		}else{
			Node curr=root,pre=root;
			while(curr!=null){
				if(curr.data==data){
					break;
				}else if(curr.data>data){
					pre=curr;
					curr=curr.left;
				}else{
					pre=curr;
					curr=curr.right;
				}
			}

			if(curr==null){ // data is not find.
				return data+" is not available.";
			}
			else if(curr.left==null || curr.right==null){ // data has 0 or 1 child
				
				if(curr!=root){
					Node address = curr.left!=null?curr.left:curr.right;	
					if(curr.data>pre.data){
						pre.right=address;
					}else{
						pre.left=address;
					}
				}else{
					if(curr.left!=null){
						root=curr.left;
					}else{
						root=curr.right;
					}
				}
				
				return data+" deleted successfully.";

			}else{	// data has 2 child.

				Node nextRoot=null,preRoot=curr;
				nextRoot=curr.left;
				while(nextRoot.right!=null){
					preRoot=nextRoot;
					nextRoot=nextRoot.right;
				}
					
				if(preRoot!=curr){
					preRoot.right=nextRoot.left;
				}else{
					preRoot.left=nextRoot.left;
				}
				curr.data=nextRoot.data;

				return data+" deleted successfully.";
			}
		}
	}

	// Calculate Height of BST using recursive method.
	public int calculateHeight(Node root){
		if(root==null){
			return 0;
		}

		return 1 + Math.max(calculateHeight(root.left), calculateHeight(root.right));
	}

	public static void main(String arg[])
	{
		BinarySearchTree bst=new BinarySearchTree();
		Scanner sc=new Scanner(System.in);

		while(true){
			System.out.println("1. Enter node");
			System.out.println("2. Delete the node");
			System.out.println("3. Inorder traversal");
			System.out.println("4. Preorder traversal");
			System.out.println("5. Postorder traversal");
			System.out.println("6. Height of BST");
			System.out.println("7. Exit");
			System.out.print("\nEnter your choice : ");
			int choice = sc.nextInt();

			switch(choice){
				case 1: 
					System.out.print("\nData : ");
					bst.add(sc.nextInt());
					break;
				case 2:
					System.out.print("\nData : ");
					System.out.println(bst.delete(sc.nextInt()));
					break;
				case 3: 
					if(bst.root==null)
						System.out.print("\nBST is empty.");
					else{
						System.out.println("\nInorder :");
						System.out.println(bst.inorder(bst.root));
					}
					break;
				case 4:
					if(bst.root==null)
						System.out.print("\nBST is empty.");
					else{
						System.out.println("\nPreorder :");
						System.out.println(bst.preorder(bst.root));
					}
					break;
				case 5: 
					if(bst.root==null)
						System.out.print("\nBST is empty.");
					else{
						System.out.println("\nPostorder :");
						System.out.println(bst.postorder(bst.root));
					}
					break;
				case 6:
					System.out.print("\nHeight of BST : "+bst.calculateHeight(bst.root));
					break;
				case 7:
					System.exit(0);
				default : 
					System.out.println("\nYou enter wrong choice.");
			}
			System.out.println("\n");
		}
	}
}