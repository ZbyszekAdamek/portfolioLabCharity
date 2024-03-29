package pl.coderslab.charity.service;

import pl.coderslab.charity.entity.Donation;
import java.util.List;

public interface DonationService {
    List<Donation>getAllDonations();
    Integer getTotalQuantity();
    Donation save(Donation donation);
}
