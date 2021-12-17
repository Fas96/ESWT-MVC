package com.example.dao.session;

import com.example.entity.Session;

import java.util.List;

public interface ISessionMapper {
    void saveSession(Session sessionItem);

    void updateSession(Session sessionItem);
    void deleteSession(int sessionId);

    List<Session> getAllSessions();

    Session findSessionById(int sessionId);
}
