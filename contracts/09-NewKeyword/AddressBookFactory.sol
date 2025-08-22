// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AddressBook {
    address public owner;
    
    struct Contact {
        uint id;
        string firstName;
        string lastName;
        uint[] phoneNumbers;
    }
    
    Contact[] private contacts;
    mapping(uint => uint) private idToIndex;
    uint private nextId = 1;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
    
    constructor(address _owner) {
        owner = _owner;
    }
    
    function addContact(string calldata firstName, string calldata lastName, uint[] calldata phoneNumbers) external onlyOwner {
        contacts.push(Contact(nextId, firstName, lastName, phoneNumbers));
        idToIndex[nextId] = contacts.length - 1;
        nextId++;
    }
    
    function deleteContact(uint id) external onlyOwner {
        uint index = idToIndex[id];
        require(index < contacts.length && contacts[index].id == id, "Contact not found");
        
        contacts[index] = contacts[contacts.length - 1];
        idToIndex[contacts[index].id] = index;
        contacts.pop();
        delete idToIndex[id];
    }
    
    function getContact(uint id) external view returns (Contact memory) {
        uint index = idToIndex[id];
        require(index < contacts.length && contacts[index].id == id, "Contact not found");
        return contacts[index];
    }
    
    function getAllContacts() external view returns (Contact[] memory) {
        return contacts;
    }
}

contract AddressBookFactory {
    mapping(address => address) private addressBooks;
    
    function deploy() external returns (address) {
        require(addressBooks[msg.sender] == address(0), "AddressBook already exists");
        
        AddressBook newAddressBook = new AddressBook(msg.sender);
        addressBooks[msg.sender] = address(newAddressBook);
        
        return address(newAddressBook);
    }
    
    function getAddressBook(address user) external view returns (address) {
        return addressBooks[user];
    }
}