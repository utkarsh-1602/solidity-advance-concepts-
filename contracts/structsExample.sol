// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract TodoList{

    struct todoItems{
        string text;
        bool completed; 
    }

    todoItems[] public todos; 


    function createTodo(string memory _text) public{
        // multiple ways to initialize a struct 
        
        // method 1 -> call it like a function 
        todos.push(todoItems(_text, false)); 

        // method 2 -> explicitly set the keys 
        todo.push(todoItems({text: _text, completed: false}));

        // method 3 -> initialize an empty struct, then set individual properties 
        todoItems memory newList;

        newList.text = _text;
        newList.completed = false;
        todos.push(newList); 
    }

    // update a struct value 
    function Update(uint _index, string memory _text) public{
        todos[_index].text = _text;
    }

    // update completed 
    function TodoListCompleted(uint _index) public{
        todos[_index].completed = !todos[_index].completed; 
    }
}