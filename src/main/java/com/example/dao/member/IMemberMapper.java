package com.example.dao.member;

import com.example.entity.Member;

import java.util.List;

public interface IMemberMapper {
    void saveMember(Member member);
    List<Member> getMembersWhoAnswered();
    void saveRole(Member member) ;

    void updateMember(Member member);

    void deleteMember(int memberId);

    List<Member> getAllMembers();

    Member findMemberById(String memberId);
}
