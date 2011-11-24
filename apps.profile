<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function vih_dk_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Vejle Idrætshøjskole';
  $form['site_information']['site_mail']['#default_value'] = 'webmaster@vih.dk';
  $form['server_settings']['site_default_country']['#default_value'] = 'DK';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Copenhagen';
}