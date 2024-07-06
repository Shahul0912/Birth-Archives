public class userDetails {
 
     String uname;
     String email;

    public userDetails(String un, String em) {
        uname = un;
        email = em;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}