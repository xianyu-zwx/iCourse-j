package com.hbgc.course.admin.config;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.dao.AttendanceMapper;
import com.hbgc.course.admin.dao.EnvironmentMapper;
import com.hbgc.course.admin.entity.EnvironmentData;
import com.hbgc.course.admin.entity.MqttAttendanceMessage;
import lombok.Data;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;

import java.util.Date;

import static org.springframework.integration.mqtt.support.MqttHeaders.TOPIC;

@Configuration
public class MqttConfig {

//    public static final String BROKER_URL = "tcp://127.0.0.1:1883";
   public static final String BROKER_URL = "tcp://127.0.0.1:1883";
    public static final String CLIENT_ID = "spring-boot-mqtt-client1";
    public static final String CLIENT2_ID = "spring-boot-mqtt-client2";
//public static final String TOPIC = "mqtt/#";
//    public static final String ATTENDANCE_TOPIC = "/classroom/sensors";
      public static final String ATTENDANCE_TOPIC = "/classroom/face";
//    public static final String ENVIRONMENT_TOPIC = "/classroom/environment";
    public static final String ENVIRONMENT_TOPIC = "/classroom/sensors";
    @Bean
    public MqttPahoClientFactory mqttClientFactory() {
        DefaultMqttPahoClientFactory factory = new DefaultMqttPahoClientFactory();
        MqttConnectOptions options = new MqttConnectOptions();
        options.setServerURIs(new String[]{BROKER_URL});
        factory.setConnectionOptions(options);
        return factory;
    }

    @Bean
    public MessageChannel mqttInputChannel() {
        return new DirectChannel();
    }

    @Bean
    public MqttPahoMessageDrivenChannelAdapter attendanceAdapter(MqttPahoClientFactory mqttClientFactory) {
        MqttPahoMessageDrivenChannelAdapter adapter = new MqttPahoMessageDrivenChannelAdapter(CLIENT_ID, mqttClientFactory, ATTENDANCE_TOPIC);
        adapter.setCompletionTimeout(5000);
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setQos(1);
        adapter.setOutputChannel(mqttInputChannel());
        return adapter;
    }

    @Bean
    public MqttPahoMessageDrivenChannelAdapter environmentAdapter(MqttPahoClientFactory mqttClientFactory) {
        MqttPahoMessageDrivenChannelAdapter adapter = new MqttPahoMessageDrivenChannelAdapter(CLIENT2_ID, mqttClientFactory, ENVIRONMENT_TOPIC);
        adapter.setCompletionTimeout(5000);
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setQos(1);
        adapter.setOutputChannel(mqttInputChannel());
        return adapter;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInputChannel")
    public MessageHandler handler(AttendanceMapper attendanceMapper, EnvironmentMapper environmentMapper) {
        return message -> {
            String topic = message.getHeaders().get("mqtt_receivedTopic").toString();
            String payload = message.getPayload().toString();
            if (ATTENDANCE_TOPIC.equals(topic)) {
                MqttAttendanceMessage mqttMessage = JSON.parseObject(payload, MqttAttendanceMessage.class);
                attendanceMapper.insertAttendance(mqttMessage);
            } else if (ENVIRONMENT_TOPIC.equals(topic)) {
                EnvironmentData environmentData = JSON.parseObject(payload, EnvironmentData.class);
                environmentMapper.insertEnvironmentData(environmentData);
            }
        };
    }

 //   @Bean
   // @ServiceActivator(inputChannel = "mqttInputChannel")
    //public MessageHandler handler(AttendanceMapper attendanceMapper) {
       // return message -> {
            //String payload = message.getPayload().toString();
            //MqttAttendanceMessage mqttMessage = JSON.parseObject(payload, MqttAttendanceMessage.class);
            //int timestampSeconds = (int) (new Date().getTime() / 1000);
            //mqttMessage.setTime(timestampSeconds);
            //mqttMessage.setTime(new Date());
            //attendanceMapper.insertAttendance(mqttMessage);
//        };
//    }
}