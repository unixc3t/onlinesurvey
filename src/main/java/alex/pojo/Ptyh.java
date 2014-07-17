package alex.pojo;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * @author Liuzhilong<alexmaven@icloud.com>
 * @version 2014年7月14日
 */
@Table("t_ptyh")
public class Ptyh {
	@Id
	private Integer id;
	@Column
	private String username;
	@Column
	private String age;
	@Column
	private String surveydate;
	@Column
	private String zhiye;
	@Column
	private String whcd;
	@Column
	private String hukou;
	@Column
	private String szxz;
	@Column
	private String jtrk;
	@Column
	private String zfjzmj;
	@Column
	private String zjdmj;
	@Column
	private String tymj;
	@Column
	private String[] tygn;
	@Column
	private String[] syhzrl;
	@Column
	private String[] hjxz1;
	@Column
	private String hjxz2;
	@Column
	private String[] hjxz3;
	@Column
	private String hjxz4;
	@Column
	private String[] hjxz5;
	@Column
	private String hjxz6;
	@Column
	private String hjxz7;
	@Column
	private String[] hjxz8;
	@Column
	private String hjxz9;
	@Column
	private String hjxz9_2;
	@Column
	private String hjxz10;
	@Column
	private String[] hjxz11;
	@Column
	private String[] hjxz12;
	@Column
	private String hjxz13;
	@Column
	private String hjxz14;
	@Column
	private String[] hjxz15;
	@Column
	private String hjxz16_1;
	@Column
	private String hjxz16_2;
	@Column
	private String hjxz16_3;
	@Column
	private String hjxz16_4;
	@Column
	private String hjxz16_7;
	@Column
	private String hjxz16_8;
	@Column
	private String hjxz16_9;
	@Column
	private String hjxz16_10;
	@Column
	private String hjxz16_11;
	@Column
	private String stzc1;
	@Column
	private String stzc2;
	@Column
	private String stzc3;
	@Column
	private String[] stzc4;
	@Column
	private String[] jgxz1;
	@Column
	private String[] jgxz2;
	@Column
	private String jgxz3;
	@Column
	private String[] jgxz4;
	@Column
	private String jgxz5;
	@Column
	private String jianyi;
	@Column
	private String aizheng;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getZhiye() {
		return zhiye;
	}

	public void setZhiye(String zhiye) {
		this.zhiye = zhiye;
	}

	public String getWhcd() {
		return whcd;
	}

	public void setWhcd(String whcd) {
		this.whcd = whcd;
	}

	public String getHukou() {
		return hukou;
	}

	public void setHukou(String hukou) {
		this.hukou = hukou;
	}

	public String getSzxz() {
		return szxz;
	}

	public void setSzxz(String szxz) {
		this.szxz = szxz;
	}

	public String getJtrk() {
		return jtrk;
	}

	public void setJtrk(String jtrk) {
		this.jtrk = jtrk;
	}

	public String getZfjzmj() {
		return zfjzmj;
	}

	public void setZfjzmj(String zfjzmj) {
		this.zfjzmj = zfjzmj;
	}

	public String getZjdmj() {
		return zjdmj;
	}

	public void setZjdmj(String zjdmj) {
		this.zjdmj = zjdmj;
	}

	public String getTymj() {
		return tymj;
	}

	public void setTymj(String tymj) {
		this.tymj = tymj;
	}

	public String[] getTygn() {
		return tygn;
	}

	public void setTygn(String[] tygn) {
		this.tygn = tygn;
	}

	public String[] getSyhzrl() {
		return syhzrl;
	}

	public void setSyhzrl(String[] syhzrl) {
		this.syhzrl = syhzrl;
	}

	public String[] getHjxz1() {
		return hjxz1;
	}

	public void setHjxz1(String[] hjxz1) {
		this.hjxz1 = hjxz1;
	}

	public String getHjxz2() {
		return hjxz2;
	}

	public void setHjxz2(String hjxz2) {
		this.hjxz2 = hjxz2;
	}

	public String[] getHjxz3() {
		return hjxz3;
	}

	public void setHjxz3(String[] hjxz3) {
		this.hjxz3 = hjxz3;
	}

	public String getHjxz4() {
		return hjxz4;
	}

	public void setHjxz4(String hjxz4) {
		this.hjxz4 = hjxz4;
	}

	public String[] getHjxz5() {
		return hjxz5;
	}

	public void setHjxz5(String[] hjxz5) {
		this.hjxz5 = hjxz5;
	}

	public String getHjxz6() {
		return hjxz6;
	}

	public void setHjxz6(String hjxz6) {
		this.hjxz6 = hjxz6;
	}

	public String getHjxz7() {
		return hjxz7;
	}

	public void setHjxz7(String hjxz7) {
		this.hjxz7 = hjxz7;
	}

	public String[] getHjxz8() {
		return hjxz8;
	}

	public void setHjxz8(String[] hjxz8) {
		this.hjxz8 = hjxz8;
	}

	public String getHjxz9() {
		return hjxz9;
	}

	public void setHjxz9(String hjxz9) {
		this.hjxz9 = hjxz9;
	}

	public String getHjxz9_2() {
		return hjxz9_2;
	}

	public void setHjxz9_2(String hjxz9_2) {
		this.hjxz9_2 = hjxz9_2;
	}

	public String getHjxz10() {
		return hjxz10;
	}

	public void setHjxz10(String hjxz10) {
		this.hjxz10 = hjxz10;
	}

	public String[] getHjxz11() {
		return hjxz11;
	}

	public void setHjxz11(String[] hjxz11) {
		this.hjxz11 = hjxz11;
	}

	public String getHjxz13() {
		return hjxz13;
	}

	public void setHjxz13(String hjxz13) {
		this.hjxz13 = hjxz13;
	}

	public String getHjxz14() {
		return hjxz14;
	}

	public void setHjxz14(String hjxz14) {
		this.hjxz14 = hjxz14;
	}

	public String[] getHjxz15() {
		return hjxz15;
	}

	public void setHjxz15(String[] hjxz15) {
		this.hjxz15 = hjxz15;
	}

	public String getHjxz16_1() {
		return hjxz16_1;
	}

	public void setHjxz16_1(String hjxz16_1) {
		this.hjxz16_1 = hjxz16_1;
	}

	public String getHjxz16_2() {
		return hjxz16_2;
	}

	public void setHjxz16_2(String hjxz16_2) {
		this.hjxz16_2 = hjxz16_2;
	}

	public String getHjxz16_3() {
		return hjxz16_3;
	}

	public void setHjxz16_3(String hjxz16_3) {
		this.hjxz16_3 = hjxz16_3;
	}

	public String getHjxz16_4() {
		return hjxz16_4;
	}

	public void setHjxz16_4(String hjxz16_4) {
		this.hjxz16_4 = hjxz16_4;
	}

	public String getHjxz16_7() {
		return hjxz16_7;
	}

	public void setHjxz16_7(String hjxz16_7) {
		this.hjxz16_7 = hjxz16_7;
	}

	public String getHjxz16_8() {
		return hjxz16_8;
	}

	public void setHjxz16_8(String hjxz16_8) {
		this.hjxz16_8 = hjxz16_8;
	}

	public String getHjxz16_9() {
		return hjxz16_9;
	}

	public void setHjxz16_9(String hjxz16_9) {
		this.hjxz16_9 = hjxz16_9;
	}

	public String getHjxz16_10() {
		return hjxz16_10;
	}

	public void setHjxz16_10(String hjxz16_10) {
		this.hjxz16_10 = hjxz16_10;
	}

	public String getHjxz16_11() {
		return hjxz16_11;
	}

	public void setHjxz16_11(String hjxz16_11) {
		this.hjxz16_11 = hjxz16_11;
	}

	public String getStzc1() {
		return stzc1;
	}

	public void setStzc1(String stzc1) {
		this.stzc1 = stzc1;
	}

	public String getStzc2() {
		return stzc2;
	}

	public void setStzc2(String stzc2) {
		this.stzc2 = stzc2;
	}

	public String getStzc3() {
		return stzc3;
	}

	public void setStzc3(String stzc3) {
		this.stzc3 = stzc3;
	}

	public String[] getJgxz1() {
		return jgxz1;
	}

	public String[] getHjxz12() {
		return hjxz12;
	}

	public void setHjxz12(String[] hjxz12) {
		this.hjxz12 = hjxz12;
	}

	public String[] getStzc4() {
		return stzc4;
	}

	public void setStzc4(String[] stzc4) {
		this.stzc4 = stzc4;
	}

	public String getAizheng() {
		return aizheng;
	}

	public void setAizheng(String aizheng) {
		this.aizheng = aizheng;
	}

	public void setJgxz1(String[] jgxz1) {
		this.jgxz1 = jgxz1;
	}

	public String[] getJgxz2() {
		return jgxz2;
	}

	public void setJgxz2(String[] jgxz2) {
		this.jgxz2 = jgxz2;
	}

	public String getJgxz3() {
		return jgxz3;
	}

	public void setJgxz3(String jgxz3) {
		this.jgxz3 = jgxz3;
	}

	public String[] getJgxz4() {
		return jgxz4;
	}

	public void setJgxz4(String[] jgxz4) {
		this.jgxz4 = jgxz4;
	}

	public String getJgxz5() {
		return jgxz5;
	}

	public void setJgxz5(String jgxz5) {
		this.jgxz5 = jgxz5;
	}

	public String getJianyi() {
		return jianyi;
	}

	public void setJianyi(String jianyi) {
		this.jianyi = jianyi;
	}

	public String getSurveydate() {
		return surveydate;
	}

	public void setSurveydate(String surveydate) {
		this.surveydate = surveydate;
	}
}
