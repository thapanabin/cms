package com.vastika.training.java.cms.repositories;

import com.vastika.training.java.cms.models.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherRepository extends JpaRepository<Teacher,Integer> {


}
