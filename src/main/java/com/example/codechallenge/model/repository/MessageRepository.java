package com.example.codechallenge.model.repository;

import com.example.codechallenge.model.domain.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {
    List<Message> findAllByReceiverId(Long id);

    List<Message> findAllByReceiverIdAndSenderId(Long receiverId, Long senderId);
}
