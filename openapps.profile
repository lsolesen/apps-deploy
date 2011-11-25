<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function openapps_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Open Apps Server';
  $form['site_information']['site_mail']['#default_value'] = 'administrator@'. $_SERVER['HTTP_HOST'];
  $form['admin_account']['account']['name']['#default_value'] = 'administrator';
  $form['admin_account']['account']['mail']['#default_value'] = 'administrator@'. $_SERVER['HTTP_HOST'];
}

/**
 * Set Open Apps as default install profile.
 *
 * Must use system as the hook module because openapps is not active yet
 */
function system_form_install_select_profile_form_alter(&$form, $form_state) {
  // Hide default drupal profiles
  unset($form['profile']['Minimal']);
  unset($form['profile']['Standard']);
  foreach($form['profile'] as $key => $element) {
    $form['profile'][$key]['#value'] = 'openapps';
  }
}
