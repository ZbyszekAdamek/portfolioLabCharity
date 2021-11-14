package pl.coderslab.charity.service;

import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.repository.DonationRepository;

import java.util.List;

@Service
public class JpaDonationService implements DonationService {
    private final DonationRepository donationRepository;

    public JpaDonationService(DonationRepository donationRepository) {
        this.donationRepository = donationRepository;
    }

    @Override
    public List<Donation> getAllDonations() {
        return donationRepository.findAll();
    }

    @Override
    public Integer getTotalQuantity() {
        List<Donation>donations = donationRepository.findAll();
        return donations.stream().mapToInt(Donation::getQuantity).sum();
    }
}
