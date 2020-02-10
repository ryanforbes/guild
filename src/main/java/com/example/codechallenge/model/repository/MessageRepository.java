package com.example.codechallenge.model.repository;

import com.example.codechallenge.model.domain.Message;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {

    Page<Message> findAllByReceiverId(Long id, Pageable pageable);
    Page<Message> findAllByReceiverIdAndSenderId(Long receiverId, Long senderId, Pageable pageable);
}
