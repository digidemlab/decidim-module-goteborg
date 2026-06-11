# Tweaks for the Gothenburg Decidim instance

## Newsletter on registration

Removes the newsletter checkbox and the newsletter opt-in modal from the
registration form, and defaults the newsletter subscription to opted in for
new users.

### Remove the newsletter checkbox and modal
* app/overrides/decidim/devise/registrations/new/

### Default newsletter opt-in
The registration form is patched to set `newsletter` to `true` by default.
* app/forms/concerns/registration_form_override.rb
* lib/decidim/goteborg/engine.rb

### Skip the newsletter modal on submit
The registration JS no longer intercepts the form submit to open the
newsletter modal (the related handlers are disabled).
* app/packs/src/decidim/user_registrations.js
