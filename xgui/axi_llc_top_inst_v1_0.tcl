# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AxiAddrWidthFull" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AxiAddrWidthLite" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AxiDataWidthFull" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AxiDataWidthLite" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AxiIdWidthFull" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AxiUserWidthFull" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CFG_INTF_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CFG_INTF_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CFG_INTF_AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CFG_INTF_PROTWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CFG_INTF_RESPWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_ATOPWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_AXI_USER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_BURSTWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_CACHEWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_LENWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_PROTWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_QOSWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_REGIONWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_RESPWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_CPU_INTF_SIZEWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_ATOPWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_AXI_USER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_BURSTWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_CACHEWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_LENWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_PROTWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_QOSWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_REGIONWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_RESPWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_MEM_INTF_SIZEWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NumBlocks" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NumCfgRegcp" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NumLines" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SetAssociativity" -parent ${Page_0}


}

proc update_PARAM_VALUE.AxiAddrWidthFull { PARAM_VALUE.AxiAddrWidthFull } {
	# Procedure called to update AxiAddrWidthFull when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiAddrWidthFull { PARAM_VALUE.AxiAddrWidthFull } {
	# Procedure called to validate AxiAddrWidthFull
	return true
}

proc update_PARAM_VALUE.AxiAddrWidthLite { PARAM_VALUE.AxiAddrWidthLite } {
	# Procedure called to update AxiAddrWidthLite when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiAddrWidthLite { PARAM_VALUE.AxiAddrWidthLite } {
	# Procedure called to validate AxiAddrWidthLite
	return true
}

proc update_PARAM_VALUE.AxiDataWidthFull { PARAM_VALUE.AxiDataWidthFull } {
	# Procedure called to update AxiDataWidthFull when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiDataWidthFull { PARAM_VALUE.AxiDataWidthFull } {
	# Procedure called to validate AxiDataWidthFull
	return true
}

proc update_PARAM_VALUE.AxiDataWidthLite { PARAM_VALUE.AxiDataWidthLite } {
	# Procedure called to update AxiDataWidthLite when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiDataWidthLite { PARAM_VALUE.AxiDataWidthLite } {
	# Procedure called to validate AxiDataWidthLite
	return true
}

proc update_PARAM_VALUE.AxiIdWidthFull { PARAM_VALUE.AxiIdWidthFull } {
	# Procedure called to update AxiIdWidthFull when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiIdWidthFull { PARAM_VALUE.AxiIdWidthFull } {
	# Procedure called to validate AxiIdWidthFull
	return true
}

proc update_PARAM_VALUE.AxiUserWidthFull { PARAM_VALUE.AxiUserWidthFull } {
	# Procedure called to update AxiUserWidthFull when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiUserWidthFull { PARAM_VALUE.AxiUserWidthFull } {
	# Procedure called to validate AxiUserWidthFull
	return true
}

proc update_PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_CFG_INTF_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_CFG_INTF_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_CFG_INTF_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_CFG_INTF_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH } {
	# Procedure called to update C_AXI_CFG_INTF_AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH } {
	# Procedure called to validate C_AXI_CFG_INTF_AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH } {
	# Procedure called to update C_AXI_CFG_INTF_PROTWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH } {
	# Procedure called to validate C_AXI_CFG_INTF_PROTWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH } {
	# Procedure called to update C_AXI_CFG_INTF_RESPWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH } {
	# Procedure called to validate C_AXI_CFG_INTF_RESPWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_ATOPWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_ATOPWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_AXI_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH { PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_AXI_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_BURSTWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_BURSTWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_CACHEWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_CACHEWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_LENWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_LENWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_PROTWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_PROTWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_QOSWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_QOSWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_REGIONWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_REGIONWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_RESPWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_RESPWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH } {
	# Procedure called to update C_AXI_CPU_INTF_SIZEWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH { PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH } {
	# Procedure called to validate C_AXI_CPU_INTF_SIZEWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_ATOPWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_ATOPWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_AXI_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH { PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_AXI_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_BURSTWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_BURSTWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_CACHEWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_CACHEWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_LENWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_LENWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_PROTWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_PROTWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_QOSWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_QOSWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_REGIONWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_REGIONWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_RESPWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_RESPWIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH } {
	# Procedure called to update C_AXI_MEM_INTF_SIZEWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH { PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH } {
	# Procedure called to validate C_AXI_MEM_INTF_SIZEWIDTH
	return true
}

proc update_PARAM_VALUE.NumBlocks { PARAM_VALUE.NumBlocks } {
	# Procedure called to update NumBlocks when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NumBlocks { PARAM_VALUE.NumBlocks } {
	# Procedure called to validate NumBlocks
	return true
}

proc update_PARAM_VALUE.NumCfgRegcp { PARAM_VALUE.NumCfgRegcp } {
	# Procedure called to update NumCfgRegcp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NumCfgRegcp { PARAM_VALUE.NumCfgRegcp } {
	# Procedure called to validate NumCfgRegcp
	return true
}

proc update_PARAM_VALUE.NumLines { PARAM_VALUE.NumLines } {
	# Procedure called to update NumLines when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NumLines { PARAM_VALUE.NumLines } {
	# Procedure called to validate NumLines
	return true
}

proc update_PARAM_VALUE.SetAssociativity { PARAM_VALUE.SetAssociativity } {
	# Procedure called to update SetAssociativity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SetAssociativity { PARAM_VALUE.SetAssociativity } {
	# Procedure called to validate SetAssociativity
	return true
}


proc update_MODELPARAM_VALUE.SetAssociativity { MODELPARAM_VALUE.SetAssociativity PARAM_VALUE.SetAssociativity } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SetAssociativity}] ${MODELPARAM_VALUE.SetAssociativity}
}

proc update_MODELPARAM_VALUE.NumLines { MODELPARAM_VALUE.NumLines PARAM_VALUE.NumLines } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NumLines}] ${MODELPARAM_VALUE.NumLines}
}

proc update_MODELPARAM_VALUE.NumBlocks { MODELPARAM_VALUE.NumBlocks PARAM_VALUE.NumBlocks } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NumBlocks}] ${MODELPARAM_VALUE.NumBlocks}
}

proc update_MODELPARAM_VALUE.AxiIdWidthFull { MODELPARAM_VALUE.AxiIdWidthFull PARAM_VALUE.AxiIdWidthFull } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiIdWidthFull}] ${MODELPARAM_VALUE.AxiIdWidthFull}
}

proc update_MODELPARAM_VALUE.AxiAddrWidthFull { MODELPARAM_VALUE.AxiAddrWidthFull PARAM_VALUE.AxiAddrWidthFull } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiAddrWidthFull}] ${MODELPARAM_VALUE.AxiAddrWidthFull}
}

proc update_MODELPARAM_VALUE.AxiDataWidthFull { MODELPARAM_VALUE.AxiDataWidthFull PARAM_VALUE.AxiDataWidthFull } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiDataWidthFull}] ${MODELPARAM_VALUE.AxiDataWidthFull}
}

proc update_MODELPARAM_VALUE.AxiAddrWidthLite { MODELPARAM_VALUE.AxiAddrWidthLite PARAM_VALUE.AxiAddrWidthLite } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiAddrWidthLite}] ${MODELPARAM_VALUE.AxiAddrWidthLite}
}

proc update_MODELPARAM_VALUE.AxiDataWidthLite { MODELPARAM_VALUE.AxiDataWidthLite PARAM_VALUE.AxiDataWidthLite } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiDataWidthLite}] ${MODELPARAM_VALUE.AxiDataWidthLite}
}

proc update_MODELPARAM_VALUE.AxiUserWidthFull { MODELPARAM_VALUE.AxiUserWidthFull PARAM_VALUE.AxiUserWidthFull } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiUserWidthFull}] ${MODELPARAM_VALUE.AxiUserWidthFull}
}

proc update_MODELPARAM_VALUE.NumCfgRegcp { MODELPARAM_VALUE.NumCfgRegcp PARAM_VALUE.NumCfgRegcp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NumCfgRegcp}] ${MODELPARAM_VALUE.NumCfgRegcp}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_LENWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_SIZEWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_BURSTWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_CACHEWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_PROTWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_QOSWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_REGIONWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_ATOPWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH { MODELPARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH}] ${MODELPARAM_VALUE.C_AXI_CPU_INTF_RESPWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_LENWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_SIZEWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_BURSTWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_CACHEWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_PROTWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_QOSWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_REGIONWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_ATOPWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH { MODELPARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH}] ${MODELPARAM_VALUE.C_AXI_MEM_INTF_RESPWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH { MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.C_AXI_CFG_INTF_AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH { MODELPARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH}] ${MODELPARAM_VALUE.C_AXI_CFG_INTF_PROTWIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH { MODELPARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH}] ${MODELPARAM_VALUE.C_AXI_CFG_INTF_RESPWIDTH}
}

