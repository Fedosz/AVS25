#include <stdio.h>
#include <stdlib.h>

int countWords(int argc, char *argv[]) {
    int i, j;

    register char symbol asm("r13");
    _Bool is_new_word;
    register int count_of_words asm("r14")= 0;

    for (i = 0; i < argc - 1; ++i) {
        j = 0;
        symbol = argv[i + 1][j];

        is_new_word = 1;
        while (symbol != '\0') {
            if (symbol >= 'A' && symbol <= 'Z' || symbol >= 'a' && symbol <= 'z') {
                if (is_new_word) {
                    ++count_of_words;
                    is_new_word = 0;
                }
            } else if (!(symbol >= '0' && symbol <= '9')) {
                is_new_word = 1;
            }
            ++j;
            symbol = argv[i + 1][j];
        }
    }

    return count_of_words;
}

int main(int argc, char *argv[]) {
    int i, j;

    register char symbol asm("r13");
    _Bool is_new_word;

    register int count_of_words asm("r14")= countWords(argc, argv);

    char *correct_words[count_of_words];
    register int index_of_correct_words asm("r12") = 0;

    int count_of_symbols[count_of_words];
    for (i = 0; i < count_of_words; ++i) {
        count_of_symbols[i] = 0;
    }

    for (i = 0; i < argc - 1; ++i) {
        j = 0;
        symbol = argv[i + 1][j];

        count_of_symbols[index_of_correct_words] = 0;
        is_new_word = 1;
        while (symbol != '\0') {
            if (symbol >= 'A' && symbol <= 'Z' || symbol >= 'a' && symbol <= 'z') {
                ++count_of_symbols[index_of_correct_words];
                if (is_new_word) {
                    is_new_word = 0;
                }
            } else if (symbol >= '0' && symbol <= '9') {
                if (!is_new_word) {
                    ++count_of_symbols[index_of_correct_words];
                }
            } else {
                if (!is_new_word) {
                    correct_words[index_of_correct_words] = (char *) malloc(count_of_symbols[index_of_correct_words] * sizeof(char));
                    ++index_of_correct_words;
                }
                is_new_word = 1;
            }
            ++j;
            symbol = argv[i + 1][j];
        }
        if (!is_new_word) {
            correct_words[index_of_correct_words] = (char *) malloc(count_of_symbols[index_of_correct_words] * sizeof(char));
            ++index_of_correct_words;
        }
    }

    index_of_correct_words = 0;
    register int index_of_sub_array asm("r11")= 0;

    for (i = 0; i < argc - 1; ++i) {
        j = 0;
        symbol = argv[i + 1][j];

        is_new_word = 1;
        while (symbol != '\0') {
            if (symbol >= 'A' && symbol <= 'Z' || symbol >= 'a' && symbol <= 'z') {
                correct_words[index_of_correct_words][index_of_sub_array] = symbol;
                ++index_of_sub_array;
                if (is_new_word) {
                    is_new_word = 0;
                }
            } else if (symbol >= '0' && symbol <= '9') {
                if (!is_new_word) {
                    correct_words[index_of_correct_words][index_of_sub_array] = symbol;
                    ++index_of_sub_array;
                }
            } else {
                if (!is_new_word) {
                    ++index_of_correct_words;
                    index_of_sub_array = 0;
                }
                is_new_word = 1;
            }
            ++j;
            symbol = argv[i + 1][j];
        }
    }

    index_of_correct_words = 0;

    register int frequency_word asm("r10");
    register int k asm("r9")= 0;
    for (i = 0; i < count_of_words; ++i) {
        if (correct_words[i][0] != '!') {
            for (j = 0; j < count_of_symbols[i]; ++j) {
                printf("%c", correct_words[i][j]);
            }
            printf(" - ");
        } else {
            continue;
        }

        frequency_word = 1;
        for (j = i + 1; j < count_of_words; ++j) {
            if (count_of_symbols[i] != count_of_symbols[j]) {
                continue;
            }
            for (k = 0; k < count_of_symbols[i]; ++k) {
                if (correct_words[i][k] != correct_words[j][k]) {
                    break;
                } else if (k == count_of_symbols[i] - 1) {
                    ++frequency_word;
                    correct_words[j][0] = '!';
                }
            }
        }
        printf("%d\n", frequency_word);
    }

    for (i = 0; i < count_of_words; ++i) {
        free(correct_words[i]);
    }

    return 0;
}