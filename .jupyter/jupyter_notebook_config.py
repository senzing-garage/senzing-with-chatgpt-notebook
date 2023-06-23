# Configuration file for jupyter-notebook.

c = get_config()  #noqa

## Whether to allow the user to run the notebook as root.
#  Default: False
# c.NotebookApp.allow_root = False
c.NotebookApp.allow_root = True

## The IP address the notebook server will listen on.
#  Default: 'localhost'
# c.NotebookApp.ip = 'localhost'
c.NotebookApp.ip = '*'

## Whether to open in a browser after starting.
#                          The specific browser used is platform dependent and
#                          determined by the python standard library `webbrowser`
#                          module, unless it is overridden using the --browser
#                          (NotebookApp.browser) configuration option.
#  Default: True
# c.NotebookApp.open_browser = True
c.NotebookApp.open_browser = False

## Hashed password to use for web authentication.
#  
#                        To generate, type in a python/IPython shell:
#  
#                          from notebook.auth import passwd; passwd()
#  
#                        The string should be of the form type:salt:hashed-
#  password.
#  Default: ''
# c.NotebookApp.password = ''
c.NotebookApp.password = ''

## Token used for authenticating first-time connections to the server.
#  
#          The token can be read from the file referenced by JUPYTER_TOKEN_FILE or set directly
#          with the JUPYTER_TOKEN environment variable.
#  
#          When no password is enabled,
#          the default is to generate a new, random token.
#  
#          Setting to an empty string disables authentication altogether, which
#  is NOT RECOMMENDED.
#  Default: '<generated>'
# c.NotebookApp.token = '<generated>'
c.NotebookApp.token = ''

