Answer Screenshots to this question are provided below
Q1:
String Matching Algo

You have some strings of Vehicle Model Names, stored in database.Mentioned “Database Names”

We need to match any user input Model name to these mapped Database Names.

Now input from the two users can be different for the same model as well, you need to make sure that their input matches best with available from your database names, and gives the output at last with which it matches best.

Examples- 
User Inputs 
Car company name-Car model Name

Output
Best matched Database name - Percentage

Example -1 
1. FORD INDIA PVT LTD-FIGOASPIRE 1.2 PETROL TREND+MT
2. FORD INDIA PVT LTD-FORD FIGO ASPIRE 1.5 TDCI DIES
3. FORD INDIA PVT LTD-FIGOASPIRE 1.5 PETROL TITNMAT
4. FORD INDIA PVT LTD-FIGO 1.5 D AMBIENT MT BS IV

Now for all these results should always be 
Output
Ford_aspire

Though in cases like 1,2,3 its coming with additional name Aspire. It always points to Figo.

Example-2 
HYUNDAI MOTOR INDIA LTD-AURA 1.2MT KAPPA SX
HYUNDAI MOTOR INDIA LTD-AURA 1.2MT KAPPA SX(O)
NA-AURA 1.2MT CRDI S
HYUNDAI MOTOR INDIA LTD-AURA 1.2AMT KAPPA SX+

Output
Hyundai_Aura

Even for case (3), it should match best with the Hyundai_aura and send as the output.

Assumption -
At the moment, you can think of these many models as the database names

Bonus
Making it in the form of an API on ROR would fetch brownie points.


Database Names
"ford_aspire",
"ford_ecosport",
"ford_endeavour",
"ford_figo",
"honda_amaze",
"honda_city",
"honda_wr_v",
"hyundai_aura",
"hyundai_grand_i10",
"hyundai_i10",
"jeep_compass",
"jeep_meridian",
"kia_carens",
"kia_seltos",
"kia_sonet",
"land_rover_defender",
"mahindra_scorpio",
"mahindra_thar",
"mahindra_xuv300",
"mahindra_xuv400",
"mahindra_xuv700",
"maruti_celerio",
"maruti_suzuki_brezza",
"maruti_suzuki_s_presso",
"maruti_suzuki_swift",
"maruti_suzuki_wagonr",
"maruti_suzuki_xl6",
"mg_astor",
"mg_gloster",
"mg_hector",
"mg_zs_ev",
"renault_kiger",
"renault_triber",
"skoda_kushaq",
"skoda_slavia",
"tata_harrier",
"tata_punch",
"tata_tiago",
"toyota_camry",
"toyota_fortuner",
"toyota_fortuner_legender",
"toyota_glanza",
"toyota_innova_crysta"]


Ans:
![image](https://github.com/neerajXD/Finsire_VehicleMatcher_usingRUBY/assets/91602130/2d66431a-8160-46a6-8136-9ffb9925c6e8)

![image](https://github.com/neerajXD/Finsire_VehicleMatcher_usingRUBY/assets/91602130/87d6d526-e41a-453b-bd3d-e9ca76cdf888)
![image](https://github.com/neerajXD/Finsire_VehicleMatcher_usingRUBY/assets/91602130/3f945a2a-c06f-4db2-912b-f6eb28fec316)

