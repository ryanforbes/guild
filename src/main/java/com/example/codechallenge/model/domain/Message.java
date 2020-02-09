package com.example.codechallenge.model.domain;

import javax.persistence.*;

@Entity
@Table(name = "message")
public class Message extends Audit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;

    @Column(updatable = false, nullable = false)
    private Long senderId;

    @Column(updatable = false, nullable = false)
    private Long receiverId;

    @Lob // "Large object" - let's not restrict the size of the message
    private String message;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSenderId() {
        return senderId;
    }

    public void setSenderId(Long senderId) {
        this.senderId = senderId;
    }

    public Long getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(Long receiverId) {
        this.receiverId = receiverId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
