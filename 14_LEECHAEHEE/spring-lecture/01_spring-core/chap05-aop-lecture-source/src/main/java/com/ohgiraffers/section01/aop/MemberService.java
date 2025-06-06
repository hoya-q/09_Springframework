package com.ohgiraffers.section01.aop;

import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class MemberService {
    private final MemberDAO memberDAO;

    public MemberService(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    public Map<Long, MemberDTO> selectMembers() {
        System.out.println("selectMembers() 메서드 실행");
        return memberDAO.selectMembers();
    }

    public MemberDTO selectMember(long id) {
        System.out.println("selectMember() 메서드 실행");
        return memberDAO.selectMember(id);
    }
}
