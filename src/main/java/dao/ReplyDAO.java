package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.ReplyDTO;

public class ReplyDAO {
	private ReplyDAO() {}
	private static ReplyDAO instance;
	public static ReplyDAO getInstance() {
		if (instance == null)
			instance = new ReplyDAO();
		return instance;
	}

	public Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");
		return ds.getConnection();
	}
	
	// insert, selectBy~, selectAll, update, delete 로 함수명 통일 (최대한 sql 구문을 활용한 작명)
	
	public List<ReplyDTO> selectAll(int postSeq, String loginId) throws Exception{
		String sql = "select * from replyrecList where cbSeq = ? and (isnull(recid) or recid = ?) and parentRSeq is null;";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, postSeq);
			pstat.setString(2, loginId);
			try(ResultSet rs = pstat.executeQuery();){
				List<ReplyDTO> replys = new ArrayList<>();
				while(rs.next()) {
					replys.add(new ReplyDTO(rs.getInt("rSeq"), rs.getString("mID"), rs.getInt("cbSeq"), rs.getString("mNickname"), rs.getString("rContents"), rs.getTimestamp("rWriteDate"), rs.getInt("rRecommend"), rs.getString("recid")));
				}
				return replys;
			}
		}
	}
	
	public void insert(ReplyDTO reply) throws Exception{
		String sql = "insert into reply values(null, ?, ?, ?, ?, default, default, null);";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1,reply.getParentSeq());
			pstat.setString(2, reply.getWriter());
			pstat.setString(3, reply.getNickName());
			pstat.setString(4, reply.getContents());
			pstat.executeUpdate();
		}
	}
	
	public void delete(int replySeq) throws Exception{
		String sql = "delete from reply where rSeq =?;";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, replySeq);
			pstat.executeUpdate();
		}
	}
	
	public void update(int replySeq, String replyCcontents) throws Exception{
		String sql = "update reply set rContents = ? where rSeq =?;";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, replyCcontents);
			pstat.setInt(2, replySeq);
			pstat.executeUpdate();
		}
	}
	
	public int  insertRecommend(int replySeq, String loginId) throws Exception{
		String sql = "insert into replyRecommend values(null, ?, ?);";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, replySeq);
			pstat.setString(2, loginId);
			return pstat.executeUpdate();
		}
	}
	
	public int  deletetRecommend(int replySeq, String loginId) throws Exception{
		String sql = "delete from replyRecommend where rseq = ? and mid = ?;";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, replySeq);
			pstat.setString(2, loginId);
			return pstat.executeUpdate();
		}
	}
	
	public void nestedInsert(ReplyDTO reply) throws Exception{
		String sql = "insert into reply values(null, ?, ?, ?, ?, default, default, ?);";
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1,reply.getParentSeq());
			pstat.setString(2, reply.getWriter());
			pstat.setString(3, reply.getNickName());
			pstat.setString(4, reply.getContents());
			pstat.executeUpdate();
		}
	}
}
