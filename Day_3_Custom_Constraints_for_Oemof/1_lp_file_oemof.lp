\* Source Pyomo model name=Model *\

min 
objective:
+10 flow(gas_source_electricity_0)
+10 flow(gas_source_electricity_1)
+10 flow(gas_source_electricity_2)
+600 ONE_VAR_CONSTANT

s.t.

c_e_Bus_balance(gas_0)_:
+1 flow(gas_pp_gas_0)
= 0

c_e_Bus_balance(gas_1)_:
+1 flow(gas_pp_gas_1)
= 0

c_e_Bus_balance(gas_2)_:
+1 flow(gas_pp_gas_2)
= 0

c_e_Transformer_relation(pp_gas_gas_electricity_0)_:
+1 flow(gas_pp_gas_0)
-1.7241379310344829 flow(pp_gas_electricity_0)
= 0

c_e_Transformer_relation(pp_gas_gas_electricity_1)_:
+1 flow(gas_pp_gas_1)
-1.7241379310344829 flow(pp_gas_electricity_1)
= 0

c_e_Transformer_relation(pp_gas_gas_electricity_2)_:
+1 flow(gas_pp_gas_2)
-1.7241379310344829 flow(pp_gas_electricity_2)
= 0

c_e_ONE_VAR_CONSTANT: 
ONE_VAR_CONSTANT = 1.0

bounds
   0 <= flow(gas_pp_gas_0) <= +inf
   0 <= flow(gas_pp_gas_1) <= +inf
   0 <= flow(gas_pp_gas_2) <= +inf
   0 <= flow(gas_source_electricity_0) <= +inf
   0 <= flow(gas_source_electricity_1) <= +inf
   0 <= flow(gas_source_electricity_2) <= +inf
   0 <= flow(pp_gas_electricity_0) <= 200
   0 <= flow(pp_gas_electricity_1) <= 200
   0 <= flow(pp_gas_electricity_2) <= 200
end
