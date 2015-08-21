from pymodelica import compile_fmu
print ("Export Modelica models as FMU Model Exchange Version 2.0")
model_name = raw_input("What is the name of the Modelica model you would like to export? \n")
mo_file = raw_input("What is the name of the Modelica file? (ex. RLC_Circuit.mo). Multiple dependent files can be added as RLC_Circuit.mo, RLC_Dependent.mo")
# model_name = 'RLC_Circuit'
# mo_file = 'RLC_Circuit.mo'
my_fmu = compile_fmu(model_name, mo_file, version=2.0)
