<?php

use PhpCsFixer\Config;
use PhpCsFixer\Finder;

$finder = Finder::create()
    ->in(__DIR__)
    ->exclude(['vendor', 'node_modules', 'storage', 'bootstrap/cache'])
    ->name('*.php')
    ->notName('*.blade.php') // optional, if you don't want to touch blade files

return (new Config())
    ->setRiskyAllowed(true)
    ->setLineEnding("\n")
    ->setIndent("  ") // 2 spaces
    ->setRules([
        '@PSR12' => true,
        'array_syntax' => ['syntax' => 'short'],
        'binary_operator_spaces' => [
            'default' => 'align_single_space_minimal',
        ],
        'blank_line_after_namespace' => true,
        'blank_line_after_opening_tag' => true,
        'blank_line_before_statement' => ['statements' => ['return', 'throw', 'if']],
        'braces' => [
            'position_after_functions_and_oop_constructs' => 'next',
        ],
        'cast_spaces' => ['space' => 'single'],
        'class_attributes_separation' => ['elements' => ['method' => 'one']],
        'concat_space' => ['spacing' => 'one'],
        'function_declaration' => ['closure_function_spacing' => 'one'],
        'heredoc_indentation' => ['indentation' => 'same_as_start'],
        'include' => true,
        'linebreak_after_opening_tag' => true,
        'lowercase_keywords' => true,
        'method_argument_space' => ['on_multiline' => 'ensure_fully_multiline'],
        'no_extra_blank_lines' => [
            'tokens' => [
                'curly_brace_block',
                'extra',
                'parenthesis_brace_block',
                'square_brace_block',
                'throw',
                'use',
            ],
        ],
        'no_spaces_after_function_name' => true,
        'no_trailing_whitespace' => true,
        'no_whitespace_in_blank_line' => true,
        'ordered_imports' => ['sort_algorithm' => 'alpha'],
        'phpdoc_align' => ['align' => 'left'],
        'phpdoc_scalar' => true,
        'phpdoc_separation' => true,
        'phpdoc_trim' => true,
        'return_type_declaration' => ['space_before' => 'none'],
        'single_quote' => false, // double quotes preferred
        'ternary_operator_spaces' => true,
        'trim_array_spaces' => true,
        'unary_operator_spaces' => true,
    ])
    ->setFinder($finder);
