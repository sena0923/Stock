package bean;

import java.io.Serializable;


					/*** 介護士テーブル＋入居者テーブル＋親族テーブル+コーステーブル*/


public class Login implements Serializable {
	/**職員番号**/
	private char cg_num;

	/**親族ID**/
	private String rt_id;

	/**入居者ID**/
	private String rd_id;

	/**コースID**/
	private char course_id;

	/**コース名**/
	private String course_name;

	/**性別**/
	private String gender;

	/**氏名**/
	private String name;

	/**パスワード**/
	private String password;

	/**メールアドレス**/
	private String e_mail;

	/**
	 * ゲッター・セッター
	 */
	public char getCg_num() {
		return cg_num;
	}

	public void setCg_num(char cg_num) {
		this.cg_num = cg_num;
	}

	public String getRt_id() {
		return rt_id;
	}

	public void setRt_id(String rt_id) {
		this.rt_id = rt_id;
	}

	public String getrd_id() {
		return rd_id;
	}

	public void setRd_id(String rd_id) {
		this.rd_id = rd_id;
	}

	public char getCourse_id() {
		return course_id;
	}

	public void setCourse_id(char course_id) {
		this.course_id = course_id;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

}