package sis1.sis1;


import java.util.Date;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoException;


public class App 
{
    public static void main( String[] args ){

		try {
			
			MongoClient mongoClient = new MongoClient(new
					MongoClientURI("mongodb://localhost:27017"));
			
			DB database = mongoClient.getDB("bd_sis1");
			
			DBCollection collection = database.getCollection("clima");
			
			BasicDBObject posicaoDBObj = new BasicDBObject();
			posicaoDBObj.put("longitude", 9.96233);
			posicaoDBObj.put("latitude", 49.80404);
			
			BasicDBObject basicDBObject = new BasicDBObject();
			basicDBObject.put("regiao", 2);
			basicDBObject.put("chuva_percent", 0);
			basicDBObject.put("umidade_percent",27);
			basicDBObject.put("vento_kmh",0);
			basicDBObject.put("posicao", posicaoDBObj);
			basicDBObject.put("data_hora", new Date() );
						
			collection.insert(basicDBObject);
 
			DBCursor cursorDoc = collection.find();
			while (cursorDoc.hasNext()) {
				System.out.println(cursorDoc.next());
			}
 
			System.out.println("Done");
 
		//} catch (UnknownHostException e) {
		//	e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		}

    }
}
