SELECT @activityType := cog.id, @value := max(cast(value as unsigned)) + 1 FROM civicrm_option_group cog INNER JOIN civicrm_option_value cov ON cov.option_group_id = cog.id WHERE  cog.name = 'activity_type';

INSERT INTO civicrm_option_value(option_group_id, label, value, name, grouping, filter, is_default, weight, description, is_optgroup, is_reserved, is_active, component_id, visibility_id) 
VALUES (@activityType, 'CallHub Phonebank Activity', @value, 'CallHub Phonebank Activity', NULL, 0, 0, @value, 'CallHub Phonebank Activity', 0, 1, 1, NULL, NULL);
