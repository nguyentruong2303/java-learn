package tp.kits3.livedinner.vo;

import java.sql.Timestamp;
// VO is value object (== table of DB) can call Model, Entity
/**
 * DB connect , crud , convert too compotable 
 * mybatis :  Spring mvc
 * DB framework -hibernate : new db tables by developer : Spring boot
 * 
 * all setting important path
 * 1. config.xml : for mybatis
 * 2. mapper.xml : for sql
 * @author PC15
 *
 */

public class Book {

    private Integer bkid;

    private String bkname;

    private String bkemail;

    private String bkphone;

    private String bktime;

    private Integer bknum;

    private String booking;

    private String bkmemo;

    public Integer getBkid() {
        return bkid;
    }

    public void setBkid(Integer bkid) {
        this.bkid = bkid;
    }

    public String getBkname() {
        return bkname;
    }

    public void setBkname(String bkname) {
        this.bkname = bkname;
    }

    public String getBkemail() {
        return bkemail;
    }

    public void setBkemail(String bkemail) {
        this.bkemail = bkemail;
    }

    public String getBkphone() {
        return bkphone;
    }

    public void setBkphone(String bkphone) {
        this.bkphone = bkphone;
    }

    public String getBktime() {
        return bktime;
    }

    public void setBktime(String bktime) {
        this.bktime = bktime;
    }

    public Integer getBknum() {
        return bknum;
    }

    public void setBknum(Integer bknum) {
        this.bknum = bknum;
    }

    public String getBooking() {
        return booking;
    }

    public void setBooking(String booking) {
        this.booking = booking;
    }

    public String getBkmemo() {
        return bkmemo;
    }

    public void setBkmemo(String bkmemo) {
        this.bkmemo = bkmemo;
    }

    // Book 모델 복사
    public void CopyData(Book param)
    {
        this.bkid = param.getBkid();
        this.bkname = param.getBkname();
        this.bkemail = param.getBkemail();
        this.bkphone = param.getBkphone();
        this.bktime = param.getBktime();
        this.bknum = param.getBknum();
        this.booking = param.getBooking();
        this.bkmemo = param.getBkmemo();
    }

	@Override
	public String toString() {
		return "Book [bkid=" + bkid + ", bkname=" + bkname + ", bkemail=" + bkemail + ", bkphone=" + bkphone
				+ ", bktime=" + bktime + ", bknum=" + bknum + ", booking=" + booking + ", bkmemo=" + bkmemo + "]";
	}
}