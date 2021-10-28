prompt --application/pages/page_10010
begin
--   Manifest
--     PAGE: 10010
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
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(5600472835796395635)
,p_name=>'Configurar Control de Acceso'
,p_alias=>'CONFIGURAR-CONTROL-DE-ACCESO'
,p_page_mode=>'MODAL'
,p_step_title=>'Configurar Control de Acceso'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5600477376300395640)
,p_required_role=>wwv_flow_api.id(5600476050899395639)
,p_required_patch=>wwv_flow_api.id(5600474331447395638)
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Seleccione la opci\00F3n adecuada para cualquier usuario autenticado.<br>'),
unistr('Al seleccionar <strong>No</strong>, la aplicaci\00F3n pasa a ser m\00E1s segura, ya que solo podr\00E1n acceder a ella los usuarios especificados.'),
unistr('Sin embargo, si la aplicaci\00F3n tiene una comunidad de usuarios grande, mantener a tal cantidad de usuarios puede ser una tarea laboriosa y tal vez prefiera seleccionar <strong>S\00ED</strong> y solo implicar a los administradores de la aplicaci\00F3n y puede ')
||'que a los contribuyentes.<br>',
unistr('Si selecciona <strong>S\00ED</strong>, tambi\00E9n debe seleccionar c\00F3mo se considera a los usuarios no incluidos en la lista de usuarios.</p>'),
unistr('<p>Seleccione entre exigir las direcciones de correo electr\00F3nico y cualquier valor alfanum\00E9rico para los nombres de usuario.<br>'),
unistr('Por lo general, debe definir este valor en <strong>Direcci\00F3n de correo electr\00F3nico</strong> si la aplicaci\00F3n utiliza (o se configurar\00E1 para utilizar) un esquema de autenticaci\00F3n centralizado como Oracle Access Manager o SSO.</p>'),
unistr('<p><em><strong>Nota:</strong> Esta aplicaci\00F3n soporta los tres niveles siguientes de acceso: Lector, Contribuyente y Administrador.'),
'<ul>',
unistr('  <li>Los <strong>lectores</strong> tienen acceso de solo lectura a toda la informaci\00F3n y tambi\00E9n pueden ver informes.</li>'),
unistr('  <li>Los <strong>contribuyentes</strong> pueden crear, editar y suprimir informaci\00F3n y ver informes.</li>'),
unistr('  <li>Los <strong>administradores</strong>, adem\00E1s de la capacidad Contribuyentes, tambi\00E9n pueden realizar la configuraci\00F3n de la aplicaci\00F3n mediante el acceso a la secci\00F3n Administraci\00F3n de la aplicaci\00F3n.</li>'),
'</ul>',
'</em></p>'))
,p_last_updated_by=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_last_upd_yyyymmddhh24miss=>'20211025052151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5600484596825395649)
,p_plug_name=>unistr('Configuraci\00F3n de control de acceso')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(5600321158486395575)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5600484694585395649)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(5600323948606395576)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600485875722395650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5600484694585395649)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600486102690395651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5600484694585395649)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5600487541681395652)
,p_branch_name=>unistr('Bifurcar a p\00E1gina de administraci\00F3n')
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5600487823810395652)
,p_name=>'P10010_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5600484596825395649)
,p_prompt=>unistr('Cualquier usuario autenticado puede acceder a esta aplicaci\00F3n')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(5600445439707395623)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('Seleccione <strong>No</strong> si se definen todos los usuarios en la lista de control de acceso. Seleccione <strong>S\00ED</strong> si los usuarios autenticados que no est\00E9n en la lista de control de acceso pueden tambi\00E9n utilizar esta aplicaci\00F3n.')
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5600486242512395651)
,p_name=>unistr('Cancelar Cuadro de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5600486102690395651)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5600486983617395651)
,p_event_id=>wwv_flow_api.id(5600486242512395651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5600488211007395652)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Definir control de acceso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10010_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('La configuraci\00F3n de control de acceso se ha guardado.')
);
wwv_flow_api.component_end;
end;
/
