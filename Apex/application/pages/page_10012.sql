prompt --application/pages/page_10012
begin
--   Manifest
--     PAGE: 10012
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
 p_id=>10012
,p_user_interface_id=>wwv_flow_api.id(5600472835796395635)
,p_name=>'Gestionar acceso de usuarios'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar acceso de usuarios'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5600477376300395640)
,p_required_role=>wwv_flow_api.id(5600476050899395639)
,p_required_patch=>wwv_flow_api.id(5600474331447395638)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice esta pantalla para introducir usuarios, sus direcciones de correo electr\00F3nico y definir sus niveles de acceso.'),
unistr('La configuraci\00F3n definida en <em>Configurar control de acceso</em> determinar\00E1 si el nombre de usuario debe ser su direcci\00F3n de correo electr\00F3nico o puede ser cualquier entrada alfanum\00E9rica.</p>'),
unistr('<p>Esta aplicaci\00F3n soporta los tres niveles de acceso siguientes: Lector, Contribuyente y Administrador.</p>'),
'<ul>',
unistr('  <li>Los <strong>lectores</strong> tienen acceso de solo lectura a toda la informaci\00F3n y tambi\00E9n pueden ver informes.</li>'),
unistr('  <li>Los <strong>contribuyentes</strong> pueden crear, editar y suprimir informaci\00F3n y ver informes.</li>'),
unistr('  <li>Los <strong>administradores</strong>, adem\00E1s de la capacidad Contribuyentes, tambi\00E9n pueden realizar la configuraci\00F3n de la aplicaci\00F3n mediante al acceso a la secci\00F3n Administraci\00F3n de la aplicaci\00F3n.</li>'),
'</ul>',
unistr('<p>Al editar un usuario existente, puede bloquear su cuenta, lo que evitar\00E1 que accedan a la aplicaci\00F3n.</p>'),
unistr('<p><em><strong>Nota:</strong> Si utiliza cuentas de Oracle Application Express, el administrador del espacio de trabajo tambi\00E9n debe definir a los usuarios introducidos aqu\00ED como usuarios finales, cuyas contrase\00F1as tambi\00E9n puede definir.</em></p>')))
,p_last_updated_by=>'DCHINCHILLAS2@MIUMG.EDU.GT'
,p_last_upd_yyyymmddhh24miss=>'20211025052151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5600494108022395657)
,p_plug_name=>'Pantalla Basada en Gestionar acceso de usuarios'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(5600321158486395575)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5600494296804395657)
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
 p_id=>wwv_flow_api.id(5600497010075395659)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5600494296804395657)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600497423858395659)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5600494296804395657)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'NEXT'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600495266787395658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5600494296804395657)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5600496690277395658)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5600494296804395657)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(5600448188453395624)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5600497755496395659)
,p_name=>'P10012_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_item_source_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5600498121523395659)
,p_name=>'P10012_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_item_source_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5600498506989395660)
,p_name=>'P10012_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_item_source_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre de Usuario'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10012_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(5600446985047395623)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5600498916408395660)
,p_name=>'P10012_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_item_source_plug_id=>wwv_flow_api.id(5600494108022395657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(5600446985047395623)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Cuando el control de acceso est\00E1 activado, los administradores pueden restringir el acceso a determinadas funciones de la aplicaci\00F3n para los usuarios autenticados. Esta aplicaci\00F3n soporta los tres roles siguientes: Lector, Contribuyente y Adminis')
||'trador.</p>',
'<ul>',
unistr('  <li>Los <strong>lectores</strong> tienen acceso de solo lectura a toda la informaci\00F3n y tambi\00E9n pueden ver informes.</li>'),
unistr('  <li>Los <strong>contribuyentes</strong> pueden crear, editar y suprimir informaci\00F3n y ver informes.</li>'),
unistr('  <li>Los <strong>administradores</strong>, adem\00E1s de la capacidad de los contribuyentes, pueden realizar la configuraci\00F3n de la aplicaci\00F3n.</li>'),
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5600500275322395662)
,p_validation_name=>unistr('No se puede suprimir a s\00ED mismo como administrador')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10012_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10012_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No puede eliminar su propio rol de administrador.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5600495329695395658)
,p_name=>unistr('Cancelar Cuadro de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5600495266787395658)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5600496017983395658)
,p_event_id=>wwv_flow_api.id(5600495329695395658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5600500572940395662)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_api.id(5600494108022395657)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Gestionar acceso de usuarios'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5600500978659395662)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(5600494108022395657)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla Gestionar acceso de usuarios'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5600501398069395663)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
