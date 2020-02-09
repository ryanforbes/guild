package com.example.codechallenge.model.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Define all common audit fields here so that we'll have consistent representations
 * and names across all models.
 *
 * Note these do not track historical audit details, only the data for the last change
 *
 */
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
// We'll render everything here, but this is how to exclude values
@JsonIgnoreProperties(
        value = {"createdAt", "modifiedAt"}
)
public abstract class Audit {
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at", nullable = false, updatable = false, columnDefinition = "datetime DEFAULT CURRENT_TIMESTAMP")
    @CreatedDate
    private Date createdAt;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "modified_at", nullable = false, columnDefinition = "datetime DEFAULT CURRENT_TIMESTAMP")
    @LastModifiedDate
    private Date modifiedAt;

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
}
