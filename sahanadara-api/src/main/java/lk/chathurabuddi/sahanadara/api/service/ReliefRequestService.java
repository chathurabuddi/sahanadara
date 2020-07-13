package lk.chathurabuddi.sahanadara.api.service;

import java.util.List;

import lk.chathurabuddi.sahanadara.api.entity.ReliefRequest;
import lk.chathurabuddi.sahanadara.api.repository.ReliefRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReliefRequestService {

    private final ReliefRequestRepository reliefRequestRepository;

    @Autowired
    public ReliefRequestService(ReliefRequestRepository reliefRequestRepository) {
        this.reliefRequestRepository = reliefRequestRepository;
    }

    public List<ReliefRequest> findAll(Boolean completed) {
        return reliefRequestRepository.findAll(completed);
    }
}
