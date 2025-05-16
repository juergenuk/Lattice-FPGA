--  Explanations of this file:
--
--  The first 2 lines will probably the same for many projects,,
--    and defines the library used in this project 
--
--  entity  starts the block of all IOs used,
--  there are 3 parts to this line:
--      entity  Name_of_this_Entity is
--  port (     port and open bracket
--  Then follow the Inputs
--    The name of the input,  an :, and then if in out or inout,  and a semicolon
--  and the outputs 
--    The name of the output, an :, and then if in out or inout,  and a semicolon
--       except for the last line, here no semicolon at the end
--    and a last line with ) close bracket, and semicolon
--  end entity  plus the same entity name
--
--  architecture starts the description of the functionality
--  architecture   RTL name  of and  the same name as in entity
--  begin
--     o_LED_1 <=  i_switch_ and ;
--     plus the orthers
--  end RTL and ;

         
library ieee;
use ieee.std_logic_1164.all;
 
entity Switches_To_LEDs is
  port (
    -- Push-Button Switches:
    i_Switch_1 : in std_logic;
    i_Switch_2 : in std_logic;
    i_Switch_3 : in std_logic;
    i_Switch_4 : in std_logic;
     
    -- LED Pins:
    o_LED_1 : out std_logic;
    o_LED_2 : out std_logic;
    o_LED_3 : out std_logic;
    o_LED_4 : out std_logic
    );
end entity Switches_To_LEDs;
 
architecture RTL of Switches_To_LEDs is
begin
  o_LED_1 <= i_Switch_1;
  o_LED_2 <= i_Switch_2;
  o_LED_3 <= i_Switch_3; 
  o_LED_4 <= i_Switch_4;
   
end RTL;

