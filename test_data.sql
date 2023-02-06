INSERT INTO accounts (account_name, sfdc_account_id, encamp_account_id)
VALUES
  ('Eco Industries', 'eco_ind_001', 'encamp_eco_ind_001'),
  ('Green Logistics', 'green_log_002', 'encamp_green_log_002'),
  ('Sustainable Supply Chain', 'sust_supply_003', 'encamp_sust_supply_003'),
  ('Carbon Neutral Freight', 'carbon_neutral_004', 'encamp_carbon_neutral_004'),
  ('Zero Waste Transport', 'zero_waste_005', 'encamp_zero_waste_005'),
  ('Renewable Energy Delivery', 'renew_energy_006', 'encamp_renew_energy_006'),
  ('Efficient Fleet Solutions', 'eff_fleet_007', 'encamp_eff_fleet_007'),
  ('Clean Trucking', 'clean_truck_008', 'encamp_clean_truck_008'),
  ('Eco-Friendly Logistics', 'eco_friend_log_009', 'encamp_eco_friend_log_009'),
  ('Green Shipping', 'green_ship_010', 'encamp_green_ship_010');

INSERT INTO facilities (account_id, facility_name, encamp_facility_id)
VALUES
  (1, 'Eco Warehouse', 'encamp_eco_ware_101'),
  (1, 'Green Loading Dock', 'encamp_green_load_102'),
  (2, 'Sustainable Terminal', 'encamp_sust_term_103'),
  (2, 'Carbon Neutral Yard', 'encamp_carbon_neutral_yard_104'),
  (3, 'Zero Waste Depot', 'encamp_zero_waste_depot_105'),
  (3, 'Renewable Energy Hub', 'encamp_renew_energy_hub_106'),
  (4, 'Efficient Fleet Garage', 'encamp_eff_fleet_garage_107'),
  (4, 'Clean Truck Maintenance', 'encamp_clean_truck_main_108'),
  (5, 'Eco-Friendly Logistics Center', 'encamp_eco_friend_log_center_109'),
  (5, 'Green Shipping Warehouse', 'encamp_green_ship_ware_110');

INSERT INTO projects (project_name, sfdc_opp_id)
VALUES
  ('Eco-Compliant Fleet Upgrades', 'eco_compliant_fleet_upgrades_201'),
  ('Green Warehouse Operations', 'green_warehouse_ops_202'),
  ('Sustainable Supply Chain Optimization', 'sust_supply_chain_opt_203'),
  ('Carbon Neutral Delivery Routes', 'carbon_neutral_delivery_routes_204'),
  ('Zero Waste Logistics Processes', 'zero_waste_logistics_processes_205'),
  ('Renewable Energy Fleet Integration', 'renew_energy_fleet_integration_206'),
  ('Efficient Fleet Monitoring', 'eff_fleet_monitoring_207'),
  ('Clean Truck Fleet Expansion', 'clean_truck_fleet_exp_208')
  
INSERT INTO project_facilities (project_id, facility_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 1),
    (4, 2),
    (4, 3),
    (5, 4),
    (5, 5);
