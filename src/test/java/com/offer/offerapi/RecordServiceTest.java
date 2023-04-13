package com.offer.offerapi;

import com.offer.offerapi.models.Record;
import com.offer.offerapi.repositories.RecordRepository;
import com.offer.offerapi.services.RecordServiceImpl;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@ComponentScan(basePackages = "com.offer.offerapi")
@AutoConfigureMockMvc
@TestPropertySource(
		locations = "classpath:application.properties")
class RecordServiceTest {

	@Autowired
	RecordRepository recordRepository;

	@Autowired
	RecordServiceImpl recordService;

	@Test
	void contextLoads() {
	}

	@Test
	void testSave(){

		Record record = new Record(2L,2L, java.time.LocalDateTime.now());

		recordService.save(record);

		Pageable paging = PageRequest.of(0, 1);  /* Paging output */
		Page<Record> pageRecords;
		pageRecords = recordService.getSummary(2L, paging);
		List<Record> records = pageRecords.getContent();

		assert (record.getOfferId() == records.get(records.size()-1).getOfferId());
	}

}
