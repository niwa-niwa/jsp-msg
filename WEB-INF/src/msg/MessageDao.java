package msg;

import java.util.ArrayList;
import java.util.List;

public class MessageDao {

	private static List<Message> messages = new ArrayList<Message>();
	
	public void save(Message message) {
		messages.add(message);
	}
	
	public List<Message> select(){
		return messages;
	}
}
