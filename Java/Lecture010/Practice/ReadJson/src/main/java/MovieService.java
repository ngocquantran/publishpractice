import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class MovieService {

    public ArrayList<Movie> getAllMovie(){
        ArrayList<Movie> movies=new ArrayList<>();

        Gson gson=new Gson();

        try{
            FileReader reader=new FileReader("Movie2.json");
            Type type=new TypeToken<ArrayList<Movie>>(){}.getType();
            movies=gson.fromJson(reader, type);
        }catch (FileNotFoundException e){
            System.out.println("Không tìm thấy file");
        }
        return movies;
    }

    public void showMovie(ArrayList<Movie> movies){
        for (Movie m:movies){
            System.out.println(m);
        }
    }
}
