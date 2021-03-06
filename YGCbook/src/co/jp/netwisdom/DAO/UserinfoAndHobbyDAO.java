package co.jp.netwisdom.DAO;

import cn.key.dbManager.JdbcTemplate;
import co.jp.netwisdom.entity.UserinfoAndHobby;

public class UserinfoAndHobbyDAO {
	
	private JdbcTemplate template = new JdbcTemplate();
	
	public boolean InsertUserinfoAndHobby(UserinfoAndHobby uahEntity){
		int rowU = 0;
		int rowH = 0;
		String sqlForUserinfo = "insert into userinfo(username,password,sex,major,intro) "
				+ "values (?,?,?,?,?)";
		String sqlForHobby = "insert into hobby(username,hobby) values (?,?)";
		Object[] objectForU ={
				uahEntity.getUsername(),
				uahEntity.getPassword(),
				uahEntity.getSex(),
				uahEntity.getMajor(),
				uahEntity.getIntro()
				} ;
		try {
			rowU = template.updata(sqlForUserinfo, objectForU);
			for(String hobby : uahEntity.getHobby()){
				Object[] objectForH ={
						uahEntity.getUsername(),
						hobby
						} ;
				rowH += template.updata(sqlForHobby, objectForH);
			} 
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		} 
		return (rowU ==1 && rowH == uahEntity.getHobby().length);
	}
	
}
	

