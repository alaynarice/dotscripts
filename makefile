# Link will create a directory: If the parent directory doesn't exist, creates it.
link:
	@echo "Linking files..."
	@mkdir -p $(HOME)/.scripts

	@ln -sf $(HOME)/bin/file1.py $(HOME)/.scripts/file1.py;
	@echo "Linked file1.py";

	@ln -sf $(HOME)/bin/file2.py $(HOME)/.scripts/file2.py;
	@echo "Linked file2.py";

# Unlink removes the link and duplicates the file.
unlink:
	@echo "Unlinking files..."

	@rm -f $(HOME)/.scripts/file1.py;
	@cp -f $(HOME)/bin/file1.py $(HOME)/.scripts/file1.py;
	@echo "Unlinked file1.py";

	@rm -f $(HOME)/.scripts/file2.py;
	@cp -f $(HOME)/bin/file2.py $(HOME)/.scripts/file2.py;
	@echo "Unlinked file2.py";

# The '@' symbol supresses the output of the command to prevent 'barfing'.
                                                                        
