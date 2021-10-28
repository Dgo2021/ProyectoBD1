prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(5600472835796395635)
,p_name=>'Cliente'
,p_alias=>'CLIENTE1'
,p_step_title=>'Cliente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_last_upd_yyyymmddhh24miss=>'20211026061306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5966670874463335324)
,p_plug_name=>'Informe 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5600371244069395593)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CLIENTE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Informe 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5966671294875335325)
,p_name=>'Informe 1'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_IDCLIENTE:\#IDCLIENTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_internal_uid=>5966671294875335325
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5966671354965335325)
,p_db_column_name=>'IDCLIENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Idcliente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5966671775354335325)
,p_db_column_name=>'IDPERSONA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Persona'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(5923847105283344033)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5969208020190343142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59692081'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDCLIENTE:IDPERSONA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5966672923441335326)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5966670874463335324)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
wwv_flow_api.component_end;
end;
/
