package student;

import java.beans.*;
import java.io.Serializable;

public class Student implements Serializable {
    
   public String registration_number;
   public String name;
   public String programme;
   public int year_of_admission;
   public String hod;

    public String getRegistration_number() {
        return registration_number;
    }

    public void setRegistration_number(String registration_number) {
        this.registration_number = registration_number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProgramme() {
        return programme;
    }

    public void setProgramme(String programme) {
        this.programme = programme;
    }

    public int getYear_of_admission() {
        return year_of_admission;
    }

    public void setYear_of_admission(int year_of_admission) {
        this.year_of_admission = year_of_admission;
    }

    public String getHod() {
        return hod;
    }

    public void setHod(String hod) {
        this.hod = hod;
    }
   
}
