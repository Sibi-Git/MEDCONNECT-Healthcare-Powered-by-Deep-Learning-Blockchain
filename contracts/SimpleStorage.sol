pragma solidity ^0.5.13;

contract SimpleStorage
{

struct patient_info 
{

    address owner;
    address relation;
    string name;
    string password;
    uint age;
    
    uint bp;
    uint heart_attack;
    uint diabetes_level;
    uint gender;
    uint oxidation;
    uint cancer;
    uint covid;
    uint256 updated_date; 

}
struct hospital_info
{
    address owner;
    string name;
    string password;
}
struct lab_info
{
    address owner;
    string name;
    string password;
}

mapping(address => patient_info) public my_patient_struct;
mapping(address => hospital_info) public my_hospital_struct;
mapping(address => lab_info) public my_lab_struct;

function signup_patients (address owner,address relation,string memory name,string memory password,uint age,uint bp,uint heart_attack,uint diabetes_level,uint gender,uint oxidation,uint cancer,uint covid, uint256 updated_date) public 

{   
    require (keccak256(abi.encodePacked(my_patient_struct[owner].password )) != keccak256(abi.encodePacked(password)),"you are already signed up as patient");
    my_patient_struct[owner] = patient_info(owner,relation,name,password,age,bp, heart_attack,diabetes_level,gender,oxidation,cancer,covid,updated_date);

}

function signup_hospitals (address owner,string memory name,string memory password) public 
{   
    require (keccak256(abi.encodePacked(my_hospital_struct[owner].password )) != keccak256(abi.encodePacked(password)),"you are already signed up as hospital");
    my_hospital_struct[owner] = hospital_info(owner,name,password);
}
function signup_labs (address owner,string memory name,string memory password) public 
{   
    require (keccak256(abi.encodePacked(my_lab_struct[owner].password )) != keccak256(abi.encodePacked(password)),"you are already signed up as hospital");
    my_lab_struct[owner] = lab_info(owner,name,password);
}

function patient_login_validate (address ad,string memory pwd) public view returns(uint)
{
    if (keccak256(abi.encodePacked(my_patient_struct[ad].password )) == keccak256(abi.encodePacked(pwd)))
    {
    return 1;
    }
    else
    {
        return 0;
    }
}

function hospital_login_validate (address ad,string memory pwd) public view returns(uint)
{
    if (keccak256(abi.encodePacked(my_hospital_struct[ad].password )) == keccak256(abi.encodePacked(pwd)))
    {
    return 1;
    }
    else
    {
        return 0;
    }
}

function lab_login_validate (address ad,string memory pwd) public view returns(uint)
{
    if (keccak256(abi.encodePacked(my_lab_struct[ad].password )) == keccak256(abi.encodePacked(pwd)))
    {
    return 1;
    }
    else
    {
        return 0;
    }
}

function view_patient_info_by_owner_part1 (address ad) public view returns(string memory,uint,uint,uint,uint,uint)
{

    
    return (my_patient_struct[ad].name,my_patient_struct[ad].age,my_patient_struct[ad].bp,my_patient_struct[ad].heart_attack,my_patient_struct[ad].diabetes_level,my_patient_struct[ad].gender);
    

}
function view_patient_info_by_owner_part2 (address ad) public view returns(uint,uint,uint,uint256)
{

    
    return (my_patient_struct[ad].oxidation,my_patient_struct[ad].cancer,my_patient_struct[ad].covid,my_patient_struct[ad].updated_date);
    
}
function view_patient_info_by_relation_part1 (address ad) public view returns(string memory,uint,uint,uint,uint)
{

    
    return (my_patient_struct[my_patient_struct[ad].relation].name,my_patient_struct[my_patient_struct[ad].relation].age,my_patient_struct[my_patient_struct[ad].relation].bp,my_patient_struct[my_patient_struct[ad].relation].heart_attack,my_patient_struct[my_patient_struct[ad].relation].diabetes_level);
    

}

function view_patient_info_by_relation_part2 (address ad) public view returns(uint,uint,uint,uint,uint256)
{

    
    return (my_patient_struct[my_patient_struct[ad].relation].gender,my_patient_struct[my_patient_struct[ad].relation].oxidation,my_patient_struct[my_patient_struct[ad].relation].cancer,my_patient_struct[my_patient_struct[ad].relation].covid,my_patient_struct[my_patient_struct[ad].relation].updated_date);
    


}

function view_patient_by_hospital (address ad) public view returns(uint)
{

    return my_patient_struct[ad].age;
   
}


function view_patient_by_lab (address ad) public view returns(uint)
{

    return my_patient_struct[ad].age;
   
}


function update_patients (address owner,string memory name,uint age,uint bp,uint heart_attack,uint diabetes_level,uint gender,uint oxidation,uint cancer,uint covid, uint256 updated_date) public 

{   
    my_patient_struct[owner] = patient_info(owner,my_patient_struct[owner].relation,name,my_patient_struct[owner].password,age,bp, heart_attack,diabetes_level,gender,oxidation,cancer,covid,updated_date);

}


}


