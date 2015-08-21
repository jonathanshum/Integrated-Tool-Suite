<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Property Name="varPersistentID:{ACEC6268-7216-42F6-8C7B-D83C77DA0875}" Type="Ref">/My Computer/Shared_Variables.lvlib/Data</Property>
	<Property Name="varPersistentID:{D1C2980F-56A0-43C7-9340-C8EFCD26AB15}" Type="Ref">/My Computer/Shared_Variables.lvlib/Stop</Property>
	<Property Name="varPersistentID:{FE8F6791-9E54-42B7-BAB2-768A05982E85}" Type="Ref">/My Computer/Shared_Variables.lvlib/Angles</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder">
				<Item Name="loc_fpga_control_crio.png" Type="Document" URL="../documentation/loc_fpga_control_crio.png"/>
			</Item>
			<Item Name="LabVIEW FPGA Control on CompactRIO.html" Type="Document" URL="../documentation/LabVIEW FPGA Control on CompactRIO.html"/>
		</Item>
		<Item Name="Error Handlers" Type="Folder">
			<Item Name="UI Error Handler - Message Handler.vi" Type="VI" URL="../UI Error Handlers/UI Error Handler - Message Handler.vi"/>
			<Item Name="UI Error Handler - Monitoring.vi" Type="VI" URL="../UI Error Handlers/UI Error Handler - Monitoring.vi"/>
		</Item>
		<Item Name="Globals" Type="Folder">
			<Item Name="Global - All UI Loop Stop.vi" Type="VI" URL="../Globals/Global - All UI Loop Stop.vi"/>
			<Item Name="Global - Configuration Options.vi" Type="VI" URL="../Globals/Global - Configuration Options.vi"/>
			<Item Name="Global - UI Stream and Variable Connections.vi" Type="VI" URL="../Globals/Global - UI Stream and Variable Connections.vi"/>
		</Item>
		<Item Name="Support VIs" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Message Queue.lvlib" Type="Library" URL="../support/Message Queue/Message Queue.lvlib"/>
			<Item Name="User Event - Stop.lvlib" Type="Library" URL="../support/User Event - Stop/User Event - Stop.lvlib"/>
			<Item Name="Check Loop Error.vi" Type="VI" URL="../support/Check Loop Error.vi"/>
			<Item Name="Close Variable Connections.vi" Type="VI" URL="../support/Close Variable Connections.vi"/>
			<Item Name="Set Enable State on Multiple Controls.vi" Type="VI" URL="../support/Set Enable State on Multiple Controls.vi"/>
			<Item Name="UI - Initiate Connection.vi" Type="VI" URL="../support/UI - Initiate Connection.vi"/>
			<Item Name="UI - Read Stream from RT.vi" Type="VI" URL="../support/UI - Read Stream from RT.vi"/>
		</Item>
		<Item Name="Type Definitions" Type="Folder">
			<Property Name="NI.SortType" Type="Int">0</Property>
			<Item Name="All FPGA Configuration Values.ctl" Type="VI" URL="../controls/All FPGA Configuration Values.ctl"/>
			<Item Name="Control Configuration.ctl" Type="VI" URL="../controls/Control Configuration.ctl">
				<Property Name="configString.guid" Type="Str">{0942A395-5AB4-43CF-9894-BEDD5A48F77C}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{174707C4-D602-4012-9EA1-E843A8B7C504}resource=/crio_Mod1/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{342C42D8-9850-43AC-B257-933A55ED8F39}resource=/crio_Mod1/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{4E31061A-31D9-41FE-BD5F-5DD701DC0B6D}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9201,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=2.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]{5010CB46-AD6F-40F6-926E-39B6398222A9}resource=/crio_Mod2/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{535413AA-A566-49AF-BFE6-2853914C7EF5}resource=/crio_Mod1/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{5AA010CA-7C09-459A-94B1-4964E5DDD8B4}resource=/crio_Mod2/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5C8C342F-6D66-468A-A385-5EF9EBD43D4E}resource=/crio_Mod1/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{602C17B4-0B33-4E67-BDA1-95A44E45D0F5}resource=/crio_Mod1/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{87448FBE-8F4F-4EB0-80DB-A6D763BECE9D}resource=/crio_Mod1/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{95E618EF-DC69-4854-B1BA-A10ECD58EF23}resource=/crio_Mod1/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{96333642-638D-4AE3-98AD-30381CEA35F0}resource=/crio_Mod2/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{998B30A1-D7DA-449F-B356-6FD47261733B}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{9C46EFD6-5FE8-4FE8-B580-14099EA1809B}resource=/Scan Clock;0;ReadMethodType=bool{B38E479F-813B-43BE-B321-D19C4ABF6C50}resource=/crio_Mod1/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{BACC796C-C596-4E98-8550-19DA99480450}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{C8D6871F-0277-4A85-9369-A92D7A81F136}resource=/crio_Mod2/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{CEF038A3-CA45-44CF-B40F-F9980273C8BA}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{E8292E43-027F-4A0E-B004-4EA010F7CC27}resource=/Chassis Temperature;0;ReadMethodType=i16{FCBFDB58-4A07-4E27-9705-B1BA105094EA}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]cRIO-9074/Clk40/falsetrueFPGA_EXECUTION_MODEDEV_COMPUTER_SIM_IOFPGA_TARGET_FAMILYSPARTAN3TARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9074/Clk40/falsetrueFPGA_EXECUTION_MODEDEV_COMPUTER_SIM_IOFPGA_TARGET_FAMILYSPARTAN3TARGET_TYPEFPGAFPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolMod1/AI0resource=/crio_Mod1/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI1resource=/crio_Mod1/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI2resource=/crio_Mod1/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI3resource=/crio_Mod1/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI4resource=/crio_Mod1/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI5resource=/crio_Mod1/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI6resource=/crio_Mod1/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI7resource=/crio_Mod1/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9201,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=2.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]Mod2/AO0resource=/crio_Mod2/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO1resource=/crio_Mod2/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO2resource=/crio_Mod2/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO3resource=/crio_Mod2/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
			</Item>
			<Item Name="Error Type.ctl" Type="VI" URL="../controls/Error Type.ctl"/>
			<Item Name="FPGA State.ctl" Type="VI" URL="../controls/FPGA State.ctl"/>
			<Item Name="Raw Values.ctl" Type="VI" URL="../controls/Raw Values.ctl">
				<Property Name="configString.guid" Type="Str">{0942A395-5AB4-43CF-9894-BEDD5A48F77C}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{174707C4-D602-4012-9EA1-E843A8B7C504}resource=/crio_Mod1/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{342C42D8-9850-43AC-B257-933A55ED8F39}resource=/crio_Mod1/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{4E31061A-31D9-41FE-BD5F-5DD701DC0B6D}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9201,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=2.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]{5010CB46-AD6F-40F6-926E-39B6398222A9}resource=/crio_Mod2/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{535413AA-A566-49AF-BFE6-2853914C7EF5}resource=/crio_Mod1/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{5AA010CA-7C09-459A-94B1-4964E5DDD8B4}resource=/crio_Mod2/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5C8C342F-6D66-468A-A385-5EF9EBD43D4E}resource=/crio_Mod1/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{602C17B4-0B33-4E67-BDA1-95A44E45D0F5}resource=/crio_Mod1/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{87448FBE-8F4F-4EB0-80DB-A6D763BECE9D}resource=/crio_Mod1/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{95E618EF-DC69-4854-B1BA-A10ECD58EF23}resource=/crio_Mod1/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{96333642-638D-4AE3-98AD-30381CEA35F0}resource=/crio_Mod2/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{998B30A1-D7DA-449F-B356-6FD47261733B}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{9C46EFD6-5FE8-4FE8-B580-14099EA1809B}resource=/Scan Clock;0;ReadMethodType=bool{B38E479F-813B-43BE-B321-D19C4ABF6C50}resource=/crio_Mod1/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctl{BACC796C-C596-4E98-8550-19DA99480450}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{C8D6871F-0277-4A85-9369-A92D7A81F136}resource=/crio_Mod2/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{CEF038A3-CA45-44CF-B40F-F9980273C8BA}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{E8292E43-027F-4A0E-B004-4EA010F7CC27}resource=/Chassis Temperature;0;ReadMethodType=i16{FCBFDB58-4A07-4E27-9705-B1BA105094EA}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]cRIO-9074/Clk40/falsetrueFPGA_EXECUTION_MODEDEV_COMPUTER_SIM_IOFPGA_TARGET_FAMILYSPARTAN3TARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9074/Clk40/falsetrueFPGA_EXECUTION_MODEDEV_COMPUTER_SIM_IOFPGA_TARGET_FAMILYSPARTAN3TARGET_TYPEFPGAFPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolMod1/AI0resource=/crio_Mod1/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI1resource=/crio_Mod1/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI2resource=/crio_Mod1/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI3resource=/crio_Mod1/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI4resource=/crio_Mod1/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI5resource=/crio_Mod1/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI6resource=/crio_Mod1/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1/AI7resource=/crio_Mod1/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_16_5.ctlMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9201,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=2.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]Mod2/AO0resource=/crio_Mod2/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO1resource=/crio_Mod2/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO2resource=/crio_Mod2/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2/AO3resource=/crio_Mod2/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod2[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
			</Item>
			<Item Name="UI Data.ctl" Type="VI" URL="../controls/UI Data.ctl"/>
			<Item Name="Variable References.ctl" Type="VI" URL="../controls/Variable References.ctl"/>
		</Item>
		<Item Name="Arm_Simulation.vi" Type="VI" URL="../../../../Desktop/Berkeley/Research/Arm_Simulation.vi"/>
		<Item Name="Computer_Control_Layer.vi" Type="VI" URL="../Computer_Control_Layer.vi"/>
		<Item Name="Robotics_Module_Test.vi" Type="VI" URL="../Robotics_Module_Test.vi"/>
		<Item Name="Robotic_Arm_Simulation.vi" Type="VI" URL="../Robotic_Arm_Simulation.vi"/>
		<Item Name="Shared_Variables.lvlib" Type="Library" URL="../Shared_Variables.lvlib"/>
		<Item Name="Robotic_Arm_Simulation_Simple.vi" Type="VI" URL="../Robotic_Arm_Simulation_Simple.vi"/>
		<Item Name="Simulation_Template.vi" Type="VI" URL="../Simulation_Template.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="EMI_FMIL.dll" Type="Document" URL="/&lt;vilib&gt;/Simulation/EMI/Plugins/FMI for Model Exchange/EMI_FMIL.dll"/>
				<Item Name="NI_Robotics_5R Type 1 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/5R/Type 1/NI_Robotics_5R Type 1 Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_Analytical Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/Generic/NI_Robotics_Analytical Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_3DKinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/Plotting/NI_Robotics_3DKinematics.lvlib"/>
				<Item Name="NI_Robotics_Serial Robot Arm.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Robot/NI_Robotics_Serial Robot Arm.lvclass"/>
				<Item Name="NI_Kinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/NI_Kinematics.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_Robotics_Link.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Link/NI_Robotics_Link.lvclass"/>
				<Item Name="NI_Robotics Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Utilities/NI_Robotics Utilities.lvlib"/>
				<Item Name="DH Dynamic Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/robotics/Kinematics/DH Dynamic Parameters.ctl"/>
				<Item Name="DH Kinematic Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/robotics/Kinematics/DH Kinematic Parameters.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_Robotics_6R Type 2 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 2/NI_Robotics_6R Type 2 Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_6R Type 3 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 3/NI_Robotics_6R Type 3 Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_AnalyticKinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/NI_Robotics_AnalyticKinematics.lvlib"/>
				<Item Name="NI_Robotics_SCARA Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/SCARA/NI_Robotics_SCARA Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_6R Type 1 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 1/NI_Robotics_6R Type 1 Serial Arm Class.lvclass"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="NI_AngleManipulation.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/AngleManip/NI_AngleManipulation.lvlib"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Characters From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Characters From File.vi"/>
				<Item Name="NILVSim.dll" Type="Document" URL="/&lt;vilib&gt;/Simulation/Implementation/shared/NILVSim.dll"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FPGA Control on CompactRIO UI" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3F1A9AAE-A97C-495F-A75D-ED905C8EFFDA}</Property>
				<Property Name="App_INI_GUID" Type="Str">{07A2CB36-90F2-4CA5-9453-589E911F560F}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{225AC196-E26B-4EFD-B334-E0F8D9CC3A31}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPGA Control on CompactRIO UI</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/FPGA Control on CompactRIO UI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0BFDD048-1266-41AB-8541-E3215B6CF398}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPGAControlOnCompactRIOUI.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPGA Control on CompactRIO UI/FPGAControlOnCompactRIOUI.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPGA Control on CompactRIO UI/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{B37AD74E-AAF3-429C-A6E2-12C757FF2257}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">ni</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPGA Control on CompactRIO UI</Property>
				<Property Name="TgtF_internalName" Type="Str">FPGA Control on CompactRIO UI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 ni</Property>
				<Property Name="TgtF_productName" Type="Str">FPGA Control on CompactRIO UI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{EFA51556-12BC-4711-9B8D-F2C3F5F71D45}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPGAControlOnCompactRIOUI.exe</Property>
			</Item>
		</Item>
	</Item>
	<Item Name="NI-cRIO-9068-01a2b9a4" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">NI-cRIO-9068-01a2b9a4</Property>
		<Property Name="alias.value" Type="Str">169.254.52.230</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76D6;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76D6</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Required_SubVIs" Type="Folder">
			<Item Name="Trapezoid_Profile_SubVI.vi" Type="VI" URL="../Trapezoid_Profile_SubVI.vi"/>
			<Item Name="Trapezoidal_Control_SubVI.vi" Type="VI" URL="../Trapezoidal_Control_SubVI.vi"/>
			<Item Name="Basic_Control_SubVI.vi" Type="VI" URL="../Basic_Control_SubVI.vi"/>
		</Item>
		<Item Name="Control_Layer.vi" Type="VI" URL="../Control_Layer.vi"/>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9068</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{05D734F2-52EC-4EDF-BB69-2BE627D2A8AC}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=bool{0606B530-B70F-4002-BD42-B143C1D9ACB3}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{0888A281-D57B-492A-9D4B-DDA4E6C2E558}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=bool{0BA88205-51F0-48CE-869D-1A359F29E90F}resource=/crio_Mod5/E-Stop;0;ReadMethodType=bool{0C6C131A-1FEC-4A13-970B-F49561A8E299}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=bool{0E75C9BA-53E3-428B-9C3F-A77F2B84B690}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=bool{12263BB9-975D-4BE8-93F3-F00ADCC3D372}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{12381CBA-B239-4544-9222-8B9F13497422}resource=/crio_Mod4/Current Sense;0;ReadMethodType=i16{15A7D0B8-3C9B-420F-81CA-444DF40A4BE1}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=bool{17E5BE8E-1974-4371-B12E-7E8105C0CEFB}resource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{23D08CBE-936D-4560-94CD-FAD884509E66}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=bool{34EDAA63-2360-4A41-A78B-CBE2068AA377}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=bool{3A0029B2-EE37-4512-902E-3334BAB89EF5}resource=/crio_Mod6/E-Stop;0;ReadMethodType=bool{4304D3B7-0725-4426-8CB6-0D6C86E635FD}resource=/crio_Mod3/E-Stop;0;ReadMethodType=bool{447FA12A-E93D-489A-8736-1108B72C23D0}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{4A68E556-05B1-4044-9AF8-2214D1DC046A}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=bool{54F28845-B732-479E-BC70-EBA7052806DC}resource=/crio_Mod1/Motor;0;WriteMethodType=bool{5515907B-3DD0-4889-BBCC-CDD388A95C27}resource=/crio_Mod1/E-Stop;0;ReadMethodType=bool{5BAF3D1D-7BC6-4CC8-8885-312A42D172E5}resource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{6C07E9D1-E146-46D9-99D5-AC90062AB2F3}resource=/crio_Mod4/E-Stop;0;ReadMethodType=bool{6E2A9EDC-7DD2-46A3-8EC1-65B25A879B36}resource=/crio_Mod3/Current Sense;0;ReadMethodType=i16{88A6F559-5449-458B-9B97-028936383A15}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=bool{8DA4E812-FE27-4824-A711-5D7620249534}resource=/crio_Mod5/Current Sense;0;ReadMethodType=i16{8E0F45DD-1819-4845-812D-9151ECA8A176}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=bool{927110EF-A999-483C-A4AC-CE6099ED5EDC}resource=/crio_Mod6/Current Sense;0;ReadMethodType=i16{954308C4-77B5-4047-A2C6-A87CDE54DC48}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=bool{990CF734-275A-4032-963B-74202FAB8991}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=bool{A0493808-9339-4EFC-8ED3-24C27DA91365}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=bool{AD6727B8-778C-4BE0-85B1-33BFCACD109F}resource=/crio_Mod5/Motor;0;WriteMethodType=bool{B05092B0-7D72-498E-A6D6-676819649EA2}resource=/crio_Mod1/Current Sense;0;ReadMethodType=i16{B12BA563-5B06-4CAB-B9A9-D3E87B2F0F85}resource=/Chassis Temperature;0;ReadMethodType=i16{B31DE2F6-22B3-40AE-AA02-E8DD6631932D}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=bool{B74EBCD8-CDB4-4A69-ACE1-737BF9634159}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=bool{BB0407D3-7F50-4A56-88A0-6EFFCBF82354}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=bool{BB5C0CA6-BF44-433C-90B3-1BCDF874F264}resource=/crio_Mod4/Motor;0;WriteMethodType=bool{C21602B3-82C6-41BA-9584-302C2B7F8A57}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=bool{C2BEBBC8-E6BC-4CB1-B9BA-6F36DC25FE89}resource=/Scan Clock;0;ReadMethodType=bool{CB74173A-4639-4B7E-BE8E-93209776F9D6}resource=/crio_Mod6/Motor;0;WriteMethodType=bool{CE9088E1-ADDB-4587-B54F-776D39A68E20}resource=/crio_Mod2/Current Sense;0;ReadMethodType=i16{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]{D63228D6-21A0-4A10-8876-787474C14C82}resource=/crio_Mod3/Motor;0;WriteMethodType=bool{E0BA177C-5E15-4FC7-B00F-BB57FE735BD5}resource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E0E82E2D-B1A9-4DFD-A276-99AD76FE5E03}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E1FEF435-0DE6-4AB3-BD2B-289473AF9CFB}resource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E7F3334A-9BF2-478A-B7EF-2D1783913630}resource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{EB57A2DE-4CAB-4538-8325-D174879DA2A9}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=bool{EE8ECE8F-21DA-4222-BBD7-7EB58F0AFE93}resource=/crio_Mod2/Motor;0;WriteMethodType=bool{F26EFC5B-A53F-4E19-B23F-D56563219FDC}resource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{FB8F37B0-3CC6-4722-8134-4D187D5634CE}resource=/crio_Mod2/E-Stop;0;ReadMethodType=boolcRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Mod1 2/Current Senseresource=/crio_Mod2/Current Sense;0;ReadMethodType=i16Mod1 2/Drive Directionresource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 2/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=boolMod1 2/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=boolMod1 2/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=boolMod1 2/E-Stopresource=/crio_Mod2/E-Stop;0;ReadMethodType=boolMod1 2/Motorresource=/crio_Mod2/Motor;0;WriteMethodType=boolMod1 3/Current Senseresource=/crio_Mod3/Current Sense;0;ReadMethodType=i16Mod1 3/Drive Directionresource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 3/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=boolMod1 3/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=boolMod1 3/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=boolMod1 3/E-Stopresource=/crio_Mod3/E-Stop;0;ReadMethodType=boolMod1 3/Motorresource=/crio_Mod3/Motor;0;WriteMethodType=boolMod1 4/Current Senseresource=/crio_Mod4/Current Sense;0;ReadMethodType=i16Mod1 4/Drive Directionresource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 4/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=boolMod1 4/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=boolMod1 4/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=boolMod1 4/E-Stopresource=/crio_Mod4/E-Stop;0;ReadMethodType=boolMod1 4/Motorresource=/crio_Mod4/Motor;0;WriteMethodType=boolMod1 5/Current Senseresource=/crio_Mod5/Current Sense;0;ReadMethodType=i16Mod1 5/Drive Directionresource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 5/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=boolMod1 5/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=boolMod1 5/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=boolMod1 5/E-Stopresource=/crio_Mod5/E-Stop;0;ReadMethodType=boolMod1 5/Motorresource=/crio_Mod5/Motor;0;WriteMethodType=boolMod1 6/Current Senseresource=/crio_Mod6/Current Sense;0;ReadMethodType=i16Mod1 6/Drive Directionresource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 6/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=boolMod1 6/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=boolMod1 6/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=boolMod1 6/E-Stopresource=/crio_Mod6/E-Stop;0;ReadMethodType=boolMod1 6/Motorresource=/crio_Mod6/Motor;0;WriteMethodType=boolMod1/Current Senseresource=/crio_Mod1/Current Sense;0;ReadMethodType=i16Mod1/Drive Directionresource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=boolMod1/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=boolMod1/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=boolMod1/E-Stopresource=/crio_Mod1/E-Stop;0;ReadMethodType=boolMod1/Motorresource=/crio_Mod1/Motor;0;WriteMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]Mod2[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]Mod3[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]Mod4[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]Mod5[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]Mod6[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8</Property>
				<Property Name="Mode" Type="Int">0</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9068</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B12BA563-5B06-4CAB-B9A9-D3E87B2F0F85}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C2BEBBC8-E6BC-4CB1-B9BA-6F36DC25FE89}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{447FA12A-E93D-489A-8736-1108B72C23D0}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{12263BB9-975D-4BE8-93F3-F00ADCC3D372}</Property>
					</Item>
					<Item Name="USER FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/USER FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0606B530-B70F-4002-BD42-B143C1D9ACB3}</Property>
					</Item>
				</Item>
				<Item Name="Mod1" Type="Folder">
					<Item Name="Mod1/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B05092B0-7D72-498E-A6D6-676819649EA2}</Property>
					</Item>
					<Item Name="Mod1/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5BAF3D1D-7BC6-4CC8-8885-312A42D172E5}</Property>
					</Item>
					<Item Name="Mod1/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5515907B-3DD0-4889-BBCC-CDD388A95C27}</Property>
					</Item>
					<Item Name="Mod1/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{15A7D0B8-3C9B-420F-81CA-444DF40A4BE1}</Property>
					</Item>
					<Item Name="Mod1/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8E0F45DD-1819-4845-812D-9151ECA8A176}</Property>
					</Item>
					<Item Name="Mod1/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{88A6F559-5449-458B-9B97-028936383A15}</Property>
					</Item>
					<Item Name="Mod1/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{54F28845-B732-479E-BC70-EBA7052806DC}</Property>
					</Item>
				</Item>
				<Item Name="Mod2" Type="Folder">
					<Item Name="Mod1 2/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod2/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CE9088E1-ADDB-4587-B54F-776D39A68E20}</Property>
					</Item>
					<Item Name="Mod1 2/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod2/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{954308C4-77B5-4047-A2C6-A87CDE54DC48}</Property>
					</Item>
					<Item Name="Mod1 2/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod2/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4A68E556-05B1-4044-9AF8-2214D1DC046A}</Property>
					</Item>
					<Item Name="Mod1 2/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod2/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{34EDAA63-2360-4A41-A78B-CBE2068AA377}</Property>
					</Item>
					<Item Name="Mod1 2/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod2/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EE8ECE8F-21DA-4222-BBD7-7EB58F0AFE93}</Property>
					</Item>
					<Item Name="Mod1 2/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod2/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F26EFC5B-A53F-4E19-B23F-D56563219FDC}</Property>
					</Item>
					<Item Name="Mod1 2/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod2/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{FB8F37B0-3CC6-4722-8134-4D187D5634CE}</Property>
					</Item>
				</Item>
				<Item Name="Mod3" Type="Folder">
					<Item Name="Mod1 3/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod3/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6E2A9EDC-7DD2-46A3-8EC1-65B25A879B36}</Property>
					</Item>
					<Item Name="Mod1 3/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod3/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0888A281-D57B-492A-9D4B-DDA4E6C2E558}</Property>
					</Item>
					<Item Name="Mod1 3/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod3/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B74EBCD8-CDB4-4A69-ACE1-737BF9634159}</Property>
					</Item>
					<Item Name="Mod1 3/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod3/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BB0407D3-7F50-4A56-88A0-6EFFCBF82354}</Property>
					</Item>
					<Item Name="Mod1 3/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod3/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D63228D6-21A0-4A10-8876-787474C14C82}</Property>
					</Item>
					<Item Name="Mod1 3/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod3/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E1FEF435-0DE6-4AB3-BD2B-289473AF9CFB}</Property>
					</Item>
					<Item Name="Mod1 3/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod3/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4304D3B7-0725-4426-8CB6-0D6C86E635FD}</Property>
					</Item>
				</Item>
				<Item Name="Mod4" Type="Folder">
					<Item Name="Mod1 4/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{12381CBA-B239-4544-9222-8B9F13497422}</Property>
					</Item>
					<Item Name="Mod1 4/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod4/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EB57A2DE-4CAB-4538-8325-D174879DA2A9}</Property>
					</Item>
					<Item Name="Mod1 4/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod4/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{23D08CBE-936D-4560-94CD-FAD884509E66}</Property>
					</Item>
					<Item Name="Mod1 4/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod4/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B31DE2F6-22B3-40AE-AA02-E8DD6631932D}</Property>
					</Item>
					<Item Name="Mod1 4/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BB5C0CA6-BF44-433C-90B3-1BCDF874F264}</Property>
					</Item>
					<Item Name="Mod1 4/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E7F3334A-9BF2-478A-B7EF-2D1783913630}</Property>
					</Item>
					<Item Name="Mod1 4/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6C07E9D1-E146-46D9-99D5-AC90062AB2F3}</Property>
					</Item>
				</Item>
				<Item Name="Mod5" Type="Folder">
					<Item Name="Mod1 5/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8DA4E812-FE27-4824-A711-5D7620249534}</Property>
					</Item>
					<Item Name="Mod1 5/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod5/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{05D734F2-52EC-4EDF-BB69-2BE627D2A8AC}</Property>
					</Item>
					<Item Name="Mod1 5/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod5/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C21602B3-82C6-41BA-9584-302C2B7F8A57}</Property>
					</Item>
					<Item Name="Mod1 5/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod5/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{990CF734-275A-4032-963B-74202FAB8991}</Property>
					</Item>
					<Item Name="Mod1 5/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AD6727B8-778C-4BE0-85B1-33BFCACD109F}</Property>
					</Item>
					<Item Name="Mod1 5/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E0BA177C-5E15-4FC7-B00F-BB57FE735BD5}</Property>
					</Item>
					<Item Name="Mod1 5/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0BA88205-51F0-48CE-869D-1A359F29E90F}</Property>
					</Item>
				</Item>
				<Item Name="Mod6" Type="Folder">
					<Item Name="Mod1 6/Current Sense" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/Current Sense</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{927110EF-A999-483C-A4AC-CE6099ED5EDC}</Property>
					</Item>
					<Item Name="Mod1 6/Encoder Phase A" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod6/Encoder Phase A</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0E75C9BA-53E3-428B-9C3F-A77F2B84B690}</Property>
					</Item>
					<Item Name="Mod1 6/Encoder Phase B" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod6/Encoder Phase B</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A0493808-9339-4EFC-8ED3-24C27DA91365}</Property>
					</Item>
					<Item Name="Mod1 6/Encoder Index" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod6/Encoder Index</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0C6C131A-1FEC-4A13-970B-F49561A8E299}</Property>
					</Item>
					<Item Name="Mod1 6/Motor" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/Motor</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CB74173A-4639-4B7E-BE8E-93209776F9D6}</Property>
					</Item>
					<Item Name="Mod1 6/Drive Direction" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/Drive Direction</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{17E5BE8E-1974-4371-B12E-7E8105C0CEFB}</Property>
					</Item>
					<Item Name="Mod1 6/E-Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/E-Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3A0029B2-EE37-4512-902E-3334BAB89EF5}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{E0E82E2D-B1A9-4DFD-A276-99AD76FE5E03}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="Mod1" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 1</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Mod2" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 2</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Mod3" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 3</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Mod4" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 4</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Mod5" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 5</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Mod6" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 6</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9505</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D2E23D16-A251-4280-9DCD-6265F1C4B332}</Property>
				</Item>
				<Item Name="Robot_Control.vi" Type="VI" URL="../Robot_Control.vi">
					<Property Name="configString.guid" Type="Str">{05D734F2-52EC-4EDF-BB69-2BE627D2A8AC}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=bool{0606B530-B70F-4002-BD42-B143C1D9ACB3}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{0888A281-D57B-492A-9D4B-DDA4E6C2E558}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=bool{0BA88205-51F0-48CE-869D-1A359F29E90F}resource=/crio_Mod5/E-Stop;0;ReadMethodType=bool{0C6C131A-1FEC-4A13-970B-F49561A8E299}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=bool{0E75C9BA-53E3-428B-9C3F-A77F2B84B690}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=bool{12263BB9-975D-4BE8-93F3-F00ADCC3D372}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{12381CBA-B239-4544-9222-8B9F13497422}resource=/crio_Mod4/Current Sense;0;ReadMethodType=i16{15A7D0B8-3C9B-420F-81CA-444DF40A4BE1}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=bool{17E5BE8E-1974-4371-B12E-7E8105C0CEFB}resource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{23D08CBE-936D-4560-94CD-FAD884509E66}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=bool{34EDAA63-2360-4A41-A78B-CBE2068AA377}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=bool{3A0029B2-EE37-4512-902E-3334BAB89EF5}resource=/crio_Mod6/E-Stop;0;ReadMethodType=bool{4304D3B7-0725-4426-8CB6-0D6C86E635FD}resource=/crio_Mod3/E-Stop;0;ReadMethodType=bool{447FA12A-E93D-489A-8736-1108B72C23D0}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{4A68E556-05B1-4044-9AF8-2214D1DC046A}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=bool{54F28845-B732-479E-BC70-EBA7052806DC}resource=/crio_Mod1/Motor;0;WriteMethodType=bool{5515907B-3DD0-4889-BBCC-CDD388A95C27}resource=/crio_Mod1/E-Stop;0;ReadMethodType=bool{5BAF3D1D-7BC6-4CC8-8885-312A42D172E5}resource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{6C07E9D1-E146-46D9-99D5-AC90062AB2F3}resource=/crio_Mod4/E-Stop;0;ReadMethodType=bool{6E2A9EDC-7DD2-46A3-8EC1-65B25A879B36}resource=/crio_Mod3/Current Sense;0;ReadMethodType=i16{88A6F559-5449-458B-9B97-028936383A15}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=bool{8DA4E812-FE27-4824-A711-5D7620249534}resource=/crio_Mod5/Current Sense;0;ReadMethodType=i16{8E0F45DD-1819-4845-812D-9151ECA8A176}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=bool{927110EF-A999-483C-A4AC-CE6099ED5EDC}resource=/crio_Mod6/Current Sense;0;ReadMethodType=i16{954308C4-77B5-4047-A2C6-A87CDE54DC48}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=bool{990CF734-275A-4032-963B-74202FAB8991}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=bool{A0493808-9339-4EFC-8ED3-24C27DA91365}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=bool{AD6727B8-778C-4BE0-85B1-33BFCACD109F}resource=/crio_Mod5/Motor;0;WriteMethodType=bool{B05092B0-7D72-498E-A6D6-676819649EA2}resource=/crio_Mod1/Current Sense;0;ReadMethodType=i16{B12BA563-5B06-4CAB-B9A9-D3E87B2F0F85}resource=/Chassis Temperature;0;ReadMethodType=i16{B31DE2F6-22B3-40AE-AA02-E8DD6631932D}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=bool{B74EBCD8-CDB4-4A69-ACE1-737BF9634159}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=bool{BB0407D3-7F50-4A56-88A0-6EFFCBF82354}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=bool{BB5C0CA6-BF44-433C-90B3-1BCDF874F264}resource=/crio_Mod4/Motor;0;WriteMethodType=bool{C21602B3-82C6-41BA-9584-302C2B7F8A57}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=bool{C2BEBBC8-E6BC-4CB1-B9BA-6F36DC25FE89}resource=/Scan Clock;0;ReadMethodType=bool{CB74173A-4639-4B7E-BE8E-93209776F9D6}resource=/crio_Mod6/Motor;0;WriteMethodType=bool{CE9088E1-ADDB-4587-B54F-776D39A68E20}resource=/crio_Mod2/Current Sense;0;ReadMethodType=i16{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]{D63228D6-21A0-4A10-8876-787474C14C82}resource=/crio_Mod3/Motor;0;WriteMethodType=bool{E0BA177C-5E15-4FC7-B00F-BB57FE735BD5}resource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E0E82E2D-B1A9-4DFD-A276-99AD76FE5E03}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E1FEF435-0DE6-4AB3-BD2B-289473AF9CFB}resource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E7F3334A-9BF2-478A-B7EF-2D1783913630}resource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{EB57A2DE-4CAB-4538-8325-D174879DA2A9}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=bool{EE8ECE8F-21DA-4222-BBD7-7EB58F0AFE93}resource=/crio_Mod2/Motor;0;WriteMethodType=bool{F26EFC5B-A53F-4E19-B23F-D56563219FDC}resource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{FB8F37B0-3CC6-4722-8134-4D187D5634CE}resource=/crio_Mod2/E-Stop;0;ReadMethodType=boolcRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Mod1 2/Current Senseresource=/crio_Mod2/Current Sense;0;ReadMethodType=i16Mod1 2/Drive Directionresource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 2/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=boolMod1 2/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=boolMod1 2/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=boolMod1 2/E-Stopresource=/crio_Mod2/E-Stop;0;ReadMethodType=boolMod1 2/Motorresource=/crio_Mod2/Motor;0;WriteMethodType=boolMod1 3/Current Senseresource=/crio_Mod3/Current Sense;0;ReadMethodType=i16Mod1 3/Drive Directionresource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 3/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=boolMod1 3/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=boolMod1 3/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=boolMod1 3/E-Stopresource=/crio_Mod3/E-Stop;0;ReadMethodType=boolMod1 3/Motorresource=/crio_Mod3/Motor;0;WriteMethodType=boolMod1 4/Current Senseresource=/crio_Mod4/Current Sense;0;ReadMethodType=i16Mod1 4/Drive Directionresource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 4/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=boolMod1 4/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=boolMod1 4/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=boolMod1 4/E-Stopresource=/crio_Mod4/E-Stop;0;ReadMethodType=boolMod1 4/Motorresource=/crio_Mod4/Motor;0;WriteMethodType=boolMod1 5/Current Senseresource=/crio_Mod5/Current Sense;0;ReadMethodType=i16Mod1 5/Drive Directionresource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 5/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=boolMod1 5/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=boolMod1 5/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=boolMod1 5/E-Stopresource=/crio_Mod5/E-Stop;0;ReadMethodType=boolMod1 5/Motorresource=/crio_Mod5/Motor;0;WriteMethodType=boolMod1 6/Current Senseresource=/crio_Mod6/Current Sense;0;ReadMethodType=i16Mod1 6/Drive Directionresource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 6/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=boolMod1 6/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=boolMod1 6/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=boolMod1 6/E-Stopresource=/crio_Mod6/E-Stop;0;ReadMethodType=boolMod1 6/Motorresource=/crio_Mod6/Motor;0;WriteMethodType=boolMod1/Current Senseresource=/crio_Mod1/Current Sense;0;ReadMethodType=i16Mod1/Drive Directionresource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=boolMod1/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=boolMod1/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=boolMod1/E-Stopresource=/crio_Mod1/E-Stop;0;ReadMethodType=boolMod1/Motorresource=/crio_Mod1/Motor;0;WriteMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]Mod2[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]Mod3[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]Mod4[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]Mod5[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]Mod6[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\CHUNGBK\Documents\Research\Motor_Control\FPGA Bitfiles\MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx</Property>
				</Item>
				<Item Name="Encoder_SubVI_revised.vi" Type="VI" URL="../Encoder_SubVI_revised.vi">
					<Property Name="configString.guid" Type="Str">{05D734F2-52EC-4EDF-BB69-2BE627D2A8AC}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=bool{0606B530-B70F-4002-BD42-B143C1D9ACB3}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{0888A281-D57B-492A-9D4B-DDA4E6C2E558}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=bool{0BA88205-51F0-48CE-869D-1A359F29E90F}resource=/crio_Mod5/E-Stop;0;ReadMethodType=bool{0C6C131A-1FEC-4A13-970B-F49561A8E299}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=bool{0E75C9BA-53E3-428B-9C3F-A77F2B84B690}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=bool{12263BB9-975D-4BE8-93F3-F00ADCC3D372}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{12381CBA-B239-4544-9222-8B9F13497422}resource=/crio_Mod4/Current Sense;0;ReadMethodType=i16{15A7D0B8-3C9B-420F-81CA-444DF40A4BE1}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=bool{17E5BE8E-1974-4371-B12E-7E8105C0CEFB}resource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{23D08CBE-936D-4560-94CD-FAD884509E66}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=bool{34EDAA63-2360-4A41-A78B-CBE2068AA377}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=bool{3A0029B2-EE37-4512-902E-3334BAB89EF5}resource=/crio_Mod6/E-Stop;0;ReadMethodType=bool{4304D3B7-0725-4426-8CB6-0D6C86E635FD}resource=/crio_Mod3/E-Stop;0;ReadMethodType=bool{447FA12A-E93D-489A-8736-1108B72C23D0}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{4A68E556-05B1-4044-9AF8-2214D1DC046A}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=bool{54F28845-B732-479E-BC70-EBA7052806DC}resource=/crio_Mod1/Motor;0;WriteMethodType=bool{5515907B-3DD0-4889-BBCC-CDD388A95C27}resource=/crio_Mod1/E-Stop;0;ReadMethodType=bool{5BAF3D1D-7BC6-4CC8-8885-312A42D172E5}resource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{6C07E9D1-E146-46D9-99D5-AC90062AB2F3}resource=/crio_Mod4/E-Stop;0;ReadMethodType=bool{6E2A9EDC-7DD2-46A3-8EC1-65B25A879B36}resource=/crio_Mod3/Current Sense;0;ReadMethodType=i16{88A6F559-5449-458B-9B97-028936383A15}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=bool{8DA4E812-FE27-4824-A711-5D7620249534}resource=/crio_Mod5/Current Sense;0;ReadMethodType=i16{8E0F45DD-1819-4845-812D-9151ECA8A176}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=bool{927110EF-A999-483C-A4AC-CE6099ED5EDC}resource=/crio_Mod6/Current Sense;0;ReadMethodType=i16{954308C4-77B5-4047-A2C6-A87CDE54DC48}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=bool{990CF734-275A-4032-963B-74202FAB8991}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=bool{A0493808-9339-4EFC-8ED3-24C27DA91365}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=bool{AD6727B8-778C-4BE0-85B1-33BFCACD109F}resource=/crio_Mod5/Motor;0;WriteMethodType=bool{B05092B0-7D72-498E-A6D6-676819649EA2}resource=/crio_Mod1/Current Sense;0;ReadMethodType=i16{B12BA563-5B06-4CAB-B9A9-D3E87B2F0F85}resource=/Chassis Temperature;0;ReadMethodType=i16{B31DE2F6-22B3-40AE-AA02-E8DD6631932D}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=bool{B74EBCD8-CDB4-4A69-ACE1-737BF9634159}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=bool{BB0407D3-7F50-4A56-88A0-6EFFCBF82354}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=bool{BB5C0CA6-BF44-433C-90B3-1BCDF874F264}resource=/crio_Mod4/Motor;0;WriteMethodType=bool{C21602B3-82C6-41BA-9584-302C2B7F8A57}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=bool{C2BEBBC8-E6BC-4CB1-B9BA-6F36DC25FE89}resource=/Scan Clock;0;ReadMethodType=bool{CB74173A-4639-4B7E-BE8E-93209776F9D6}resource=/crio_Mod6/Motor;0;WriteMethodType=bool{CE9088E1-ADDB-4587-B54F-776D39A68E20}resource=/crio_Mod2/Current Sense;0;ReadMethodType=i16{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]{D2E23D16-A251-4280-9DCD-6265F1C4B332}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]{D63228D6-21A0-4A10-8876-787474C14C82}resource=/crio_Mod3/Motor;0;WriteMethodType=bool{E0BA177C-5E15-4FC7-B00F-BB57FE735BD5}resource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E0E82E2D-B1A9-4DFD-A276-99AD76FE5E03}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E1FEF435-0DE6-4AB3-BD2B-289473AF9CFB}resource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{E7F3334A-9BF2-478A-B7EF-2D1783913630}resource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{EB57A2DE-4CAB-4538-8325-D174879DA2A9}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=bool{EE8ECE8F-21DA-4222-BBD7-7EB58F0AFE93}resource=/crio_Mod2/Motor;0;WriteMethodType=bool{F26EFC5B-A53F-4E19-B23F-D56563219FDC}resource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctl{FB8F37B0-3CC6-4722-8134-4D187D5634CE}resource=/crio_Mod2/E-Stop;0;ReadMethodType=boolcRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Mod1 2/Current Senseresource=/crio_Mod2/Current Sense;0;ReadMethodType=i16Mod1 2/Drive Directionresource=/crio_Mod2/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 2/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Index;0;ReadMethodType=boolMod1 2/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase A;0;ReadMethodType=boolMod1 2/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod2/Encoder Phase B;0;ReadMethodType=boolMod1 2/E-Stopresource=/crio_Mod2/E-Stop;0;ReadMethodType=boolMod1 2/Motorresource=/crio_Mod2/Motor;0;WriteMethodType=boolMod1 3/Current Senseresource=/crio_Mod3/Current Sense;0;ReadMethodType=i16Mod1 3/Drive Directionresource=/crio_Mod3/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 3/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Index;0;ReadMethodType=boolMod1 3/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase A;0;ReadMethodType=boolMod1 3/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod3/Encoder Phase B;0;ReadMethodType=boolMod1 3/E-Stopresource=/crio_Mod3/E-Stop;0;ReadMethodType=boolMod1 3/Motorresource=/crio_Mod3/Motor;0;WriteMethodType=boolMod1 4/Current Senseresource=/crio_Mod4/Current Sense;0;ReadMethodType=i16Mod1 4/Drive Directionresource=/crio_Mod4/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 4/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Index;0;ReadMethodType=boolMod1 4/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase A;0;ReadMethodType=boolMod1 4/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod4/Encoder Phase B;0;ReadMethodType=boolMod1 4/E-Stopresource=/crio_Mod4/E-Stop;0;ReadMethodType=boolMod1 4/Motorresource=/crio_Mod4/Motor;0;WriteMethodType=boolMod1 5/Current Senseresource=/crio_Mod5/Current Sense;0;ReadMethodType=i16Mod1 5/Drive Directionresource=/crio_Mod5/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 5/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Index;0;ReadMethodType=boolMod1 5/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase A;0;ReadMethodType=boolMod1 5/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod5/Encoder Phase B;0;ReadMethodType=boolMod1 5/E-Stopresource=/crio_Mod5/E-Stop;0;ReadMethodType=boolMod1 5/Motorresource=/crio_Mod5/Motor;0;WriteMethodType=boolMod1 6/Current Senseresource=/crio_Mod6/Current Sense;0;ReadMethodType=i16Mod1 6/Drive Directionresource=/crio_Mod6/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1 6/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Index;0;ReadMethodType=boolMod1 6/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase A;0;ReadMethodType=boolMod1 6/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod6/Encoder Phase B;0;ReadMethodType=boolMod1 6/E-Stopresource=/crio_Mod6/E-Stop;0;ReadMethodType=boolMod1 6/Motorresource=/crio_Mod6/Motor;0;WriteMethodType=boolMod1/Current Senseresource=/crio_Mod1/Current Sense;0;ReadMethodType=i16Mod1/Drive Directionresource=/crio_Mod1/Drive Direction;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\cRIO-9505\controls.llb\_nicrio_cRIO-9505_DriveDirection.ctlMod1/Encoder IndexNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Index;0;ReadMethodType=boolMod1/Encoder Phase ANumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase A;0;ReadMethodType=boolMod1/Encoder Phase BNumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/Encoder Phase B;0;ReadMethodType=boolMod1/E-Stopresource=/crio_Mod1/E-Stop;0;ReadMethodType=boolMod1/Motorresource=/crio_Mod1/Motor;0;WriteMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9505[crioConfig.End]Mod2[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9505[crioConfig.End]Mod3[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9505[crioConfig.End]Mod4[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9505[crioConfig.End]Mod5[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9505[crioConfig.End]Mod6[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9505[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="vi.lib" Type="Folder">
						<Item Name="niFpgaDdsAccum.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/siggen/SquareWave/templates/niFpgaDdsAccum.vi"/>
						<Item Name="FxpSim.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/FXPMathLib/sim/FxpSim.dll"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="Motor_Control" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Motor_Control</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_MotorControl_cTK8luqP1OA.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/FPGA Bitfiles/MotorControl_FPGATarget_MotorControl_cTK8luqP1OA.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/MotorControl_FPGATarget_MotorControl_cTK8luqP1OA.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="Test1" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Test1</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_Test1_ir7RyE3Xa-8.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="Test2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Test2</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_Test2_2W73bDnH8ek.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="Motor_Control_2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Motor_Control_2</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_MotorControl2_BLHv6W8dGvA.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/FPGA Bitfiles/MotorControl_FPGATarget_MotorControl2_BLHv6W8dGvA.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/MotorControl_FPGATarget_MotorControl2_BLHv6W8dGvA.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="Robot_Control" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Robot_Control</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/FPGA Bitfiles/MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/NI-cRIO-9068-01a2b9a4/Chassis/FPGA Target/Robot_Control.vi</Property>
					</Item>
					<Item Name="Motor_Control_Compile" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Motor_Control_Compile</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_MotorControlComp_DZ4Aqa6F0tM.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="Test1_2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Test1_2</Property>
						<Property Name="Comp.BitfileName" Type="Str">MotorControl_FPGATarget_Test12_oQ9xv9GYI0A.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/CHUNGBK/Documents/Research/Motor_Control/Motor_Control.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Control_Layer_7-17-15.vi" Type="VI" URL="../Control_Layer_7-17-15.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx" Type="Document" URL="../FPGA Bitfiles/MotorControl_FPGATarget_RobotControl_55TRSUIRMao.lvbitx"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
