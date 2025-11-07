package bean;

import java.io.Serializable;
					/*** 商品テーブル＋カテゴリーテーブル*/
public class Shouhin implements Serializable {
	/**商品テーブル**/
	/**
	 * 商品ID:char
	 */
	private char goods_id;

	/**
	 * 商品名:String
	 */
	private char goods_name;

	/**
	 * 値段:int
	 */
	private int price;

	/**
	 * カテゴリー:char
	 */
	private char category_id;
	
	/**
	 * 在庫数:int
	 */
	private int stock;



	/**
	 * ゲッター・セッター
	 */
	public char getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(char goods_id) {
		this.goods_id = goods_id;
	}

	public char getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(char goods_name) {
		this.goods_name = goods_name;
	}

	public int get() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public char getCategory_id() {
		return category_id;
	}

	public void setCategory_id(char category_id) {
		this.category_id = category_id;
	}
	
	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}
}