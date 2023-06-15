package com.example.labdevops.config;

import lombok.Data;
import org.springframework.context.annotation.Configuration;

@Configuration
@Data

public class Config {
    String botName = System.getenv("BOT_NAME");

    String botToken = System.getenv("BOT_TOKEN");
}
