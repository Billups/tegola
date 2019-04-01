#!/bin/sh

confd -onetime -backend ssm --prefix /${ENVIRONMENT} -node https://ssm.us-west-2.amazonaws.com
exec ["/opt/tegola", "--config", "/opt/config.toml", "serve"]