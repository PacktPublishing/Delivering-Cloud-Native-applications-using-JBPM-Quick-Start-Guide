package org.kvarela.kie.services;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;

import org.kie.server.api.marshalling.MarshallingFormat;
import org.kie.server.client.KieServicesClient;
import org.kie.server.client.KieServicesConfiguration;
import org.kie.server.client.KieServicesFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import io.quarkus.runtime.StartupEvent;

@ApplicationScoped
public class KieClientInitializer {

	private static final String USER = "kieserver";
	private static final String PASSWORD = "kieserver1!";
	private static final String URL = "http://localhost:8080/kie-server/services/rest/server";
	private static final MarshallingFormat FORMAT = MarshallingFormat.JSON;
	private static final long TIMEOUT_MS = 6000l;
	private static KieServicesConfiguration kieServicesConfig;
	private static KieServicesClient kieServicesClient;


	public KieClientInitializer() {
		// TODO Auto-generated constructor stub
	}

	private static final Logger LOGGER = LoggerFactory.getLogger("ListenerBean");

	void onStart(@Observes StartupEvent ev) {               // 
		LOGGER.info("The application is starting...");
		LOGGER.info("Initializing Kie Services REST Configuration...");

		kieServicesConfig = KieServicesFactory.newRestConfiguration(URL, USER, PASSWORD,TIMEOUT_MS);
		kieServicesConfig.setMarshallingFormat(FORMAT);
		
		// Initializing the client
        kieServicesClient = KieServicesFactory.newKieServicesClient(kieServicesConfig);
	}

	public static KieServicesClient getKieServicesClient() {
		return kieServicesClient;
	}

	public static void setKieServicesClient(KieServicesClient kieServicesClient) {
		KieClientInitializer.kieServicesClient = kieServicesClient;
	}
	
	
}
