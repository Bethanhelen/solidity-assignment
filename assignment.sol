// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;
    contract studentDetails{
        uint public studentCount = 0;
        mapping (address => Student) public Details;
         enum Gender{Male, Female, Others}

        struct Student{
            address studentAddress;
            string name;
            string identification;
            string class;
            Gender studentGender;
        }
         function addStudent( string memory name, string memory identification, string memory class) public{
             Details[msg.sender] = Student(msg.sender, name, identification, class, Gender.Male);

             studentCount += 1;
         }

         function getStudentGender( address studentAddress) public view returns(Gender){
             return Details[studentAddress].studentGender;
          }
    }
