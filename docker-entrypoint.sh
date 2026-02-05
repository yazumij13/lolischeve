#!/bin/bash
set -e

# FIX RAILWAY MPM ERROR
a2dismod mpm_event mpm_worker mpm_event_modules 2>/dev/null || true
a2enmod mpm_prefork rewrite

# Start Apache
exec apache2-foreground
