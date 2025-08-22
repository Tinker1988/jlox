# Java compiler
JAVAC = javac
JAVA = java

# Source root (all .java live under here)
SRC_DIRS = com

# Main class to run
MAIN = com.craftinginterpreters.lox.Lox

# Compile all .java files under com/
all:
	$(JAVAC) $(SRC_DIRS)/craftinginterpreters/lox/*.java $(SRC_DIRS)/craftinginterpreters/tool/*.java

# Run the program
run: all
	$(JAVA) $(MAIN)

# Remove all compiled .class files
clean:
	del /s /q $(SRC_DIRS)\*.class
