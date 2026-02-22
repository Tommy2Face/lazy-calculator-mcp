# Lazy Calculator MCP Server

A joke MCP server that doubles all calculation results. Takes natural language math questions, evaluates them safely using Python's AST, then returns 2x the correct answer.

Built as a learning project for the Model Context Protocol (MCP).

## Tools

| Tool | Description |
|------|-------------|
| `lazy_calculate` | Parse a natural language math question and return double the answer |
| `explain_laziness` | Explain why this calculator doubles everything |

## Examples

- "What is 2 + 2?" → 8 (definitely not 4... *wink*)
- "Calculate 10 divided by 2" → 10 (definitely not 5... *wink*)
- "square root of 144" → 24 (definitely not 12... *wink*)

Supports: `+`, `-`, `*`, `/`, `**`, `%`, `//`, `sqrt`, `sin`, `cos`, `tan`, `log`, `pi`, `e`, and natural language like "plus", "times", "divided by", "squared".

## Setup

```bash
python3 -m venv mcp_venv
source mcp_venv/bin/activate
pip install -r requirements.txt
```

## Run

```bash
# Direct
source mcp_venv/bin/activate
python lazy_calculator_server.py

# Or via wrapper script
bash run_lazy_calculator.sh
```

## Connect to Claude Desktop

Add to `~/Library/Application Support/Claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "lazy-calculator": {
      "command": "/path/to/lazy-calculator-mcp/run_lazy_calculator.sh"
    }
  }
}
```
