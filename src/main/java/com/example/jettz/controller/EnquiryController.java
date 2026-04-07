package com.example.jettz.controller;

import com.example.jettz.model.Enquiry;
import com.example.jettz.service.EnquiryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/enquiry")
public class EnquiryController {

    @Autowired
    private EnquiryService enquiryService;

    @PostMapping
    public Enquiry saveEnquiry(@RequestBody Enquiry enquiry){
        return enquiryService.saveEnquiryService(enquiry);
    }



}
