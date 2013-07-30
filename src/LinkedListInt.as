/**
 * Created with IntelliJ IDEA.
 * User: Fricken Hamster
 * Date: 7/30/13
 * Time: 2:44 PM
 *
 */
package
{
public class LinkedListInt
{
	
	private var head:LinkedNode;
	private var tail:LinkedNode;
	private var size:int;
	public function LinkedListInt()
	{
		size = 0;
	}
	public function insert(i:int)
	{
		var node:LinkedNode = new LinkedNode(i);
		
		if (!head)
			head = node;
		size++;
	}
	
	public function getSize()
	{
		return size;
	}
}
}
class LinkedNode
{
	public var data:int;
	public var nextNode:LinkedNode;

	public function LinkedNode(data:int)
	{
		this.data = data;
	}
}