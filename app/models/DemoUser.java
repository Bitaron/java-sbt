package models;
import java.util.*;
import javax.persistence.*;

import com.avaje.ebean.Model;
import play.data.format.*;

@Entity
public class DemoUser extends Model{
    @Id
    public Integer id;

    public static Finder<Integer, DemoUser> find = new Finder<Integer,DemoUser>(DemoUser.class);

    public static int insertAndGet(){
        DemoUser demoUser = new DemoUser();
        demoUser.save();
        return demoUser.id;
    }
}
