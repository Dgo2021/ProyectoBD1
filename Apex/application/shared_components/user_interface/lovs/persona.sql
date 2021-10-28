prompt --application/shared_components/user_interface/lovs/persona
begin
--   Manifest
--     PERSONA
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
 p_id=>wwv_flow_api.id(5923847105283344033)
,p_lov_name=>'PERSONA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'PERSONA'
,p_return_column_name=>'IDPERSONA'
,p_display_column_name=>'NOMBRES'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRES'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(5923884008467350568)
,p_query_column_name=>'IDPERSONA'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(5923884476596350568)
,p_query_column_name=>'NOMBRES'
,p_heading=>'Nombres'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(5923884880236350569)
,p_query_column_name=>'APELLIDOS'
,p_heading=>'Apellidos'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
