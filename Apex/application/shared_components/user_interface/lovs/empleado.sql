prompt --application/shared_components/user_interface/lovs/empleado
begin
--   Manifest
--     EMPLEADO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(5968455328592272857)
,p_lov_name=>'EMPLEADO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'EMPLEADO'
,p_return_column_name=>'IDEMPLEADO'
,p_display_column_name=>'EMAIL'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'IDPERSONA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
