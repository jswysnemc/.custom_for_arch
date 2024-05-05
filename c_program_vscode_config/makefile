# 自用通用 Makefile 


# 编译器
CC :=g++

# 源文件目录
SRC_DIR := src

# 主函数源文件
MAIN_SFC:=main.cpp

# 测试文件夹
TEST_DIR := ./test

# 头文件目录
INC_DIR := -I$(SRC_DIR)/include -I./include 

# 指定库路径
LDFLAGS := -L./lib

# 指定库
LIBS   := 

# 编译选项
CFLAGS := -Wall $(INC_DIR) -g $(LDFLAGS)  

# 中间文件目录
OBJ_DIR := build/obj

# 目标文件目录
BIN_DIR := bin

# 源文件后缀
SRC_EXT := cpp
# 中间文件后缀
OBJ_EXT := o

# 获取所有源文件
SRC_FILES := $(wildcard $(SRC_DIR)/*.$(SRC_EXT))

# 生成对应的目标文件列表
OBJ_FILES := $(patsubst $(SRC_DIR)/%.$(SRC_EXT), $(OBJ_DIR)/%.$(OBJ_EXT), $(SRC_FILES))

# 目标可执行文件
TARGET := $(BIN_DIR)/main
TEST := $(BIN_DIR)/test

# 默认目标，编译可执行文件
all: $(TARGET)
	@echo "Build successful! Now execute the binary file"
	@echo "------------------------------------------------------------------------------------------"

# 生成目标文件
$(OBJ_DIR)/%.$(OBJ_EXT): $(SRC_DIR)/%.$(SRC_EXT)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@  $(LIBS)

# 链接目标文件生成可执行文件
$(TARGET): $(OBJ_FILES)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

# 测试依赖
TEST_SRC_FILES := $(filter-out $(SRC_DIR)/$(MAIN_SFC),  $(wildcard $(SRC_DIR)/*.$(SRC_EXT))) 
TEST_OBJ_FILES := $(patsubst %.$(SRC_EXT), $(OBJ_DIR)/%.o, $(notdir $(TEST_SRC_FILES)))

TEST: $(TEST)
	@echo "Build successful! Now execute the binary file"
	@echo "------------------------------------------------------------------------------------------"
	@$(BIN_DIR)/test

#  测试依赖规则
$(TEST):  $(TEST_OBJ_FILES)  $(OBJ_DIR)/test.o
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

$(OBJ_DIR)/%.$(OBJ_EXT): $(TEST_SRC_FILES)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $^ -o $@ $(LIBS)


$(OBJ_DIR)/test.o: $(TEST_DIR)/test.$(SRC_EXT)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $^ -o $@ $(LIBS)

# 清理中间文件和目标文件
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
# 声明伪目标，防止与文件名冲突
.PHONY: all clean
