package com.danve.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danve.dao.MyDAO;
import com.danve.vo.CVO;
import com.danve.vo.GVVO;
import com.danve.vo.MVO;
import com.danve.vo.PCVO;

@Service
public class MyServiceImpl implements MyService{

	@Autowired
	private MyDAO myDAO;
	
	@Override
	public List<PCVO> getpList(int begin, int end) throws Exception{
		return myDAO.getpList(begin, end);
	}
	@Override
	public List<MVO> getMList(int begin, int end) throws Exception {
		return myDAO.getMList(begin, end);
	}
	@Override
	public List<CVO> getCList(int begin, int end) throws Exception {
		return myDAO.getCList(begin,end);
	}
	
	@Override
	public List<GVVO> getGVList(int begin, int end) throws Exception {
		return myDAO.getGVList(begin,end);
	}
	
	@Override
	public int selectCount() throws Exception {
		return myDAO.selectCount();
	}
	
	@Override
	public int selectCountCheer() throws Exception {
		return myDAO.selectCountCheer();
	}
	
	@Override
	public int selectMCount() throws Exception {
		return myDAO.selectMCount();
	}
	
	@Override
	public int signUp(MVO mvo) throws Exception{
		return myDAO.signUp(mvo);
	}
	@Override
	public String groups(String id) throws Exception{
		return myDAO.groups(id);
	}
	
	@Override
	public MVO signInCheck(String id, String pwd) throws Exception{
		return myDAO.signInCheck(id,pwd);
	}
	
	@Override
	public PCVO getOneList(String idx) throws Exception {
		return myDAO.getOneList(idx);
	}
	
	@Override
	public String getName(String m_idx) throws Exception {
		return myDAO.getName(m_idx);
	}
	
	@Override
	public int writeCC(CVO cvo) throws Exception {
		return myDAO.writeCC(cvo);
	}
	
	@Override
	public int writePC(PCVO pcvo) throws Exception {
		return myDAO.writePC(pcvo);
	}
	
	@Override
	public int writeGV(GVVO gvvo) throws Exception {
		return myDAO.writeGV(gvvo);
	}
	@Override
	public int deleteCheer(HashMap<String, Integer> map) throws Exception {
		return myDAO.deleteCheer(map);
	}

	@Override
	public int deleteMember(String m_idx) throws Exception {
		return myDAO.deleteMember(m_idx);
	}
	
	@Override
	public int changeGroups(String m_idx, String idx) throws Exception {
		return myDAO.changeGroups(m_idx,idx);
	}
}
