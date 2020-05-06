package com.tr.bluemoon.helloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/hello-world")
public class HelloWorldController {

    @GetMapping
    public String getHelloWorld() {
        return "Hello World !!!";
    }
}
