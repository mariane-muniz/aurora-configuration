package com.omni.aurora.configuration.config;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
class LinkDiscoveryConfigurationTest {

    @Autowired
    private LinkDiscoveryConfiguration linkDiscoveryConfiguration;

    @Test
    void discoverers() {
        Assertions
                .assertThat(linkDiscoveryConfiguration.discoverers()).isNotNull();
    }
}