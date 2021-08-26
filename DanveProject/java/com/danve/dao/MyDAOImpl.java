package com.danve.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.danve.vo.CVO;
import com.danve.vo.GVVO;
import com.danve.vo.MVO;
import com.danve.vo.PCVO;

import oracle.jdbc.internal.OracleStatement.SqlKind;

@Repository
public class MyDAOImpl implements MyDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<PCVO> getpList(int begin, int end) throws Exception{
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end",end);
		
		return sqlSessionTemplate.selectList("plist", map);
	}

	@Override
	public List<MVO> getMList(int begin, int end) throws Exception{
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end",end);
		
		return sqlSessionTemplate.selectList("mlist", map);
	}
	
	@Override
	public List<CVO> getCList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("clist",map);
	}
	
	@Override
	public List<GVVO> getGVList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("gvlist",map);
	}
	
	@Override
	public int selectCount() throws Exception {
		return sqlSessionTemplate.selectOne("countPC");
	}
	
	@Override
	public int selectCountCheer() throws Exception {
		return sqlSessionTemplate.selectOne("countCheer");
	}
	
	@Override
	public int selectMCount() throws Exception {
		return sqlSessionTemplate.selectOne("countMember");
	}
	
	@Override
	public int signUp(MVO mvo) throws Exception{
		return sqlSessionTemplate.insert("signUp", mvo);
	}
	
	@Override
	public String groups(String id) throws Exception{
		return sqlSessionTemplate.selectOne("groups", id);
	}
	
	@Override
	public MVO signInCheck(String id, String pwd) throws Exception{
		Map<String, String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd",pwd);
		return sqlSessionTemplate.selectOne("signInCheck", map);
	}
	@Override
	public PCVO getOneList(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("onelist",idx);
	}
	
	@Override
	public String getName(String m_idx) throws Exception {
		return sqlSessionTemplate.selectOne("getName",m_idx);
	}
	
	@Override
	public int writeCC(CVO cvo) throws Exception {
		return sqlSessionTemplate.insert("writecc",cvo);
	}
	
	@Override
	public int writePC(PCVO pcvo) throws Exception {
		return sqlSessionTemplate.insert("writepc",pcvo);
	}
	
	@Override
	public int writeGV(GVVO gvvo) throws Exception {
		return sqlSessionTemplate.insert("writegv", gvvo);
	}
	
	@Override
	public int deleteCheer(HashMap<String, Integer> map) throws Exception {
		return sqlSessionTemplate.delete("deletCU", map);
	}
	
	@Override
	public int deleteMember(String m_idx) throws Exception {
		return sqlSessionTemplate.delete("deleteMB", m_idx);
	}

	@Override
	public int changeGroups(String m_idx, String idx) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("idx",idx);
		map.put("m_idx", m_idx);
		return sqlSessionTemplate.update("changeGroups", map);
	}
}
