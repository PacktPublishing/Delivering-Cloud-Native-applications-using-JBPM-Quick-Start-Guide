package org.kvarela.rest.client;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
public class OrderProcessResourceTest {

    @Test
    public void testHelloEndpoint() {
        given()
          .when().get("/new-order")
          .then()
             .statusCode(200)
             .body(is("hello"));
    }

}