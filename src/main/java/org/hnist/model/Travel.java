package org.hnist.model;

import org.springframework.web.multipart.MultipartFile;

public class Travel {
    private Integer travelId;
    private String tname;
    private String province;
    private String tdescription;
    private String ttitle;
    //照片文件名
    private String tpic;

    public String getTtitle() {
        return ttitle;
    }

    public void setTtitle(String ttitle) {
        this.ttitle = ttitle;
    }

    public String getTpic() {
        return tpic;
    }

    public void setTpic(String tpic) {
        this.tpic = tpic;
    }

    public MultipartFile getMyfile() {
        return myfile;
    }

    public void setMyfile(MultipartFile myfile) {
        this.myfile = myfile;
    }

    //实际照片文件
    private MultipartFile myfile;

    public Integer getTravelId() {
        return travelId;
    }

    public void setTravelId(Integer travelId) {
        this.travelId = travelId;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getTdescription() {
        return tdescription;
    }

    public void setTdescription(String tdescription) {
        this.tdescription = tdescription;
    }

    @Override
    public String toString() {
        return "Travel{" +
                "travelId=" + travelId +
                ", tname='" + tname + '\'' +
                ", province='" + province + '\'' +
                ", tdescription='" + tdescription + '\'' +
                '}';
    }
}
