// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //solidity version

contract simplestorage{
    //favoriteNumber gets initilized to 0 if no value is given
    uint256 myFavoriteNumber;   //0

    //uint256[] listofFavouriteNumber
    struct person{
        uint256 favoriteNumber;
        string Name;
    }

    //dynamic array
    person [] public listofPeople;

    //sachin->10
    mapping (string => uint256) public nametoFavoriteNmber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber=_favoriteNumber;
    }

    //view,pure
    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }

    //calldata,memory,storage
    function addperson(string memory _name,uint256 _favoriteNumber) public {
        listofPeople.push(person(_favoriteNumber,_name));
        nametoFavoriteNmber[_name]=_favoriteNumber;
    }
}
