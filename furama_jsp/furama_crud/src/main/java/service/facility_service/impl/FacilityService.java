package service.facility_service.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.facility_repository.IRepositoryFacility;
import repository.facility_repository.impl.FacilityServiceRepository;
import service.facility_service.IFacility;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FacilityService implements IFacility {
private static IRepositoryFacility repositoryFacility = new FacilityServiceRepository();
    @Override
    public List<Facility> findAllFacility() {
        return repositoryFacility.findAllFacility();
    }

    @Override
    public Map<String,String> addFacility(Facility facility) {
        Map<String , String> errMap = this.validate(facility);
        if (errMap.isEmpty()) {
            repositoryFacility.addFacility(facility);
        }
        return errMap;
    }

    @Override
    public void deleteFacility(int id) {
    repositoryFacility.deleteFacility(id);
    }

    @Override
    public Map<String,String> updateFacility(Facility facility) {
        Map<String,String> errMap= this.validate(facility);
        if (errMap.isEmpty()){
            repositoryFacility.updateFacility(facility);
        }
          return errMap;
    }

    private Map<String, String> validate(Facility facility) {
        Map<String, String> errMap = new HashMap<>();

        if (facility.getFacilityCost()<0){
            errMap.put("costErr","Costs cannot be negative");
        }

        if (facility.getFacilityArea()<0){
            errMap.put("areaErr","Area cannot be negative");
        }

        if (facility.getPoolArea()<0){
            errMap.put("poolErr","Pool area cannot be negative");
        }

        if (facility.getNumberOfFloor()<0 || (Math.floor(facility.getNumberOfFloor()) !=  Math.ceil(facility.getNumberOfFloor()))){
            errMap.put("floorErr","Number of floors must be an integer");
        }

        if (facility.getFacilityMaxPeople()< 0 || (Math.floor(facility.getFacilityMaxPeople()) !=  Math.ceil(facility.getFacilityMaxPeople()))){
            errMap.put("maxPeopleErr","Max people must be an integer");
        }

        if (!facility.getFacilityName().isEmpty()){
            if (!facility.getFacilityName().matches("(^[A-Z0-9][a-z0-9]+)( [A-Z0-9][a-z0-9]+)*$")){
                errMap.put("nameErr","Please input right format");
            }
        }else {
            errMap.put("nameErr","Please input service name");
        }
        return errMap;
    }

    @Override
    public Facility findByIdFacility(int id) {
        return repositoryFacility.findByIdFacility(id);
    }

    @Override
    public List<RentType> showRentFacility() {
        return repositoryFacility.showRentFacility();
    }

    @Override
    public List<FacilityType> showFacilityType() {
        return repositoryFacility.showFacilityType();
    }

    @Override
    public List<Facility> searchByName(String name) {
        return repositoryFacility.searchByName(name);
    }
}
