prompt --application/shared_components/security/authorizations/derechos_de_lector
begin
--   Manifest
--     SECURITY SCHEME: Derechos de lector
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(5600476153323395639)
,p_name=>'Derechos de lector'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>unistr('No tiene autorizaci\00F3n para ver esta aplicaci\00F3n porque no le han otorgado acceso o porque su cuenta se ha bloqueado. P\00F3ngase en contacto con el administrador de la aplicaci\00F3n.')
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
