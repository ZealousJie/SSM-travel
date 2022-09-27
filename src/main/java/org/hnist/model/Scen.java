package org.hnist.model;

public class Scen {
    private int sid;
    private int tid;
    private String sname;
    private String spic;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getHid() {
        return tid;
    }

    public void setHid(int tid) {
        this.tid = tid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSpic() {
        return spic;
    }

    public void setSpic(String spic) {
        this.spic = spic;
    }

    @Override
    public String toString() {
        return "Scen{" +
                "sid=" + sid +
                ", tid=" + tid +
                ", sname='" + sname + '\'' +
                ", spic='" + spic + '\'' +
                '}';
    }
}
