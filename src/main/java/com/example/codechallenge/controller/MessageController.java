package com.example.codechallenge.controller;

import com.example.codechallenge.model.domain.Message;
import com.example.codechallenge.model.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

@RestController
public class MessageController {
    @Autowired
    private MessageRepository messageRepository;

    @RequestMapping("/users/{userId}/messages")
    public Page<Message> showAll(@PathVariable(value = "userId") Long userId,
                                 @RequestParam(value = "senderId", required = false) Long senderId,
                                 @RequestParam(value = "age", required = false, defaultValue = "30") Integer age,
                                 @PageableDefault(page = 0, size = 100)
                                     @SortDefault.SortDefaults({ @SortDefault(sort = "createdAt", direction = Sort.Direction.DESC) })
                                             Pageable pageable) {

        LocalDateTime thirtyDaysAgo = LocalDateTime.now().minusDays(age);
        Date since = Date.from( thirtyDaysAgo.atZone( ZoneId.systemDefault()).toInstant());

        if (senderId == null) {
            return messageRepository.findAllByReceiverIdAndCreatedAtGreaterThan(userId, since, pageable);
        } else {
            return messageRepository.findAllByReceiverIdAndSenderIdAndCreatedAtGreaterThan(userId, senderId, since, pageable);
        }
    }

    @PostMapping("/messages")
    public ResponseEntity<Message> save(@RequestBody Message message) {
        return new ResponseEntity<>(messageRepository.save(message), HttpStatus.CREATED);
    }


}

