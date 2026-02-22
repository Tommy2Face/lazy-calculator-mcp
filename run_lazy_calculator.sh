#!/bin/bash

# Activate the virtual environment and run the server
cd "/Users/tombakkers/Code-projects/lazy-calculator-mcp"
source mcp_venv/bin/activate
exec python lazy_calculator_server.py
