package com.offer.offerapi;

import com.offer.offerapi.models.Record;
import com.offer.offerapi.repositories.RecordRepository;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * @author Aleksei Chursin
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@ComponentScan(basePackages = "com.offer.offerapi")
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application.properties")
public class RecordControllerIntegrationTest {

    @Autowired
    private MockMvc mvc;

    @Autowired
    RecordRepository recordRepository;

    @After
    public void dbCleanup() {
        recordRepository.deleteAll();
    }

    @Test
    public void createRecord_whenCreated_thenStatus201()
            throws Exception {
        Record test = new Record();
        test.setClientId(1L);
        test.setOfferId(1L);
        test.setLastSeen(java.time.LocalDateTime.now());

        ResultActions response = mvc.perform(post("/offers/")
                .param("client_id", String.valueOf(test.getClientId())
                ).param("offer_id", String.valueOf(test.getClientId())));
        response.andDo(print()).andExpect(status().isCreated());
    }

    @Test
    public void getRecord_whenFound_thenStatus200()
            throws Exception {
        mvc.perform(get("/offers/get/2").param("size", "1"))
                .andExpect(status().isOk());
    }
}
