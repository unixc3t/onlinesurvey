package alex.pojo;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * @author	Liuzhilong<alexmaven@icloud.com>
 * @version	2014年7月15日
 */
@Table("t_cwhyh")
public class Cwhyh {
	@Id
	private Integer id;
	@Column
	private String username;
	@Column
	private String surveydate;
	@Column
	private String sheng;
	@Column
	private String shi;
	@Column
	private String xiang;
	@Column
	private String cun;
	@Column
	private String jingwei;
	@Column
	private String czcymj;
	@Column
	private String xzjsyd;
	@Column
	private String ghjsyd;
	@Column
	private String tyydmj;
	@Column
	private String zjdmj;
	@Column
	private String qcjjsr;
	@Column
	private String rjcsr;
	@Column
	private String bzczgh;
	@Column
	private String zhs;
	@Column
	private String zrks;
	@Column
	private String boy;
	@Column
	private String girl;
	@Column
	private String wlrk1;
	@Column
	private String wlrk2;
	@Column
	private String wncs;
	@Column
	private String wnsw;
	@Column
	private String zhy;
	@Column
	private String yzy;
	@Column
	private String gy;
	@Column
	private String sy;
	@Column
	private String ysy;
	@Column
	private String wcdg;
	@Column
	private String wbh;
	@Column
	private String nlgc1;
	@Column
	private String nlgc2;
	@Column
	private String nlgc3;
	@Column
	private String nlgc4;
	@Column
	private String nlgc5;
	@Column
	private String[] ggfwss;
	@Column
	private String yhdl;
	@Column
	private String zlspj;
	@Column
	private String yxdsfg;
	@Column
	private String wlfgl;
	@Column
	private String ywjzgn;
	@Column
	private String rlmei;
	@Column
	private String rlzhaoqi;
	@Column
	private String rlyhq;
	@Column
	private String rldian;
	@Column
	private String rlchaimu;
	@Column
	private String rltyn;
	@Column
	private String rlhunhe;
	@Column
	private String wsclzz;
	@Column
	private String rwscll;
	@Column
	private String wscll;
	@Column
	private String sfwspsgw;
	@Column
	private String ljwhhcll;
	@Column
	private String ggcshgl;
	@Column
	private String csrsl;
	@Column
	private String sffzjz;
	@Column
	private String sfzhyjjz;
	@Column
	private String[] zyzlzywt;
	@Column
	private String jkpgbg;
	@Column
	private String zddx;
	@Column
	private String rjsd;
	@Column
	private String stzc1;
	@Column
	private String stzc2;
	@Column
	private String stzc3;
	@Column
	private String stzc4;
	@Column
	private String stzc5;
	@Column
	private String stzc6;
	@Column
	private String stzc7;
	@Column
	private String stzc8;
	@Column
	private String stzc9;
	@Column
	private String stzc10;
	@Column
	private String stzc11;
	@Column
	private String stzc12;
	@Column
	private String stzc13;
	@Column
	private String zrzccldcb;
	@Column
	private String jgxz1;
	@Column
	private String jgxz2;
	@Column
	private String jgxz3;
	@Column
	private String jgxz4;
	@Column
	private String jgxz5;
	@Column
	private String[] jgxz6;
	@Column
	private String[] jgxz7;
	@Column
	private String[] jgxz8;
	@Column
	private String jgxz9;
	@Column
	private String[] jgxz10;
	@Column
	private String jgxz11;
	@Column
	private String xwgjdfm;
	@Column
	private String jgxz12;
	@Column
	private String jgxz13;
	@Column
	private String jgxz14;
	@Column
	private String[] jgxz15;
	@Column
	private String jgxz16;
	@Column
	private String jgxz17;
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
	public String getSheng() {
		return sheng;
	}
	public void setSheng(String sheng) {
		this.sheng = sheng;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getXiang() {
		return xiang;
	}
	public void setXiang(String xiang) {
		this.xiang = xiang;
	}
	public String getCun() {
		return cun;
	}
	public void setCun(String cun) {
		this.cun = cun;
	}
	public String getJingwei() {
		return jingwei;
	}
	public void setJingwei(String jingwei) {
		this.jingwei = jingwei;
	}
	public String getCzcymj() {
		return czcymj;
	}
	public void setCzcymj(String czcymj) {
		this.czcymj = czcymj;
	}
	public String getXzjsyd() {
		return xzjsyd;
	}
	public void setXzjsyd(String xzjsyd) {
		this.xzjsyd = xzjsyd;
	}
	public String getGhjsyd() {
		return ghjsyd;
	}
	public void setGhjsyd(String ghjsyd) {
		this.ghjsyd = ghjsyd;
	}
	public String getTyydmj() {
		return tyydmj;
	}
	public void setTyydmj(String tyydmj) {
		this.tyydmj = tyydmj;
	}
	public String getZjdmj() {
		return zjdmj;
	}
	public void setZjdmj(String zjdmj) {
		this.zjdmj = zjdmj;
	}
	public String getQcjjsr() {
		return qcjjsr;
	}
	public void setQcjjsr(String qcjjsr) {
		this.qcjjsr = qcjjsr;
	}
	public String getRjcsr() {
		return rjcsr;
	}
	public void setRjcsr(String rjcsr) {
		this.rjcsr = rjcsr;
	}
	public String getBzczgh() {
		return bzczgh;
	}
	public void setBzczgh(String bzczgh) {
		this.bzczgh = bzczgh;
	}
	public String getZhs() {
		return zhs;
	}
	public void setZhs(String zhs) {
		this.zhs = zhs;
	}
	public String getZrks() {
		return zrks;
	}
	public void setZrks(String zrks) {
		this.zrks = zrks;
	}
	public String getBoy() {
		return boy;
	}
	public void setBoy(String boy) {
		this.boy = boy;
	}
	public String getGirl() {
		return girl;
	}
	public void setGirl(String girl) {
		this.girl = girl;
	}
	public String getWlrk1() {
		return wlrk1;
	}
	public void setWlrk1(String wlrk1) {
		this.wlrk1 = wlrk1;
	}
	public String getWlrk2() {
		return wlrk2;
	}
	public void setWlrk2(String wlrk2) {
		this.wlrk2 = wlrk2;
	}
	public String getWncs() {
		return wncs;
	}
	public void setWncs(String wncs) {
		this.wncs = wncs;
	}
	public String getWnsw() {
		return wnsw;
	}
	public void setWnsw(String wnsw) {
		this.wnsw = wnsw;
	}
	public String getZhy() {
		return zhy;
	}
	public void setZhy(String zhy) {
		this.zhy = zhy;
	}
	public String getYzy() {
		return yzy;
	}
	public void setYzy(String yzy) {
		this.yzy = yzy;
	}
	public String getGy() {
		return gy;
	}
	public void setGy(String gy) {
		this.gy = gy;
	}
	public String getSy() {
		return sy;
	}
	public void setSy(String sy) {
		this.sy = sy;
	}
	public String getYsy() {
		return ysy;
	}
	public void setYsy(String ysy) {
		this.ysy = ysy;
	}
	public String getWcdg() {
		return wcdg;
	}
	public void setWcdg(String wcdg) {
		this.wcdg = wcdg;
	}
	public String getWbh() {
		return wbh;
	}
	public void setWbh(String wbh) {
		this.wbh = wbh;
	}
	public String getNlgc1() {
		return nlgc1;
	}
	public void setNlgc1(String nlgc1) {
		this.nlgc1 = nlgc1;
	}
	public String getNlgc2() {
		return nlgc2;
	}
	public void setNlgc2(String nlgc2) {
		this.nlgc2 = nlgc2;
	}
	public String getNlgc3() {
		return nlgc3;
	}
	public void setNlgc3(String nlgc3) {
		this.nlgc3 = nlgc3;
	}
	public String getNlgc4() {
		return nlgc4;
	}
	public void setNlgc4(String nlgc4) {
		this.nlgc4 = nlgc4;
	}
	public String getNlgc5() {
		return nlgc5;
	}
	public void setNlgc5(String nlgc5) {
		this.nlgc5 = nlgc5;
	}
	public String[] getGgfwss() {
		return ggfwss;
	}
	public void setGgfwss(String[] ggfwss) {
		this.ggfwss = ggfwss;
	}
	public String getYhdl() {
		return yhdl;
	}
	public void setYhdl(String yhdl) {
		this.yhdl = yhdl;
	}
	public String getZlspj() {
		return zlspj;
	}
	public void setZlspj(String zlspj) {
		this.zlspj = zlspj;
	}
	public String getYxdsfg() {
		return yxdsfg;
	}
	public void setYxdsfg(String yxdsfg) {
		this.yxdsfg = yxdsfg;
	}
	public String getWlfgl() {
		return wlfgl;
	}
	public void setWlfgl(String wlfgl) {
		this.wlfgl = wlfgl;
	}
	public String getYwjzgn() {
		return ywjzgn;
	}
	public void setYwjzgn(String ywjzgn) {
		this.ywjzgn = ywjzgn;
	}
	public String getRlmei() {
		return rlmei;
	}
	public void setRlmei(String rlmei) {
		this.rlmei = rlmei;
	}
	public String getRlzhaoqi() {
		return rlzhaoqi;
	}
	public void setRlzhaoqi(String rlzhaoqi) {
		this.rlzhaoqi = rlzhaoqi;
	}
	public String getRlyhq() {
		return rlyhq;
	}
	public void setRlyhq(String rlyhq) {
		this.rlyhq = rlyhq;
	}
	public String getRldian() {
		return rldian;
	}
	public void setRldian(String rldian) {
		this.rldian = rldian;
	}
	public String getRlchaimu() {
		return rlchaimu;
	}
	public void setRlchaimu(String rlchaimu) {
		this.rlchaimu = rlchaimu;
	}
	public String getRltyn() {
		return rltyn;
	}
	public void setRltyn(String rltyn) {
		this.rltyn = rltyn;
	}
	public String getRlhunhe() {
		return rlhunhe;
	}
	public void setRlhunhe(String rlhunhe) {
		this.rlhunhe = rlhunhe;
	}
	public String getWsclzz() {
		return wsclzz;
	}
	public void setWsclzz(String wsclzz) {
		this.wsclzz = wsclzz;
	}
	public String getRwscll() {
		return rwscll;
	}
	public void setRwscll(String rwscll) {
		this.rwscll = rwscll;
	}
	public String getWscll() {
		return wscll;
	}
	public void setWscll(String wscll) {
		this.wscll = wscll;
	}
	public String getSfwspsgw() {
		return sfwspsgw;
	}
	public void setSfwspsgw(String sfwspsgw) {
		this.sfwspsgw = sfwspsgw;
	}
	public String getLjwhhcll() {
		return ljwhhcll;
	}
	public void setLjwhhcll(String ljwhhcll) {
		this.ljwhhcll = ljwhhcll;
	}
	public String getGgcshgl() {
		return ggcshgl;
	}
	public void setGgcshgl(String ggcshgl) {
		this.ggcshgl = ggcshgl;
	}
	public String getCsrsl() {
		return csrsl;
	}
	public void setCsrsl(String csrsl) {
		this.csrsl = csrsl;
	}
	public String getSffzjz() {
		return sffzjz;
	}
	public void setSffzjz(String sffzjz) {
		this.sffzjz = sffzjz;
	}
	public String getSfzhyjjz() {
		return sfzhyjjz;
	}
	public void setSfzhyjjz(String sfzhyjjz) {
		this.sfzhyjjz = sfzhyjjz;
	}
	public String[] getZyzlzywt() {
		return zyzlzywt;
	}
	public void setZyzlzywt(String[] zyzlzywt) {
		this.zyzlzywt = zyzlzywt;
	}
	public String getJkpgbg() {
		return jkpgbg;
	}
	public void setJkpgbg(String jkpgbg) {
		this.jkpgbg = jkpgbg;
	}
	public String getZddx() {
		return zddx;
	}
	public void setZddx(String zddx) {
		this.zddx = zddx;
	}
	public String getRjsd() {
		return rjsd;
	}
	public void setRjsd(String rjsd) {
		this.rjsd = rjsd;
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
	public String getStzc4() {
		return stzc4;
	}
	public void setStzc4(String stzc4) {
		this.stzc4 = stzc4;
	}
	public String getStzc5() {
		return stzc5;
	}
	public void setStzc5(String stzc5) {
		this.stzc5 = stzc5;
	}
	public String getStzc6() {
		return stzc6;
	}
	public void setStzc6(String stzc6) {
		this.stzc6 = stzc6;
	}
	public String getStzc7() {
		return stzc7;
	}
	public void setStzc7(String stzc7) {
		this.stzc7 = stzc7;
	}
	public String getStzc8() {
		return stzc8;
	}
	public void setStzc8(String stzc8) {
		this.stzc8 = stzc8;
	}
	public String getStzc9() {
		return stzc9;
	}
	public void setStzc9(String stzc9) {
		this.stzc9 = stzc9;
	}
	public String getStzc10() {
		return stzc10;
	}
	public void setStzc10(String stzc10) {
		this.stzc10 = stzc10;
	}
	public String getStzc11() {
		return stzc11;
	}
	public void setStzc11(String stzc11) {
		this.stzc11 = stzc11;
	}
	public String getStzc12() {
		return stzc12;
	}
	public void setStzc12(String stzc12) {
		this.stzc12 = stzc12;
	}
	public String getStzc13() {
		return stzc13;
	}
	public void setStzc13(String stzc13) {
		this.stzc13 = stzc13;
	}
	public String getZrzccldcb() {
		return zrzccldcb;
	}
	public void setZrzccldcb(String zrzccldcb) {
		this.zrzccldcb = zrzccldcb;
	}
	public String getJgxz1() {
		return jgxz1;
	}
	public void setJgxz1(String jgxz1) {
		this.jgxz1 = jgxz1;
	}
	public String getJgxz2() {
		return jgxz2;
	}
	public void setJgxz2(String jgxz2) {
		this.jgxz2 = jgxz2;
	}
	public String getJgxz3() {
		return jgxz3;
	}
	public void setJgxz3(String jgxz3) {
		this.jgxz3 = jgxz3;
	}
	public String getJgxz4() {
		return jgxz4;
	}
	public void setJgxz4(String jgxz4) {
		this.jgxz4 = jgxz4;
	}
	public String getJgxz5() {
		return jgxz5;
	}
	public void setJgxz5(String jgxz5) {
		this.jgxz5 = jgxz5;
	}
	public String[] getJgxz6() {
		return jgxz6;
	}
	public void setJgxz6(String[] jgxz6) {
		this.jgxz6 = jgxz6;
	}
	public String[] getJgxz7() {
		return jgxz7;
	}
	public void setJgxz7(String[] jgxz7) {
		this.jgxz7 = jgxz7;
	}
	public String[] getJgxz8() {
		return jgxz8;
	}
	public void setJgxz8(String[] jgxz8) {
		this.jgxz8 = jgxz8;
	}
	public String getJgxz9() {
		return jgxz9;
	}
	public void setJgxz9(String jgxz9) {
		this.jgxz9 = jgxz9;
	}
	public String[] getJgxz10() {
		return jgxz10;
	}
	public void setJgxz10(String[] jgxz10) {
		this.jgxz10 = jgxz10;
	}
	public String getJgxz11() {
		return jgxz11;
	}
	public void setJgxz11(String jgxz11) {
		this.jgxz11 = jgxz11;
	}
	public String getXwgjdfm() {
		return xwgjdfm;
	}
	public void setXwgjdfm(String xwgjdfm) {
		this.xwgjdfm = xwgjdfm;
	}
	public String getJgxz12() {
		return jgxz12;
	}
	public void setJgxz12(String jgxz12) {
		this.jgxz12 = jgxz12;
	}
	public String getJgxz13() {
		return jgxz13;
	}
	public void setJgxz13(String jgxz13) {
		this.jgxz13 = jgxz13;
	}
	public String getJgxz14() {
		return jgxz14;
	}
	public void setJgxz14(String jgxz14) {
		this.jgxz14 = jgxz14;
	}
	public String[] getJgxz15() {
		return jgxz15;
	}
	public void setJgxz15(String[] jgxz15) {
		this.jgxz15 = jgxz15;
	}
	public String getJgxz16() {
		return jgxz16;
	}
	public void setJgxz16(String jgxz16) {
		this.jgxz16 = jgxz16;
	}
	public String getJgxz17() {
		return jgxz17;
	}
	public void setJgxz17(String jgxz17) {
		this.jgxz17 = jgxz17;
	}
	public String getSurveydate() {
		return surveydate;
	}
	public void setSurveydate(String surveydate) {
		this.surveydate = surveydate;
	}
}
