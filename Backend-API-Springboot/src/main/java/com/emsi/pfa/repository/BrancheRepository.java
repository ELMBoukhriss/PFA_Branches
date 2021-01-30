package com.emsi.pfa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.emsi.pfa.model.Branche;

@Repository
public interface BrancheRepository extends JpaRepository<Branche, Long> {

}
