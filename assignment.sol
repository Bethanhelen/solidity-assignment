// SPDX-Licence-Identifier:MIT
pragma solidity ^0.8.13
    contract studentDetails{
        uint public studentCount = 0;
        mapping (address => Student) public studentDetails;
        enum Gender{
            Male,
            Female,
            Others
        }

        struct Student{
            address studentAddress;
            string name;
            uint256 identification;
            string class;
        }
         function addStudent( string memory name, string memory identification, string memory class) public{
             Details[msg.sender] = Student(msg.sender, Gender.Male, name, identification, class);

             studentCount += 1;
         }

         function getStudentGender( address studentAddress) public view returns(Gender){
             return students[studentAddress].studentGender;
         }
    }
