
-- VHDL Instantiation Created from source file Control_module.vhd -- 09:49:16 04/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_module
	PORT(
		data_from_control_device : IN std_logic_vector(7 downto 0);
		data_from_modules_master : IN std_logic_vector(7 downto 0);          
		data_to_control_device : OUT std_logic_vector(7 downto 0);
		data_to_modules_master : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Control_module: Control_module PORT MAP(
		data_from_control_device => ,
		data_to_control_device => ,
		data_to_modules_master => ,
		data_from_modules_master => 
	);


