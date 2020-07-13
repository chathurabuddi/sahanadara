package lk.chathurabuddi.sahanadara.api.controller;

import java.util.List;

import lk.chathurabuddi.sahanadara.api.entity.ReliefRequest;
import lk.chathurabuddi.sahanadara.api.service.ReliefRequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReliefRequestController {

    final ReliefRequestService reliefRequestService;

    @Autowired
    public ReliefRequestController(ReliefRequestService reliefRequestService) {
        this.reliefRequestService = reliefRequestService;
    }

    @GetMapping("/relief-request")
    public List<ReliefRequest> findReliefRequests(
            @RequestParam(name = "completed", required = false) Boolean completed) {
        return reliefRequestService.findAll(completed);
    }
}
