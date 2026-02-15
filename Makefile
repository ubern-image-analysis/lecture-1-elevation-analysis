.PHONY: help install-uv install setup clean

# Default target
help:
	@echo "Available targets:"
	@echo "  setup        - Install uv and project dependencies (run this first)"
	@echo "  install-uv   - Download and install uv package manager"
	@echo "  install      - Install project dependencies using uv"
	@echo "  clean        - Remove virtual environment and cache"

# Detect OS
UNAME_S := $(shell uname -s)

# Setup everything (install uv + dependencies)
setup: install-uv install
	@echo "✅ Setup complete! You can now run the notebook."

# Install uv based on OS
install-uv:
	@echo "Installing uv package manager..."
ifeq ($(OS),Windows_NT)
	@powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
else ifeq ($(UNAME_S),Darwin)
	@curl -LsSf https://astral.sh/uv/install.sh | sh
else ifeq ($(UNAME_S),Linux)
	@curl -LsSf https://astral.sh/uv/install.sh | sh
else
	@echo "Unsupported OS. Please install uv manually from https://docs.astral.sh/uv/"
	@exit 1
endif
	@echo "✅ uv installed successfully"

# Install project dependencies
install:
	@echo "Installing project dependencies..."
	@uv sync
	@echo "✅ Dependencies installed successfully"

# Clean up
clean:
	@echo "Cleaning up..."
	@rm -rf .venv
	@rm -rf .uv
	@echo "✅ Cleanup complete"
