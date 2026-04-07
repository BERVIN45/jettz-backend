package com.example.jettz.service;

import com.example.jettz.model.Enquiry;
import com.example.jettz.repository.EnquiryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EnquiryService {

    @Autowired
    private EnquiryRepository enquiryRepository;

    public Enquiry saveEnquiryService(Enquiry enquiry){
       return enquiryRepository.save(enquiry);
    }
}
