// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Hospital{
    
    struct patient{
        string name;
        uint8 age;
        string gender;
        string problem;
        uint256 phone;
    }

    mapping(uint256 => patient) public patientData;

    function addPatient(uint256 _id, string memory _name, uint8 _age, string memory _gender, string memory _problem,
        uint256 phone
        ) external {
            patientData[_id] = patient(_name, _age, _gender, _problem, phone);
    }
}