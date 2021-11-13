// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract OriginalFood {
  //Variables

  //Contract Owner
  address public owner;


  //For test compilation porpouse
  uint Value;
  function set(uint valore) public {
    Value = valore;
  }
  function get() public view returns (uint) {
    return Value;
  }
  //For test compilation porpouse


  constructor() public {
    // Set the contract owner 
    owner = msg.sender;
  }

  function getTime () public view returns(uint256 time) {
        return block.timestamp - 30 days;
  }

  //Structs
  struct Product {
    bytes20 Id;
    string Title;
    string Description;
    uint256 quantity;
    uint256 weigth;
    Country Origin;
    address payable Owner;
  }
  mapping(uint256 => Product) products;

  //Enums
  enum Country {
    Afghanistan,
    Albania,
    Algeria,
    Andorra,
    Angola,
    Antigua_and_Barbuda,
    Argentina,
    Armenia,
    Australia,
    Austria,
    Azerbaijan,
    Bahamas,
    Bahrain,
    Bangladesh,
    Barbados,
    Belarus,
    Belgium,
    Belize,
    Benin,
    Bhutan,
    Bolivia,
    Bosnia_and_Herzegovina,
    Botswana,
    Brazil,
    Brunei,
    Bulgaria,
    Burkina_Faso,
    Burundi,
    Cote_d_Ivoire,
    Cabo_Verde,
    Cambodia,
    Cameroon,
    Canada,
    Central_African_Republic,
    Chad,
    Chile,
    China,
    Colombia,
    Comoros,
    Congo_Congo_Brazzaville,
    Costa_Rica,
    Croatia,
    Cuba,
    Cyprus,
    Czechia_Czech_Republic,
    Democratic_Republic_of_the_Congo,
    Denmark,
    Djibouti,
    Dominica,
    Dominican_Republic,
    Ecuador,
    Egypt,
    El_Salvador,
    Equatorial_Guinea,
    Eritrea,
    Estonia,
    Eswatini_former_Swaziland,
    Ethiopia,
    Fiji,
    Finland,
    France,
    Gabon,
    Gambia,
    Georgia,
    Germany,
    Ghana,
    Greece,
    Grenada,
    Guatemala,
    Guinea,
    Guinea_Bissau,
    Guyana,
    Haiti,
    Holy_See,
    Honduras,
    Hungary,
    Iceland,
    India,
    Indonesia,
    Iran,
    Iraq,
    Ireland,
    Israel,
    Italy,
    Jamaica,
    Japan,
    Jordan,
    Kazakhstan,
    Kenya,
    Kiribati,
    Kuwait,
    Kyrgyzstan,
    Laos,
    Latvia,
    Lebanon,
    Lesotho,
    Liberia,
    Libya,
    Liechtenstein,
    Lithuania,
    Luxembourg,
    Madagascar,
    Malawi,
    Malaysia,
    Maldives,
    Mali,
    Malta,
    Marshall_Islands,
    Mauritania,
    Mauritius,
    Mexico,
    Micronesia,
    Moldova,
    Monaco,
    Mongolia,
    Montenegro,
    Morocco,
    Mozambique,
    Myanmar_formerly_Burma,
    Namibia,
    Nauru,
    Nepal,
    Netherlands,
    New_Zealand,
    Nicaragua,
    Niger,
    Nigeria,
    North_Korea,
    North_Macedonia,
    Norway,
    Oman,
    Pakistan,
    Palau,
    Palestine_State,
    Panama,
    Papua_New_Guinea,
    Paraguay,
    Peru,
    Philippines,
    Poland,
    Portugal,
    Qatar,
    Romania,
    Russia,
    Rwanda,
    Saint_Kitts_and_Nevis,
    Saint_Lucia,
    Saint_Vincent_and_the_Grenadines,
    Samoa,
    San_Marino,
    Sao_Tome_and_Principe,
    Saudi_Arabia,
    Senegal,
    Serbia,
    Seychelles,
    Sierra_Leone,
    Singapore,
    Slovakia,
    Slovenia,
    Solomon_Islands,
    Somalia,
    South_Africa,
    South_Korea,
    South_Sudan,
    Spain,
    Sri_Lanka,
    Sudan,
    Suriname,
    Sweden,
    Switzerland,
    Syria,
    Tajikistan,
    Tanzania,
    Thailand,
    Timor_Leste,
    Togo,
    Tonga,
    Trinidad_and_Tobago,
    Tunisia,
    Turkey,
    Turkmenistan,
    Tuvalu,
    Uganda,
    Ukraine,
    United_Arab_Emirates,
    United_Kingdom,
    United_States_of_America,
    Uruguay,
    Uzbekistan,
    Vanuatu,
    Venezuela,
    Vietnam,
    Yemen,
    Zambia,
    Zimbabwe
  }


}
