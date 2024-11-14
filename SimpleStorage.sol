// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


contract SimpleStorage{
        uint256 favouriteNumber;

        struct People{
            uint256 favouriteNumber;
            string name;

        }

        People[] public userFavouriteNumber;

        mapping(string=>uint256) public  userFavouriteNumberDic;

        function store(uint256 _favouriteNumber) public {
            favouriteNumber=_favouriteNumber;
        }

        function retrive () public view returns (uint256 ){
            return  favouriteNumber;
        }

        function  addUser (string memory _name , uint256 _favouriteNumber) public{
            userFavouriteNumber.push(People({name:_name,favouriteNumber:_favouriteNumber}));
            userFavouriteNumberDic[_name]=_favouriteNumber;
        }
}