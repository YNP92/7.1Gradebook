package co.grandcircus.gradebook;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//May need to change to springlabsDB 
@Document("grades") // Or whatever collection name you want
public class Grade {
    // always add the ID class to a model that is going to be a DTO
    @Id
    private String id;
    private String name;
    private String type;
    private double score;
    private double total;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getScore() {
        return this.score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public double getTotal() {
        return this.total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Grade(){

    }
    
    public Grade(String id, String name, String type, double score2, double total2) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.score = score2;
        this.total = total2;
    }

    @Override
    public String toString() {
        return "{" +
            " id='" + getId() + "'" +
            ", name='" + getName() + "'" +
            ", type='" + getType() + "'" +
            ", score='" + getScore() + "'" +
            ", total='" + getTotal() + "'" +
            "}";
    }

}
