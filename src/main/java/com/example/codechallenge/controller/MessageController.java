package com.example.codechallenge.controller;

import com.example.codechallenge.model.domain.Message;
import com.example.codechallenge.model.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MessageController {
    @Autowired
    private MessageRepository messageRepository;

    @RequestMapping("/users/{userId}/messages")
    public Page<Message> showAll(@PathVariable(value = "userId") Long userId,
                                 @RequestParam(value = "senderId", required = false) Long senderId,
                                 @PageableDefault(page = 0, size = 100)
                                     @SortDefault.SortDefaults({ @SortDefault(sort = "createdAt", direction = Sort.Direction.DESC) })
                                             Pageable pageable) {
        if (senderId == null) {
            return messageRepository.findAllByReceiverId(userId, pageable);
        } else {
            return messageRepository.findAllByReceiverIdAndSenderId(userId, senderId, pageable);
        }
    }

    @PostMapping("/messages")
    public ResponseEntity<Message> save(@RequestBody Message message) {
        return new ResponseEntity<>(messageRepository.save(message), HttpStatus.CREATED);
    }


}

