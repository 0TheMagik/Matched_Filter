# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REF_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RET_LENGTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to update DATA_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to validate DATA_SIZE
	return true
}

proc update_PARAM_VALUE.REF_LENGTH { PARAM_VALUE.REF_LENGTH } {
	# Procedure called to update REF_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REF_LENGTH { PARAM_VALUE.REF_LENGTH } {
	# Procedure called to validate REF_LENGTH
	return true
}

proc update_PARAM_VALUE.RET_LENGTH { PARAM_VALUE.RET_LENGTH } {
	# Procedure called to update RET_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RET_LENGTH { PARAM_VALUE.RET_LENGTH } {
	# Procedure called to validate RET_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.DATA_SIZE { MODELPARAM_VALUE.DATA_SIZE PARAM_VALUE.DATA_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_SIZE}] ${MODELPARAM_VALUE.DATA_SIZE}
}

proc update_MODELPARAM_VALUE.REF_LENGTH { MODELPARAM_VALUE.REF_LENGTH PARAM_VALUE.REF_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REF_LENGTH}] ${MODELPARAM_VALUE.REF_LENGTH}
}

proc update_MODELPARAM_VALUE.RET_LENGTH { MODELPARAM_VALUE.RET_LENGTH PARAM_VALUE.RET_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RET_LENGTH}] ${MODELPARAM_VALUE.RET_LENGTH}
}

