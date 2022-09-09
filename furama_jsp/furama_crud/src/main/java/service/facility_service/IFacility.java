package service.facility_service;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;
import java.util.Map;

public interface IFacility {
    List<Facility> findAllFacility();

    Map<String,String> addFacility(Facility facility);

    void deleteFacility(int id);

    Map<String,String> updateFacility(Facility facility);

    Facility findByIdFacility(int id);

    List<RentType> showRentFacility();

    List<FacilityType> showFacilityType();

    List<Facility> searchByName(String name);
}
