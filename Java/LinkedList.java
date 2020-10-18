import java.util.*;

public class LinkedList 
{
	Node head=null;

	//Node structure in LinkedList 
	class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}

	//Add data in linked list.
	public void add(int data){
		Node newNode=new Node(data);
		if(head==null){
			head=newNode;
		}
		else{
			Node q=head;
			while(q.next!=null)
				q=q.next;
			q.next=newNode;
		}
		System.out.println("Data added successfully.");
	}

	//Change value at specific index.
	public void changeByIndex(int index,int data){
		if(head==null){
			System.out.println("Linked list is empty.");
		}
		else{
			Node q=head;
			int i;
			for(i=0;q!=null&&i<index;i++){
				q=q.next;
			}
			if(q==null || i<index)
				System.out.println("Not available.");
			else{
				q.data=data;
				System.out.println("Data changed successfully.");
			}
		}
	}

	//Change By Data
	public void changeByData(int oldData,int newData){
		if(head==null){
			System.out.println("Linked list is empty.");
		}
		else{
			Node q=head;
			while(q!=null){
				if(q.data==oldData)
					q.data=newData;
				q=q.next;
			}
			System.out.println(oldData+" data changed to "+newData+" successfully.");
		}
	}

	//Delete at specific index.
	public void delete(int index){
		if(head==null){
			System.out.println("Linked list is empty.");
		}
		else{
			Node q=head,pre=head;
			int i;

			for(i=1;q!=null&&i<index;i++){
				pre=q;
				q=q.next;
			}
			if(q==null || i<index)
				System.out.println("Not available.");
			else{
				System.out.println(q.data+" deleted successfully.");
				if(index==0)
					head=head.next;
				else
					pre.next=q.next;
			}
		}
	}

	//Show the linked list.
	public void display(){
		if(head==null){
			System.out.println("Linked list is empty.");
		}
		else{
			Node q=head;
			System.out.println("LinkedList : ");
			while(q!=null){
				System.out.print(q.data+" ");
				q=q.next;
			}
			System.out.println();
		}
	}

	public void reverse(){
		if(head==null){
			System.out.println("Linked list is empty.");
		}
		else{
			Node curr=head,next=null,pre=null;
			while(curr!=null){
				next=curr.next;
				curr.next=pre;
				pre=curr;
				curr=next;
			}
			head=pre;
			System.out.println("LinkedList is reversed.");
		}
	}

	public static void main(String arg[])
	{
		LinkedList ll = new LinkedList();
		Scanner sc=new Scanner(System.in);

		while(true){
			System.out.println("1. Add the data");
			System.out.println("2. Change by index");
			System.out.println("3. Change by data");
			System.out.println("4. Delete data at specific index");
			System.out.println("5. Reverse the LL.");
			System.out.println("6. Display LL");
			System.out.println("7. Exit");
			System.out.print("\nEnter your choice : ");
			int choice=sc.nextInt();
			switch(choice){
				case 1: System.out.print("\nData : ");
						ll.add(sc.nextInt());
						break;
				case 2: System.out.print("\nIndex : ");
						int index=sc.nextInt();
						System.out.print("New Data : ");
						int data=sc.nextInt();
						ll.changeByIndex(index,data);
						break;
				case 3: System.out.print("\nOld Data : ");
						int oldData=sc.nextInt();
						System.out.print("New Data : ");
						int newData=sc.nextInt();
						ll.changeByData(oldData,newData);
						break;
				case 4: System.out.print("\nIndex : ");
						ll.delete(sc.nextInt());
						break;
				case 5: ll.reverse();
						break;
				case 6: ll.display();
						break;
				case 7: System.exit(0);
						break;
				default: System.out.println("You enter wrong choice.");
			}
			System.out.println();
		}
	}
}