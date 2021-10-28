prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 50198
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(5600184147212395560)
,p_build_option_name=>'Comentado'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(5600474331447395638)
,p_build_option_name=>unistr('Funci\00F3n: Control de Acceso')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('Incorpore la autenticaci\00F3n de usuarios basada en roles en la aplicaci\00F3n y gestione las asignaciones de nombres de usuario a roles de la aplicaci\00F3n.')
);
wwv_flow_api.component_end;
end;
/
