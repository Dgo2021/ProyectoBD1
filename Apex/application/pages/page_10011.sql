prompt --application/pages/page_10011
begin
--   Manifest
--     PAGE: 10011
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
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(5600472835796395635)
,p_name=>'Gestionar acceso de usuarios'
,p_alias=>'GESTIONAR-ACCESO-DE-USUARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar acceso de usuarios'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5600477376300395640)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(5600476050899395639)
,p_required_patch=>wwv_flow_api.id(5600474331447395638)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>En esta p\00E1gina se muestra un informe de los usuarios de la aplicaci\00F3n y el nivel de acceso otorgado.</p>'),
unistr('<p>Haga clic en las cabeceras de columna para ordenar y filtrar los datos, o bien haga clic en el bot\00F3n <strong>Acciones</strong> para personalizar la visualizaci\00F3n de columnas y otras muchas funciones avanzadas.<br>'),
unistr('Haga clic en el bot\00F3n <strong>Restablecer</strong> para restablecer la configuraci\00F3n por defecto del informe interactivo.</p>'),
unistr('<p>Haga clic en el icono de edici\00F3n (l\00E1piz de color amarillo) para editar los detalles y el nivel de acceso del usuario, o bien para suprimir el usuario.</p>'),
'<p>Haga clic en <strong>Agregar usuario</strong>, en la parte superior del informe, para agregar un nuevo usuario y su nivel de acceso.</p>'))
,p_last_updated_by=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_last_upd_yyyymmddhh24miss=>'20211025052151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5600488689558395652)
,p_plug_name=>'Gestionar acceso de usuarios'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(5600371244069395593)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Gestionar acceso de usuarios'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5600489725441395653)
,p_name=>'Gestionar acceso de usuarios'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10012:&APP_SESSION.::::P10012_ID:#ID#'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_internal_uid=>5600489725441395653
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5600489820021395653)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5600490238760395654)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre de Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5600490669184395654)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5600491300125395655)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'56004914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600492271671395656)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5600488689558395652)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(5600448226239395624)
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600492645262395656)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5600488689558395652)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_image_alt=>'Agregar varios usuarios'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10013:&SESSION.::&DEBUG.:10013::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600493041256395656)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5600488689558395652)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.:10012'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5600488744889395652)
,p_name=>'Informe de Refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5600488689558395652)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5600493668339395656)
,p_event_id=>wwv_flow_api.id(5600488744889395652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5600488689558395652)
);
wwv_flow_api.component_end;
end;
/
