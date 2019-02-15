
# Create folder structure
dirs = figs data throughput pdf

$(dirs): 
	mkdir -p $@

# These are the main commands: type "make all" to create the paper, and "make clean" to remove all throughputs and outputs

all: pdf/paper.pdf

clean:
	rm -rf $(dirs)

# obtain the data using a one-liner R script
data/words.txt: $(dirs)
	echo "Downloading data with R"
	@Rscript -e 'download.file("https://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "data/words.txt", quiet = TRUE)'

# compute the length histogram of words using Python. Requires pandas
throughput/length_tab.csv: data/words.txt process.py
	echo "Processing data with python"
	@python3 process.py

# Use R (requires ggplot) to visualize the histogram
figs/bar.png: make_fig.R throughput/length_tab.csv
	echo "Making figure with R"
	@Rscript make_fig.R

# Create a simple report that depends on the histogram. 
pdf/paper.pdf: paper.tex figs/bar.png
	echo "TeXing paper"
	@pdflatex -output-directory pdf paper.tex\
    @rm textput.log
    