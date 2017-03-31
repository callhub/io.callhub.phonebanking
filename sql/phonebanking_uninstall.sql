DELETE cov FROM civicrm_option_group cog INNER JOIN civicrm_option_value cov ON cov.option_group_id = cog.id WHERE  cog.name = 'activity_type' AND cov.name = 'CallHub Phonebank Activity';
