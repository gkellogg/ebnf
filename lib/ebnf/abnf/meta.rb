# This file is automatically generated by ebnf version 2.0.0
# Derived from abnf.ebnf
module ABNFMeta
  RULES = [
    EBNF::Rule.new(:rulelist, nil, [:plus, :_rulelist_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rulelist_1, nil, [:alt, :rule, :_rulelist_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rulelist_2, nil, [:seq, :_rulelist_3, :c_nl]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rulelist_3, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:rule, nil, [:seq, :rulename, :defined_as, :elements, :c_nl]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:elements, nil, [:seq, :alternation, :_elements_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_elements_1, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:alternation, nil, [:seq, :concatenation, :_alternation_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_alternation_1, nil, [:star, :_alternation_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_alternation_2, nil, [:seq, :_alternation_3, "/", :_alternation_4, :concatenation]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_alternation_3, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_alternation_4, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:concatenation, nil, [:seq, :repetition, :_concatenation_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_concatenation_1, nil, [:star, :_concatenation_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_concatenation_2, nil, [:seq, :_concatenation_3, :repetition]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_concatenation_3, nil, [:plus, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:repetition, nil, [:seq, :_repetition_1, :element]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_repetition_1, nil, [:opt, :repeat]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:repeat, nil, [:alt, :_repeat_1, :_repeat_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_repeat_1, nil, [:seq, :_repeat_3, "*", :_repeat_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_repeat_3, nil, [:star, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_repeat_4, nil, [:star, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_repeat_2, nil, [:plus, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:element, nil, [:alt, :rulename, :group, :option, :char_val, :num_val, :prose_val]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:group, nil, [:seq, "(", :_group_1, :alternation, :_group_2, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_group_1, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_group_2, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:option, nil, [:seq, "[", :_option_1, :alternation, :_option_2, "]"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_option_1, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_option_2, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:char_val, nil, [:alt, :case_insensitive_string, :case_sensitive_string]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:case_insensitive_string, nil, [:seq, :_case_insensitive_string_1, :quoted_string]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_case_insensitive_string_1, nil, [:opt, "%i"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:case_sensitive_string, nil, [:seq, "%s", :quoted_string]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:num_val, nil, [:seq, "%", :_num_val_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_num_val_1, nil, [:alt, :bin_val, :dec_val, :hex_val]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:rulename, nil, [:seq, :ALPHA, :_rulename_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rulename_1, nil, [:star, :_rulename_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rulename_2, nil, [:alt, :ALPHA, :DIGIT, "-"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:defined_as, nil, [:seq, :_defined_as_1, :_defined_as_2, :_defined_as_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_defined_as_1, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_defined_as_2, nil, [:alt, "=", "=/"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_defined_as_3, nil, [:star, :c_wsp]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:c_wsp, nil, [:alt, :WSP, :_c_wsp_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_c_wsp_1, nil, [:seq, :c_nl, :WSP]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:c_nl, nil, [:alt, :COMMENT, :CRLF], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:comment, nil, [:seq, ";", :_comment_1, :CRLF], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_comment_1, nil, [:star, :_comment_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_comment_2, nil, [:alt, :WSP, :VCHAR]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:quoted_string, nil, [:seq, :DQUOTE, :_quoted_string_1, :DQUOTE], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_quoted_string_1, nil, [:star, :_quoted_string_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_quoted_string_2, nil, [:range, "#x20-#x21#x23-#x7E"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:bin_val, nil, [:seq, "b", :_bin_val_1, :_bin_val_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_1, nil, [:plus, :BIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_2, nil, [:opt, :_bin_val_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_3, nil, [:alt, :_bin_val_4, :_bin_val_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_4, nil, [:plus, :_bin_val_6]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_6, nil, [:seq, ".", :_bin_val_7]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_7, nil, [:plus, :BIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_5, nil, [:seq, "-", :_bin_val_8]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_bin_val_8, nil, [:plus, :BIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:dec_val, nil, [:seq, "d", :_dec_val_1, :_dec_val_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_1, nil, [:plus, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_2, nil, [:opt, :_dec_val_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_3, nil, [:alt, :_dec_val_4, :_dec_val_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_4, nil, [:plus, :_dec_val_6]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_6, nil, [:seq, ".", :_dec_val_7]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_7, nil, [:plus, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_5, nil, [:seq, "-", :_dec_val_8]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_dec_val_8, nil, [:plus, :DIGIT]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:hex_val, nil, [:seq, "x", :_hex_val_1, :_hex_val_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_1, nil, [:plus, :HEXDIG]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_2, nil, [:opt, :_hex_val_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_3, nil, [:alt, :_hex_val_4, :_hex_val_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_4, nil, [:plus, :_hex_val_6]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_6, nil, [:seq, ".", :_hex_val_7]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_7, nil, [:plus, :HEXDIG]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_5, nil, [:seq, "-", :_hex_val_8]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_hex_val_8, nil, [:plus, :HEXDIG]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:prose_val, nil, [:seq, "<", :_prose_val_1, ">"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_prose_val_1, nil, [:star, :_prose_val_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_prose_val_2, nil, [:range, "#x20-#x3D#x3F-#x7E"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:ALPHA, nil, [:range, "#x41-#x5A#x61-#x7A"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:BIT, nil, [:alt, "0", "1"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:CHAR, nil, [:range, "#x01-#x7F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:CR, nil, [:hex, "#x0D"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:CRLF, nil, [:seq, :_CRLF_1, :LF], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_CRLF_1, nil, [:opt, :CR], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:CTL, nil, [:alt, :_CTL_1, :_CTL_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_CTL_1, nil, [:range, "#x00-#x1F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_CTL_2, nil, [:hex, "#x7F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DIGIT, nil, [:range, "#x30-#x39"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DQUOTE, nil, [:hex, "#x22"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:HEXDIG, nil, [:alt, :DIGIT, :_HEXDIG_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_HEXDIG_1, nil, [:range, "A-F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:HTAB, nil, [:hex, "#x09"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:LF, nil, [:hex, "#x0A"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:LWSP, nil, [:star, :_LWSP_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LWSP_1, nil, [:alt, :WSP, :_LWSP_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LWSP_2, nil, [:seq, :CRLF, :WSP], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:OCTET, nil, [:range, "#x00-#xFF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:SP, nil, [:hex, "#x20"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:VCHAR, nil, [:range, "#x21-#x7E"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:WSP, nil, [:alt, :SP, :HTAB], kind: :terminal).extend(EBNF::PEG::Rule),
  ]
end

