TINYMCE_OPTIONS = { 
  :theme => 'advanced',
  # :theme => 'simple',
  :mode => "specific_textareas",
  :convert_urls => false,
  :remove_script_host => true,
  :theme_advanced_toolbar_location => "top",
  :theme_advanced_toolbar_align => "left",
  :theme_advanced_resizing => true,
  :theme_advanced_resize_horizontal => false,
  # :theme_advanced_buttons1 => %w{ bold italic underline strikethrough separator justifyleft justifycenter justifyright indent outdent separator bullist numlist forecolor backcolor separator link unlink image undo redo code},
  :theme_advanced_buttons1 => %w{ bold italic underline separator justifyleft justifycenter justifyright separator bullist numlist separator link unlink separator undo redo code },
  # :theme_advanced_buttons2 => %w{ formatselect fontselect fontsizeselect pastetext pasteword selectall },
  :theme_advanced_buttons2 => [],
  :theme_advanced_buttons3 => [],
  # :theme_advanced_buttons3_add => %w{ tablecontrols fullscreen},
  :editor_selector => 'mceEditor',
  :paste_create_paragraphs => true,
  :paste_create_linebreaks => true,
  :paste_use_dialog => true,
  :paste_auto_cleanup_on_paste => true,
  :paste_convert_middot_lists => false,
  :paste_unindented_list_class => "unindentedList",
  :paste_convert_headers_to_strong => true,
  :paste_insert_word_content_callback => "convertWord",
  :plugins => %w{ contextmenu paste table fullscreen},
  :onchange_callback => "admin_change_detection.tinymce_content_changed"
}

US_STATES = [["Alaska", "AK"], ["Alabama", "AL"], ["Arkansas", "AR"], ["Arizona", "AZ"], ["California", "CA"], ["Colorado", "CO"], ["Connecticut", "CT"], ["Washington D.C.", "DC"], ["Delaware", "DE"], ["Florida", "FL"], ["Georgia", "GA"], ["Hawaii", "HI"], ["Iowa", "IA"], ["Idaho", "ID"], ["Illinois", "IL"], ["Indiana", "IN"], ["Kansas", "KS"], ["Kentucky", "KY"], ["Louisiana", "LA"], ["Massachusetts", "MA"], ["Maryland", "MD"], ["Maine", "ME"], ["Michigan", "MI"], ["Minnesota", "MN"], ["Missouri", "MO"], ["Mississippi", "MS"], ["Montana", "MT"], ["North Carolina", "NC"], ["North Dakota", "ND"], ["Nebraska", "NE"], ["New Hampshire", "NH"], ["New Jersey", "NJ"], ["New Mexico", "NM"], ["Nevada", "NV"], ["New York", "NY"], ["Ohio", "OH"], ["Oklahoma", "OK"], ["Oregon", "OR"], ["Pennsylvania", "PA"], ["Rhode Island", "RI"], ["South Carolina", "SC"], ["South Dakota", "SD"], ["Tennessee", "TN"], ["Texas", "TX"], ["Utah", "UT"], ["Virginia", "VA"], ["Vermont", "VT"], ["Washington", "WA"], ["Wisconsin", "WI"], ["West Virginia", "WV"], ["Wyoming", "WY"]]

SUPPORTED_IMAGE_TYPES = ['image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png', 'image/jpg']

META_TITLE        = "Epsilon Manager Tablet"
META_DESCRIPTION  = nil
META_KEYWORDS     = nil
META_IMAGE        = nil

GOOGLE_ANALYTICS_ID = nil