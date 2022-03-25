function overwrite_setting(setting_type, setting_name, value)
  -- setting_type: [bool-setting | int-setting | double-setting | string-setting]
  if data.raw[setting_type] then
    local s = data.raw[setting_type][setting_name]
    if s then
      if setting_type == 'bool-setting' then
        s.forced_value = value
      else
        s.default_value = value
        s.allowed_values = {value}
      end
      s.hidden = true
    else
      log('Error: missing setting ' .. setting_name)
    end
  else
    log('Error: missing setting type ' .. setting_type)
  end
end

---ESSENTIAL SETTINGS
--Carbon
overwrite_setting('string-setting', 'bzcarbon-enable-carbon-black', 'yes')
overwrite_setting('string-setting', 'bzcarbon-enable-flake-graphite', 'yes')
overwrite_setting('string-setting', 'bzcarbon-enable-fullerenes', 'yes')
overwrite_setting('string-setting', 'bzcarbon-reuse', 'yes')
---silicon
overwrite_setting('string-setting', 'bzsilicon-more-intermediates', 'more')
--zicon
overwrite_setting('string-setting', 'bzzirconium-enable-intermediates', 'lds')
overwrite_setting('bool-setting', 'bzzirconium-enable-sorting', 'false')