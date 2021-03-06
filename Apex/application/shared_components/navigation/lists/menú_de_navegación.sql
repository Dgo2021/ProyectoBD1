prompt --application/shared_components/navigation/lists/menú_de_navegación
begin
--   Manifest
--     LIST: Menú de Navegación
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(5600185272380395561)
,p_name=>unistr('Men\00FA de Navegaci\00F3n')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5600483050938395646)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inicio'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5907476529136752852)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Agenda'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5913369361618930685)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Agenda_Estado'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5913619897408969346)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Servicio'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5914205291726988219)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Cl\00EDnica')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5914735442995955085)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Departamento'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5915118399198012337)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5916865127424080530)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Factura'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5916741285875047627)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Factura_Detalle'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5923184114743316495)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Empleado'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5960876274800120437)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Persona'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32,33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5962480666998158672)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Rol'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34,35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5966672121988335326)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Cliente'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5970551466090415873)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Empleado_Sevicios'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36,37'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5600519510852395797)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>unistr('Administraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_api.id(5600476050899395639)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
