//Use a different set of files (new project)and 
//create Election2022 contract using new in ElectionCommision 


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Election
{
    address public id;
    string public candidateName;
   
   constructor(address _id, string memory _candidateName) payable {
        id = _id;
        candidateName = _candidateName;
        
    }
}

contract ElectionCommittee 
{

    Election[] public election;

    function create(address _id, string memory _candidateName) public {
        Election elec = new Election(_id, _candidateName);
        election.push(elec);
    }

    function createAndSendEther(address _id, string memory _candidateName) public payable {
        Election elec = (new Election){value: msg.value}(_id, _candidateName);
        election.push(elec);
    }

    function getCandidate(uint _index)
        public
        view
        returns (
            address admin,
            string memory candidateName,
            uint balance
           
        )
    {
        Election elec = election[_index];

        return (elec.id(), elec.candidateName(), address(elec).balance);
    }
}