# colors
GREEN='\033[0;32m'
RESET='\033[0m'

# verify packages versions
echo
echo $GREEN"Installed packages versions:"
echo "tex $(tex --version | awk 'NR==1' | awk '{print $2}')"
echo "tlmgr $(tlmgr version | awk 'NR==1' | awk '{print $3}')"
echo "latexindent $(latexindent --version | awk 'NR==1 {print $1}' | sed 's/,$//')"
echo "git $(git --version | awk 'NR==1' | awk '{print $3}')"
echo "perl $(perl -v | awk 'NR==2' | awk '{print $9}')"
echo "zsh $(zsh --version | awk 'NR==1' | awk '{print $2}')"$RESET
