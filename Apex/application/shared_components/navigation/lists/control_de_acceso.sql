prompt --application/shared_components/navigation/lists/control_de_acceso
begin
--   Manifest
--     LIST: Control de Acceso
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
 p_id=>wwv_flow_api.id(5600520656409395798)
,p_name=>'Control de Acceso'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(5600474331447395638)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5600521003655395798)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('Cambiar configuraci\00F3n de control de acceso y desactivar control de acceso')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5600521530871395799)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Control de Acceso'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('Definir nivel de acceso para los usuarios autenticados de esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
