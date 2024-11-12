package com.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.entity.FacultyEntity;

@Repository
public interface FacultyRepository extends MongoRepository<FacultyEntity, String> {

}
