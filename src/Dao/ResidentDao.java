package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Residentr;

public class ResidentDao extends Dao {

	public Resident get(String id) throws Exception {
		// 教員インスタンスを初期化
		Resident resident = new Resident();
		// コネクションを確立
		Connection connection = getConnection();
		// プリペアードステートメント
		PreparedStatement statement = null;

		try {
			// プリペアードステートメントにSQL文をセット
			statement = connection.prepareStatement("select * from teacher where id=?");
			// プリペアードステートメントに教員IDをバインド
			statement.setString(1, id);
			// プリペアードステートメントを実行
			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {
				// リザルトセットが存在する場合
				// 教員インスタンスに検索結果をセット
				resident.setId(resultSet.getString("id"));
				resident.setPassword(resultSet.getString("password"));
				resident.setName(resultSet.getString("name"));
			} else {
				// リザルトセットが存在しない場合
				// 教員インスタンスにnullをセット
				resident = null;
			}
		} catch (Exception e) {
			throw e;
		} finally {
			// プリペアードステートメントを閉じる
			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException sqle) {
					throw sqle;
				}
			}
			// コネクションを閉じる
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException sqle) {
					throw sqle;
				}
			}
		}

		return resident;
	}

	/**
	 * loginメソッド 入居者IDとパスワードで認証する
	 *
	 * @param id:String
	 *            入居者ID
	 * @param password:String
	 *            パスワード
	 * @return 認証成功:入居者クラスのインスタンス, 認証失敗:null
	 * @throws Exception
	 */
	public Resident login(String id, String password) throws Exception {
		// 教員クラスのインスタンスを取得
		Resident resident = get(id);
		// 教員がnullまたはパスワードが一致しない場合
		if (resident == null || !resident.getPassword().equals(password)) {
			return null;
		}
		return resident;
	}

}


入居者、親族、介護士で作るDaoとBeanをわける
システム開発のやつが使える
