package com.homecommerce.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.homecommerce.entity.Address;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer> {

}
