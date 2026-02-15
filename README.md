# lecture-1-elevation-analysis

Quick overview of loading, viewing, and manipulating images

## Getting Started

You can run this notebook in two ways:
1. **GitHub Codespaces** (recommended for quick start)
2. **Local VS Code** (clone and run on your computer)

### Option 1: Using GitHub Codespaces

1. Click the **Code** button (green button) on the repository page
2. Select the **Codespaces** tab
3. Click **Create codespace on main**
4. Wait for the codespace to load (this may take a minute)
5. Once loaded, open a terminal in VS Code (Terminal → New Terminal)
6. Run the setup command:
   ```bash
   make setup
   ```
7. Open `elevation_analysis.ipynb`
8. Select the Python kernel from the virtual environment (`.venv`)
9. Start running the cells!

### Option 2: Using VS Code Locally

#### Prerequisites
- [Git](https://git-scm.com/downloads)
- [VS Code](https://code.visualstudio.com/)
- [Python 3.9+](https://www.python.org/downloads/)
- `make` command (usually pre-installed on macOS/Linux; Windows users can use WSL or install via Chocolatey)

#### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ubern-image-analysis/lecture-1-elevation-analysis.git
   cd lecture-1-elevation-analysis
   ```

2. **Install dependencies:**
   ```bash
   make setup
   ```
   This will:
   - Install the `uv` package manager (if not already installed)
   - Create a virtual environment
   - Install all required Python packages

3. **Open in VS Code:**
   ```bash
   code .
   ```

4. **Run the notebook:**
   - Open `elevation_analysis.ipynb`
   - Select the Python kernel from the `.venv` folder
   - Start running the cells!

## What You'll Learn

In this notebook, you will:
- Load and visualize topographic maps of Switzerland
- Work with image data using NumPy and PIL
- Analyze elevation data and canton information
- Perform basic image processing and analysis

## Troubleshooting

### Kernel not found
If VS Code doesn't detect the kernel, try:
- Command Palette (Ctrl/Cmd+Shift+P) → "Python: Select Interpreter"
- Select the Python interpreter from `.venv/bin/python` (or `.venv\Scripts\python.exe` on Windows)

### Make command not found (Windows)
- Use [WSL (Windows Subsystem for Linux)](https://docs.microsoft.com/en-us/windows/wsl/install)
- Or install Make via [Chocolatey](https://chocolatey.org/): `choco install make`

### Dependencies issues
Clean and reinstall:
```bash
make clean
make setup
```


