# Custom ASM Library

This repository contains a small custom ASM library that implements common string manipulation and file I/O functions, similar to those found in standard libraries. The goal of this project is to recreate basic functions to gain a deeper understanding of how they work internally.

## Functions Included

### 1. `ft_strlen`
```c
size_t ft_strlen(const char *str);
```
- **Description**: Computes the length of the string `str`, excluding the null terminator.
- **Prototype**: Similar to `strlen(3)`.

### 2. `ft_strcpy`
```c
char *ft_strcpy(char *dst, const char *src);
```
- **Description**: Copies the string pointed to by `src` (including the null terminator) into the buffer pointed to by `dst`.
- **Prototype**: Similar to `strcpy(3)`.

### 3. `ft_strcmp`
```c
int ft_strcmp(const char *s1, const char *s2);
```
- **Description**: Compares the two strings `s1` and `s2` lexicographically.
- **Return Value**: 
  - 0 if `s1` and `s2` are equal.
  - A positive or negative integer based on the first differing character.
- **Prototype**: Similar to `strcmp(3)`.

### 4. `ft_write`
```c
ssize_t ft_write(int fd, const void *buf, size_t count);
```
- **Description**: Writes up to `count` bytes from the buffer `buf` to the file descriptor `fd`.
- **Return Value**: The number of bytes written, or -1 on error.
- **Prototype**: Similar to `write(2)`.

### 5. `ft_read`
```c
ssize_t ft_read(int fd, void *buf, size_t count);
```
- **Description**: Reads up to `count` bytes from the file descriptor `fd` into the buffer `buf`.
- **Return Value**: The number of bytes read, or -1 on error.
- **Prototype**: Similar to `read(2)`.

### 6. `ft_strdup`
```c
char *ft_strdup(const char *s1);
```
- **Description**: Returns a pointer to a newly allocated string, which is a duplicate of the string `s1`. The memory is allocated using `malloc`.
- **Prototype**: Similar to `strdup(3)`.

## Installation and Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/custom-c-library.git
   cd custom-c-library
   ```

2. Build the library using the provided `Makefile`:
   - To compile the library and generate the `.a` file, run:
     ```bash
     make
     ```
     This will generate `libasm.a`, the static library file.

3. Testing the library:
   - To compile and run the simple test program using `main.c`, run:
     ```bash
     make tests
     ```
     This will compile the tests and create an executable called `tests` for simple function tests.

4. Clean the generated object files and executables:
   - To remove object files (`.o` files) and the test executable, run:
     ```bash
     make clean
     ```

5. Full cleanup (including the static library):
   - To remove all compiled files, including `libasm.a`, run:
     ```bash
     make fclean
     ```

6. Rebuild everything from scratch:
   - To clean and rebuild the entire project, run:
     ```bash
     make re
     ```

## Contributing

Feel free to fork this repository, submit issues, or open pull requests to suggest new features or improvements.

---
