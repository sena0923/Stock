package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CaregiverLoginDao extends Dao {

	public CaregiverLogin get(String id) throws Exception {

		CaregiverLogin caregiverlogin = new CaregiverLogin();

		Connection connection = getConnection();

		PreparedStatement statement = null;

		try {
			// プリペアードステートメントにSQL文をセット
			statement = connection.prepareStatement("select * from caregiverlogin where id=?");
			// プリペアードステートメントに教員IDをバインド
			statement.setString(1, id);
			// プリペアードステートメントを実行
			ResultSet resultSet = statement.executeQuery();

			// 学校Daoを初期化
			CaregiverLoginDao schoolDao = new CaregiverLoginDao();

			if (resultSet.next()) {
				// リザルトセットが存在する場合
				// 教員インスタンスに検索結果をセット
				caregiverlogin.setName(resultSet.getString("name"));
				caregiverlogin.setId(resultSet.getString("id"));
				caregiverlogin.setStaffPassword(resultSet.getString("staffpassword"));
				caregiverlogin.setFacilityPassword(resultSet.getString("Facilitypassword"));


			} else {
				// リザルトセットが存在しない場合
				// 教員インスタンスにnullをセット
				caregiverlogin = null;
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

		return caregiverlogin;
	}

	/**
	 * loginメソッド 教員IDとパスワードで認証する
	 *
	 * @param id:String
	 *            教員ID
	 * @param password:String
	 *            パスワード
	 * @return 認証成功:教員クラスのインスタンス, 認証失敗:null
	 * @throws Exception
	 */
	public CaregiverLogin caregiverlogin(String id, String password) throws Exception {
		// 教員クラスのインスタンスを取得
		CaregiverLogin caregiverteacher = get(id);
		// 教員がnullまたはパスワードが一致しない場合
		if (caregivelogin == null || ! caregiverlogin.getPassword().equals(password)) {
			return null;
		}
		return caregiverlogin;
	}
}
