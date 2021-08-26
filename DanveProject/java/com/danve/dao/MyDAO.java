package com.danve.dao;

import java.util.HashMap;
import java.util.List;

import com.danve.vo.CVO;
import com.danve.vo.GVVO;
import com.danve.vo.MVO;
import com.danve.vo.PCVO;

public interface MyDAO {

	List<PCVO> getpList(int begin, int end) throws Exception;

	List<CVO> getCList(int begin, int end) throws Exception;

	int signUp(MVO mvo) throws Exception;

	String groups(String id)throws Exception;

	MVO signInCheck(String id, String pwd)throws Exception;

	int selectCount() throws Exception;

	PCVO getOneList(String idx)throws Exception;

	int selectCountCheer() throws Exception;

	String getName(String m_idx) throws Exception;

	int writeCC(CVO cvo) throws Exception;

	int deleteCheer(HashMap<String, Integer> map) throws Exception;

	int deleteMember(String m_idx) throws Exception;

	List<MVO> getMList(int begin, int end) throws Exception;

	int selectMCount() throws Exception;

	int changeGroups(String m_idx, String idx) throws Exception;

	List<GVVO> getGVList(int begin, int end) throws Exception;

	int writeGV(GVVO gvvo) throws Exception;

	int writePC(PCVO pcvo) throws Exception;




}
