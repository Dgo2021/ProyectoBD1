prompt --application/shared_components/navigation/breadcrumbs/ruta_de_navegación
begin
--   Manifest
--     MENU: Ruta de Navegación
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(5600184709445395560)
,p_name=>unistr('Ruta de Navegaci\00F3n')
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5600184978012395560)
,p_short_name=>'Inicio'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5600520412703395798)
,p_short_name=>unistr('Administraci\00F3n')
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_api.component_end;
end;
/
