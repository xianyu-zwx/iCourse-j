package com.hbgc.course.admin.mqtt;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(MQTTConfigBuilder.PREFIX)
public class MQTTConfigBuilder {

    public static final String PREFIX = "publish.mqtt";

    private String host;

    private String clientId;

    private MqttConnectOptions options;

}
