# zap2xml
Docker container for zap2xml

This is zap2xml with Environment Variables driving the configuration. By default it runs every 12 hours to update your EPG data from zap2it.

You can access the output via `0.0.0.0:80/xmltv.xml`

## Quick Run
`docker run -d --name zap2xml -p 80:80 -e USERNAME=youremail@email.com -e PASSWORD=**password** -e OPT_ARGS="-I -D" -e zap2xml:latest`

## Environment Settings
You can configure the following environment variables below:

### Required
- USERNAME - zap2it.com username
- PASSWORD - zap2it.com password

### Optional
- OPT_ARGS - additional command line arguments for zap2xml
- USERNAME2 - Second zap2it.com username
- PASSWORD2 - Second zap2it.com password
- OPT_ARGS2 = additional command line arguments for zap2xml for the second username
- XMLTV_FILENAME - filename for your xmltv file (default: xmltv.xml)
- SLEEPTIME - time in seconds to wait before next run (default: 43200)
