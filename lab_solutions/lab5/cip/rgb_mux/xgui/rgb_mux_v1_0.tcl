# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set canvas_spec [ipgui::get_canvasspec -of $IPINST]
	set_property ip_logo "misc/logo.png" $canvas_spec
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
}

