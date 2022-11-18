//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract simplestorage
{
    bool hasluckynumber = false;
    uint256 public luckynumber;

    //person public student = person({luckynumber:2,name:"rahul})

    function store (uint256 _luckynumber) public 
    {
        luckynumber=_luckynumber +10;
    }
    //view and pure
    function getit() public view returns(uint256)
    {
        return luckynumber;
    }

    struct person
    {
        uint256 luckynumber;
        string name;
        address metaid; 
    }
    //person public student = person({luckynumber:12,name:"rahul",metaid : 0xe8C537a0fCDBDd901564dF5D4e43f84ecD1c696A});
    //person public student2 = person({luckynumber:3,name:"bhaloo",metaid : 0xe8C537a0fCDBDd901564dF5D4e43f84ecD1c696A});
    //person public student3 = person({luckynumber:4,name:"Aaalo",metaid : 0xe8C537a0fCDBDd901564dF5D4e43f84ecD1c696A});
    //person public student4 = person({luckynumber:5,name:"Yash",metaid : 0xe8C537a0fCDBDd901564dF5D4e43f84ecD1c696A});
    person[] public students;
        function addstudent(string memory _name, uint256 _luckynumber, address _metaid) public 
        {
            students.push(person(_luckynumber,_name,_metaid));
        }
}
