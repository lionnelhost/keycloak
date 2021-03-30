# Set proxy to connect in keycloak server
Keycloak.proxy = ''
# If true, then all request exception will explode in application (this is the default value)
Keycloak.generate_request_exception = true
# controller that manage the user session
Keycloak.keycloak_controller = 'session'
# realm name (only if the installation file is not present)
Keycloak.realm = 'yeewu'
# realm url (only if the installation file is not present)
Keycloak.auth_server_url = 'http://localhost:9080/auth'
# The introspect of the token will be executed every time the Keycloak::Client.has_role? method is invoked, if this setting is set to true.
Keycloak.validate_token_when_call_has_role = false
# secret (only if the installation file is not present)
Keycloak.secret = 'cc6b2aee-df73-41d8-be3d-ec7b62aa8523'
# resource (client_id, only if the installation file is not present)
Keycloak.resource = 'marketplace'