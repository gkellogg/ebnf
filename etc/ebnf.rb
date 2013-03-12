# This file is automatically generated by bin/ebnf
# BRANCH derived from etc/ebnf.ebnf
module Branch
  START = :ebnf

  BRANCH = {
    :alt => {
      "(" => [:seq, :_alt_1],
      :ENUM => [:seq, :_alt_1],
      :HEX => [:seq, :_alt_1],
      :O_ENUM => [:seq, :_alt_1],
      :O_RANGE => [:seq, :_alt_1],
      :RANGE => [:seq, :_alt_1],
      :STRING1 => [:seq, :_alt_1],
      :STRING2 => [:seq, :_alt_1],
    },
    :_alt_1 => {
      ")" => [],
      "@pass" => [],
      "@terminals" => [],
      "[" => [],
      "|" => [:_alt_3],
    },
    :_alt_2 => {
      "|" => ["|", :seq],
    },
    :_alt_3 => {
      "|" => [:_alt_2, :_alt_1],
    },
    :declaration => {
      "@pass" => [:pass],
      "@terminals" => ["@terminals"],
    },
    :diff => {
      "(" => [:postfix, :_diff_1],
      :ENUM => [:postfix, :_diff_1],
      :HEX => [:postfix, :_diff_1],
      :O_ENUM => [:postfix, :_diff_1],
      :O_RANGE => [:postfix, :_diff_1],
      :RANGE => [:postfix, :_diff_1],
      :STRING1 => [:postfix, :_diff_1],
      :STRING2 => [:postfix, :_diff_1],
    },
    :_diff_1 => {
      "(" => [],
      ")" => [],
      "-" => [:_diff_3],
      "@pass" => [],
      "@terminals" => [],
      :ENUM => [],
      :HEX => [],
      :O_ENUM => [],
      :O_RANGE => [],
      :RANGE => [],
      :STRING1 => [],
      :STRING2 => [],
      "[" => [],
      "|" => [],
    },
    :_diff_2 => {
      "-" => ["-", :postfix],
    },
    :_diff_3 => {
      "-" => [:_diff_2, :_diff_1],
    },
    :ebnf => {
      "@pass" => [:_ebnf_2],
      "@terminals" => [:_ebnf_2],
      "[" => [:_ebnf_2],
    },
    :_ebnf_1 => {
      "@pass" => [:declaration],
      "@terminals" => [:declaration],
      "[" => [:rule],
    },
    :_ebnf_2 => {
      "@pass" => [:_ebnf_1, :ebnf],
      "@terminals" => [:_ebnf_1, :ebnf],
      "[" => [:_ebnf_1, :ebnf],
    },
    :expression => {
      "(" => [:alt],
      :ENUM => [:alt],
      :HEX => [:alt],
      :O_ENUM => [:alt],
      :O_RANGE => [:alt],
      :RANGE => [:alt],
      :STRING1 => [:alt],
      :STRING2 => [:alt],
    },
    :lhs => {
      "[" => ["[", :SYMBOL, "]", :SYMBOL],
    },
    :pass => {
      "@pass" => ["@pass", :_pass_1],
    },
    :_pass_1 => {
      "#" => [:_pass_2, :_pass_3],
      "/*" => [:_pass_2, :_pass_3],
      "//" => [:_pass_2, :_pass_3],
      :_pass_5 => [:_pass_2, :_pass_3],
    },
    :_pass_11 => {
      :_pass_10 => [:_pass_10, :_pass_9],
    },
    :_pass_12 => {
      "*" => [:_pass_14],
      "*/" => [],
      :_pass_15 => [:_pass_14],
    },
    :_pass_13 => {
      "*" => [:_pass_16],
      :_pass_15 => [:_pass_15],
    },
    :_pass_14 => {
      "*" => [:_pass_13, :_pass_12],
      :_pass_15 => [:_pass_13, :_pass_12],
    },
    :_pass_16 => {
      "*" => ["*", :_pass_17],
    },
    :_pass_2 => {
      "#" => [:_pass_6],
      "/*" => [:_pass_7],
      "//" => [:_pass_6],
      :_pass_5 => [:_pass_5],
    },
    :_pass_3 => {
      "#" => [:_pass_4],
      "/*" => [:_pass_4],
      "//" => [:_pass_4],
      "@pass" => [],
      "@terminals" => [],
      "[" => [],
      :_pass_5 => [:_pass_4],
    },
    :_pass_4 => {
      "#" => [:_pass_2, :_pass_3],
      "/*" => [:_pass_2, :_pass_3],
      "//" => [:_pass_2, :_pass_3],
      :_pass_5 => [:_pass_2, :_pass_3],
    },
    :_pass_6 => {
      "#" => [:_pass_8, :_pass_9],
      "//" => [:_pass_8, :_pass_9],
    },
    :_pass_7 => {
      "/*" => ["/*", :_pass_12, "*/"],
    },
    :_pass_8 => {
      "#" => ["#"],
      "//" => ["//"],
    },
    :_pass_9 => {
      "#" => [],
      "/*" => [],
      "//" => [],
      "@pass" => [],
      "@terminals" => [],
      "[" => [],
      :_pass_10 => [:_pass_11],
      :_pass_5 => [],
    },
    :postfix => {
      "(" => [:primary, :_postfix_1],
      :ENUM => [:primary, :_postfix_1],
      :HEX => [:primary, :_postfix_1],
      :O_ENUM => [:primary, :_postfix_1],
      :O_RANGE => [:primary, :_postfix_1],
      :RANGE => [:primary, :_postfix_1],
      :STRING1 => [:primary, :_postfix_1],
      :STRING2 => [:primary, :_postfix_1],
    },
    :_postfix_1 => {
      "(" => [],
      ")" => [],
      "-" => [],
      "@pass" => [],
      "@terminals" => [],
      :ENUM => [],
      :HEX => [],
      :O_ENUM => [],
      :O_RANGE => [],
      :RANGE => [],
      :STRING1 => [],
      :STRING2 => [],
      "[" => [],
      :_postfix_2 => [:_postfix_2],
      "|" => [],
    },
    :primary => {
      "(" => [:_primary_1],
      :ENUM => [:ENUM],
      :HEX => [:HEX],
      :O_ENUM => [:O_ENUM],
      :O_RANGE => [:O_RANGE],
      :RANGE => [:RANGE],
      :STRING1 => [:STRING1],
      :STRING2 => [:STRING2],
    },
    :_primary_1 => {
      "(" => ["(", :expression, ")"],
    },
    :rule => {
      "[" => [:lhs, "::=", :expression],
    },
    :seq => {
      "(" => [:diff, :_seq_1],
      :ENUM => [:diff, :_seq_1],
      :HEX => [:diff, :_seq_1],
      :O_ENUM => [:diff, :_seq_1],
      :O_RANGE => [:diff, :_seq_1],
      :RANGE => [:diff, :_seq_1],
      :STRING1 => [:diff, :_seq_1],
      :STRING2 => [:diff, :_seq_1],
    },
    :_seq_1 => {
      "(" => [:_seq_2],
      ")" => [],
      "@pass" => [],
      "@terminals" => [],
      :ENUM => [:_seq_2],
      :HEX => [:_seq_2],
      :O_ENUM => [:_seq_2],
      :O_RANGE => [:_seq_2],
      :RANGE => [:_seq_2],
      :STRING1 => [:_seq_2],
      :STRING2 => [:_seq_2],
      "[" => [],
      "|" => [],
    },
    :_seq_2 => {
      "(" => [:diff, :_seq_1],
      :ENUM => [:diff, :_seq_1],
      :HEX => [:diff, :_seq_1],
      :O_ENUM => [:diff, :_seq_1],
      :O_RANGE => [:diff, :_seq_1],
      :RANGE => [:diff, :_seq_1],
      :STRING1 => [:diff, :_seq_1],
      :STRING2 => [:diff, :_seq_1],
    },
  }.freeze
  TERMINALS = [
    "#",
    "(",
    ")",
    "*",
    "*/",
    "-",
    "/*",
    "//",
    "::=",
    "@pass",
    "@terminals",
    :ENUM,
    :HEX,
    :O_ENUM,
    :O_RANGE,
    :RANGE,
    :STRING1,
    :STRING2,
    :SYMBOL,
    "[",
    "]",
    :_pass_10,
    :_pass_15,
    :_pass_17,
    :_pass_5,
    :_postfix_2,
    "|"
  ].freeze
  FIRST = {
    :alt => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_alt_1 => [
      :_eps,
      "|"],
    :_alt_2 => [
      "|"],
    :_alt_3 => [
      "|"],
    :_alt_4 => [
      :_eps,
      "|"],
    :_alt_5 => [
      :_eps,
      "|"],
    :_alt_6 => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :declaration => [
      "@terminals",
      "@pass"],
    :diff => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_diff_1 => [
      :_eps,
      "-"],
    :_diff_2 => [
      "-"],
    :_diff_3 => [
      "-"],
    :_diff_4 => [
      :_eps,
      "-"],
    :_diff_5 => [
      :_eps,
      "-"],
    :_diff_6 => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :ebnf => [
      :_eps,
      "@terminals",
      "@pass",
      "["],
    :_ebnf_1 => [
      "@terminals",
      "@pass",
      "["],
    :_ebnf_2 => [
      "@terminals",
      "@pass",
      "["],
    :_ebnf_3 => [
      :_eps,
      "@terminals",
      "@pass",
      "["],
    :_empty => [
      :_eps],
    :expression => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :lhs => [
      "["],
    :_lhs_1 => [
      :SYMBOL],
    :_lhs_2 => [
      "]"],
    :_lhs_3 => [
      :SYMBOL],
    :pass => [
      "@pass"],
    :_pass_1 => [
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_11 => [
      :_pass_10],
    :_pass_12 => [
      :_eps,
      :_pass_15,
      "*"],
    :_pass_13 => [
      :_pass_15,
      "*"],
    :_pass_14 => [
      :_pass_15,
      "*"],
    :_pass_16 => [
      "*"],
    :_pass_18 => [
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_19 => [
      :_eps,
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_2 => [
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_20 => [
      :_eps,
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_21 => [
      :_pass_10,
      :_eps],
    :_pass_22 => [
      :_pass_10,
      :_eps],
    :_pass_23 => [
      "*/",
      :_pass_15,
      "*"],
    :_pass_24 => [
      :_eps,
      :_pass_15,
      "*"],
    :_pass_25 => [
      :_pass_17],
    :_pass_26 => [
      "*/"],
    :_pass_3 => [
      :_eps,
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_4 => [
      :_pass_5,
      "/*",
      "#",
      "//"],
    :_pass_6 => [
      "#",
      "//"],
    :_pass_7 => [
      "/*"],
    :_pass_8 => [
      "#",
      "//"],
    :_pass_9 => [
      :_eps,
      :_pass_10],
    :postfix => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_postfix_1 => [
      :_postfix_2,
      :_eps],
    :_postfix_3 => [
      :_postfix_2,
      :_eps],
    :primary => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_primary_1 => [
      "("],
    :_primary_2 => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_primary_3 => [
      ")"],
    :rule => [
      "["],
    :_rule_1 => [
      "::="],
    :_rule_2 => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :seq => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_seq_1 => [
      :_eps,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_seq_2 => [
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_seq_3 => [
      :_eps,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
    :_seq_4 => [
      :_eps,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "("],
  }.freeze
  FOLLOW = {
    :alt => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_1 => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_2 => [
      "|",
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_3 => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_4 => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_5 => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_alt_6 => [
      "|",
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :declaration => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :diff => [
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_1 => [
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_2 => [
      "-",
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_3 => [
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_4 => [
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_5 => [
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_diff_6 => [
      "-",
      ")",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :ebnf => [
      :_eof],
    :_ebnf_1 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_ebnf_2 => [
      :_eof],
    :_ebnf_3 => [
      :_eof],
    :expression => [
      ")",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :lhs => [
      "::="],
    :_lhs_1 => [
      "::="],
    :_lhs_2 => [
      "::="],
    :_lhs_3 => [
      "::="],
    :pass => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_1 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_11 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_12 => [
      "*/"],
    :_pass_13 => [
      "*/",
      :_pass_15,
      "*"],
    :_pass_14 => [
      "*/"],
    :_pass_16 => [
      "*/",
      :_pass_15,
      "*"],
    :_pass_18 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_19 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_2 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_20 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_21 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_22 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_23 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_24 => [
      "*/"],
    :_pass_25 => [
      "*/",
      :_pass_15,
      "*"],
    :_pass_26 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_3 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_4 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_pass_6 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_7 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_8 => [
      :_pass_10,
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :_pass_9 => [
      :_pass_5,
      :_eof,
      "/*",
      "#",
      "//",
      "@terminals",
      "@pass",
      "["],
    :postfix => [
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_postfix_1 => [
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_postfix_3 => [
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :primary => [
      :_postfix_2,
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_primary_1 => [
      :_postfix_2,
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_primary_2 => [
      :_postfix_2,
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :_primary_3 => [
      :_postfix_2,
      ")",
      "-",
      "|",
      :_eof,
      :HEX,
      :RANGE,
      :ENUM,
      :O_RANGE,
      :O_ENUM,
      :STRING1,
      :STRING2,
      "@terminals",
      "(",
      "@pass",
      "["],
    :rule => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_rule_1 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_rule_2 => [
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :seq => [
      ")",
      "|",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_seq_1 => [
      ")",
      "|",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_seq_2 => [
      ")",
      "|",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_seq_3 => [
      ")",
      "|",
      :_eof,
      "@terminals",
      "@pass",
      "["],
    :_seq_4 => [
      ")",
      "|",
      :_eof,
      "@terminals",
      "@pass",
      "["],
  }.freeze
end

