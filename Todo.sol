//SPDX-License-Identifier:MIT
pragma solidity ^0.8.3;
contract TodoList{
    struct Todo{
        string action;
        uint day;
        uint month;
        uint year;
    }
   Todo[] internal todoarr; 
function addtolist(string memory _action,uint _day,uint _month,uint _year) external {
todoarr.push(Todo({
    action: _action,
    day: _day,
    month: _month,
    year : _year
}));
}

function getfromlist(uint _index) public view returns(string memory,uint,uint ,uint){
Todo memory todo = todoarr[_index];
return (todo.action,todo.day,todo.month,todo.year);}


function remfromtodo(uint index) external {
todoarr[index] = todoarr[todoarr.length -1];
todoarr.pop();}

function editaction(uint index,string memory _action) external{
Todo storage todos= todoarr[index];
todos.action = _action;}

function editDay(uint index,uint _day) external{
Todo storage todos = todoarr[index];
todos.day = _day;}

function editMonth(uint index,uint _month) external{
Todo storage todos = todoarr[index];
todos.month = _month;}

function editYear(uint index,uint _year) external{
Todo storage todos = todoarr[index];
 todos.year = _year;}

}
