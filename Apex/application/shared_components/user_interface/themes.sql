prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 50198
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0-18'
,p_default_workspace_id=>39640138122777806000
,p_default_application_id=>50198
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOBD1'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(5600451148819395626)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(5600311039287395571)
,p_default_dialog_template=>wwv_flow_api.id(5600305841885395569)
,p_error_template=>wwv_flow_api.id(5600196102958395566)
,p_printer_friendly_template=>wwv_flow_api.id(5600311039287395571)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(5600196102958395566)
,p_default_button_template=>wwv_flow_api.id(5600448188453395624)
,p_default_region_template=>wwv_flow_api.id(5600375500366395595)
,p_default_chart_template=>wwv_flow_api.id(5600375500366395595)
,p_default_form_template=>wwv_flow_api.id(5600375500366395595)
,p_default_reportr_template=>wwv_flow_api.id(5600375500366395595)
,p_default_tabform_template=>wwv_flow_api.id(5600375500366395595)
,p_default_wizard_template=>wwv_flow_api.id(5600375500366395595)
,p_default_menur_template=>wwv_flow_api.id(5600387675344395599)
,p_default_listr_template=>wwv_flow_api.id(5600375500366395595)
,p_default_irr_template=>wwv_flow_api.id(5600371244069395593)
,p_default_report_template=>wwv_flow_api.id(5600413178176395609)
,p_default_label_template=>wwv_flow_api.id(5600445611550395623)
,p_default_menu_template=>wwv_flow_api.id(5600449708554395625)
,p_default_calendar_template=>wwv_flow_api.id(5600449821236395625)
,p_default_list_template=>wwv_flow_api.id(5600429576975395616)
,p_default_nav_list_template=>wwv_flow_api.id(5600441368912395621)
,p_default_top_nav_list_temp=>wwv_flow_api.id(5600441368912395621)
,p_default_side_nav_list_temp=>wwv_flow_api.id(5600435921661395619)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(5600323948606395576)
,p_default_dialogr_template=>wwv_flow_api.id(5600321158486395575)
,p_default_option_label=>wwv_flow_api.id(5600445611550395623)
,p_default_required_label=>wwv_flow_api.id(5600446985047395623)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(5600435510594395618)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
