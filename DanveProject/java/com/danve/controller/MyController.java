package com.danve.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.danve.service.MyService;
import com.danve.service.Paging;
import com.danve.vo.CVO;
import com.danve.vo.GVVO;
import com.danve.vo.MVO;
import com.danve.vo.PCVO;

import oracle.net.aso.m;

@Controller
public class MyController {

	@Autowired
	private MyService myService;
	@Autowired
	private Paging paging;

	@RequestMapping("mainP.do")
	public ModelAndView mainPCommand(@ModelAttribute("login")String login, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("danveMain");
		if(login.isEmpty()) {
			login="0";
			HttpSession session = request.getSession();
			session.setAttribute("login", login);
		}
		return mv;
	}
	
	@RequestMapping("danveP.do")
	public ModelAndView danvePCommand() {
		return new ModelAndView("danveMain");
	}

	@RequestMapping("docuP.do")
	public ModelAndView docuPCommand() {
		return new ModelAndView("docuMain");
	}

	@RequestMapping("docuVideo.do")
	public ModelAndView docuVideoCommand() {
		return new ModelAndView("docuVideo");
	}

	@RequestMapping("commentedList.do")
	public ModelAndView commentedListCommand(@ModelAttribute("cPage")String cPage) {
		ModelAndView mv = new ModelAndView("commentedList");

		try {			
						// 전체 게시물의 수
						int count = myService.selectCount();
						paging.setTotalRecord(count);

						// 전체 페이지의 수
						if (paging.getTotalRecord() <= paging.getNumPerPage()) {
							paging.setTotalPage(1);
						} else {
							// 전체 페이지의 수 계산하기
							paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
							// 주의 사항 : 나머지가 존재하면 전체 페이지 수에 +1를 한다.
							if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
								paging.setTotalPage(paging.getTotalPage() + 1);
							}
						}
						
						if(cPage.isEmpty()) {
							cPage="1";
						}
						
						// 현재 페이지 구하기
						paging.setNowPage(Integer.parseInt(cPage));
						
						// 시작번호, 끝번호
						paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
						paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

						// 시작블록, 끝블록
						paging.setBeginBlock(
								(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
						paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

						// 주의사항 : endBlock 이 totalPage 보다 큰 경우 발생 할 수 있다.
						// 이 경우 endBlock를 totalPage에 맞춰야 한다.
						if (paging.getEndBlock() > paging.getTotalPage()) {
							paging.setEndBlock(paging.getTotalPage());
						}
						List<PCVO> list = myService.getpList(paging.getBegin(), paging.getEnd());
						
						mv.addObject("list",list);
						mv.addObject("pvo", paging);
						
						return mv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("manageMem.do")
	public ModelAndView manageMemberCommand(@ModelAttribute("cPage")String cPage) {
		ModelAndView mv = new ModelAndView("manageMem");
		
		try {
			if(cPage.isEmpty()) {
				cPage="1";
			}
			// 전체 게시물의 수
			int count = myService.selectMCount();
			paging.setTotalRecord(count);
			
			// 전체 페이지의 수
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			} else {
				// 전체 페이지의 수 계산하기
				paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
				// 주의 사항 : 나머지가 존재하면 전체 페이지 수에 +1를 한다.
				if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage() + 1);
				}
			}
			// 현재 페이지 구하기
			paging.setNowPage(Integer.parseInt(cPage));
			
			// 시작번호, 끝번호
			paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
			paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());
			
			// 시작블록, 끝블록
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
			
			// 주의사항 : endBlock 이 totalPage 보다 큰 경우 발생 할 수 있다.
			// 이 경우 endBlock를 totalPage에 맞춰야 한다.
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			
			
			List<MVO> list = myService.getMList(paging.getBegin(), paging.getEnd());
			
			mv.addObject("list",list);
			mv.addObject("pvo", paging);
			
			return mv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("cheerUp.do")
	public ModelAndView cheerUpCommand(@ModelAttribute("cPage")String cPage) {
		ModelAndView mv = new ModelAndView("cheerUp");
		
		try {			
			if(cPage.isEmpty()) {
				cPage="1";
			}
			// 전체 게시물의 수
			int count = myService.selectCountCheer();
			paging.setTotalRecord(count);
			
			// 전체 페이지의 수
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			} else {
				// 전체 페이지의 수 계산하기
				paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
				// 주의 사항 : 나머지가 존재하면 전체 페이지 수에 +1를 한다.
				if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage() + 1);
				}
			}
			// 현재 페이지 구하기
			paging.setNowPage(Integer.parseInt(cPage));
			
			// 시작번호, 끝번호
			paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
			paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());
			
			// 시작블록, 끝블록
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
			
			// 주의사항 : endBlock 이 totalPage 보다 큰 경우 발생 할 수 있다.
			// 이 경우 endBlock를 totalPage에 맞춰야 한다.
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			List<CVO> clist = new ArrayList<CVO>(); 
			clist = myService.getCList(paging.getBegin(), paging.getEnd());
			mv.addObject("clist",clist);
			mv.addObject("pvo", paging);
			return mv;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("doVegan.do")
	public ModelAndView doVeganCommand(@ModelAttribute("cPage")String cPage) {
		ModelAndView mv = new ModelAndView("doVegan");
		
		try {			
			if(cPage.isEmpty()) {
				cPage="1";
			}
			// 전체 게시물의 수
			int count = myService.selectCountCheer();
			paging.setTotalRecord(count);
			
			// 전체 페이지의 수
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			} else {
				// 전체 페이지의 수 계산하기
				paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
				// 주의 사항 : 나머지가 존재하면 전체 페이지 수에 +1를 한다.
				if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage() + 1);
				}
			}
			// 현재 페이지 구하기
			paging.setNowPage(Integer.parseInt(cPage));
			
			// 시작번호, 끝번호
			paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
			paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());
			
			// 시작블록, 끝블록
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
			
			// 주의사항 : endBlock 이 totalPage 보다 큰 경우 발생 할 수 있다.
			// 이 경우 endBlock를 totalPage에 맞춰야 한다.
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			List<GVVO> gvlist = new ArrayList<GVVO>(); 
			gvlist = myService.getGVList(paging.getBegin(), paging.getEnd());
			mv.addObject("gvlist",gvlist);
			mv.addObject("pvo", paging);
			return mv;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value = "onelist.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public PCVO oneListCommand(@RequestParam("cPage")String cPage, @RequestParam("idx")String idx) {
		try {
				PCVO pcvo = new PCVO();
				pcvo = myService.getOneList(idx);
				
				return pcvo;
			} catch (Exception e) {
				e.printStackTrace();
			}
		return null;
		
	}

	@RequestMapping(value = "deleteCheer.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public int deleteCheerCommand(@RequestParam("m_idx")String m_idx, @RequestParam("c_idx")String c_idx) {
		try {
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("m_idx", Integer.valueOf(m_idx));
			map.put("c_idx", Integer.valueOf(c_idx));
			
			int res = myService.deleteCheer(map);
			
			if(res>0) {
				return 1;
			}else {
				return 0;				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}

	@RequestMapping(value = "deleteMem.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public int deleteMemberCommand(@RequestParam("m_idx")String m_idx) {
		try {
			
			int res = myService.deleteMember(m_idx);
			
			if(res>0) {
				return 1;
			}else {
				return 0;				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	@RequestMapping(value = "writecheer.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public int writeCheerCommand(@RequestParam("cPage")String cPage, @RequestParam("m_idx")String m_idx, @RequestParam("c_context")String c_context) {
		try {
			if(m_idx.isEmpty()) {
				return 2;
			}else {
				
			System.out.println(cPage+" / "+m_idx+" / "+c_context);
			String name = myService.getName(m_idx);
			
			CVO cvo = new CVO();
			cvo.setC_context(c_context);
			cvo.setM_idx(m_idx);
			cvo.setName(name);
			
			int res = myService.writeCC(cvo);
			
			if(res>0) {
				return 1;			
			} else {
				return 0;
			}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	@RequestMapping(value = "complteCom.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public int writeCheerCommand(@RequestParam("r_writer")String r_writer, @RequestParam("p_comment")String p_comment, HttpServletRequest request) {
		try {
				String m_idx = (String) request.getSession().getAttribute("midx");
				
				PCVO pcvo = new PCVO();
				pcvo.setP_comment(p_comment);
				pcvo.setM_idx(m_idx);
				pcvo.setR_writer(r_writer);
				
				int res = myService.writePC(pcvo);
				
				if(res>0) {
					return 1;			
				} else {
					return 0;
				}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	@RequestMapping(value = "goVegan.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public int goVeganCommand(@RequestParam("cPage")String cPage, @RequestParam("m_idx")String m_idx, @RequestParam("v_context")String v_context) {
		try {
			if(m_idx.isEmpty()) {
				return 2;
			}else {
				
				String name = myService.getName(m_idx);
				
				GVVO gvvo = new GVVO();
				gvvo.setV_context(v_context);
				gvvo.setM_idx(m_idx);
				gvvo.setName(name);
				
				int res = myService.writeGV(gvvo);
				
				if(res>0) {
					return 1;			
				} else {
					return 0;
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	@RequestMapping("signIn.do")
	public ModelAndView signInCommand() {
		return new ModelAndView("signIn");
	}
	
	@RequestMapping("signUp.do")
	public ModelAndView signUpCommand() {
		return new ModelAndView("signUp");
	}

	@RequestMapping(value = "signUp_go.do", method = RequestMethod.GET,produces = "text/html; charset=utf-8")
	@ResponseBody
	public ModelAndView signUpGoCommand(@ModelAttribute("id")String id, @ModelAttribute("pwd")String pwd,
			@ModelAttribute("name")String name, @ModelAttribute("email")String email) {
		
		ModelAndView mv = new ModelAndView("signUpChk");			
		int res;
		try {
			MVO mvo = new MVO();
			mvo.setId(id);
			mvo.setEmail(email);
			mvo.setName(name);
			mvo.setPwd(pwd);
			res = myService.signUp(mvo);
		if(res>0) {
			String msg = "1";
			mv.addObject("msg",msg);
		}else {
			String msg = "2";
			mv.addObject("msg",msg);
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value = "signInCheck.do", produces = "text/html; charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public String signInChkCommand(@RequestParam("id")String id, @RequestParam("pwd")String pwd, HttpServletRequest request) {
		try {
			System.out.println(id+pwd);
			MVO mvo = myService.signInCheck(id,pwd);
			
			if(mvo.getGroups()!=null) {
				System.out.println(mvo.getGroups());
				request.getSession().setAttribute("midx", mvo.getM_idx());
				request.getSession().setAttribute("login", mvo.getGroups());
				return "1";
			}else {
				return "0";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
	
	@RequestMapping("signInClear.do")
	public ModelAndView signInClearCommand() {
		ModelAndView mv = new ModelAndView("redirect:danveP.do");
		return mv;
	}

	@RequestMapping("signOut.do")
	public ModelAndView signOutCommand(HttpServletRequest request) {
		request.getSession().removeAttribute("midx");
		return new ModelAndView("redirect: mainP.do");
	}

	@RequestMapping("deleteMember.do")
	public ModelAndView deleteMember(HttpServletRequest request) {
		try {
			String m_idx = (String)request.getSession().getAttribute("midx");
			int result = myService.deleteMember(m_idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect: mainP.do");
	}
	
	
	@RequestMapping(value = "changeGroups.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8" )
	@ResponseBody
	public String changeGroupsCommand(@RequestParam("groups")String groups, @RequestParam("m_idx")String m_idx, HttpServletRequest request) {
		try {	
				String idx;
				if(groups.equals("1")) {
					idx="2";
				}else {
					idx="1";
				}
				
				System.out.println(m_idx+" / "+idx);
				int res = myService.changeGroups(m_idx,idx);
				
				if(res>0) {
					return "관리권한이 변경되었습니다.";
				}else {
					return "권한 변경 중 오류가 발생하였습니다.";
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "권한 변경 중 오류가 발생하였습니다.";
		
	}
	
	@RequestMapping("writeCL.do")
	public ModelAndView writePageCommand() {
		return new ModelAndView("writeCL");
	}
	
}
