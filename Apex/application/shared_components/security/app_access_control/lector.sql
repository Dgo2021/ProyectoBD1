prompt --application/shared_components/security/app_access_control/lector
begin
--   Manifest
--     ACL ROLE: Lector
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(5600475959583395639)
,p_static_id=>'READER'
,p_name=>'Lector'
,p_description=>'Rol asignado a los lectores de aplicaciones.'
);
wwv_flow_api.component_end;
end;
/
