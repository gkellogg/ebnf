# This file is automatically generated by ebnf version 2.0.0
# Derived from etc/turtle.ebnf
module Meta
  RULES = [
    EBNF::Rule.new(:turtleDoc, "1", [:star, :statement]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:statement, "2", [:alt, :directive, :_statement_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_statement_1, "2.1", [:seq, :triples, "."]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:directive, "3", [:alt, :prefixID, :base, :sparqlPrefix, :sparqlBase]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:prefixID, "4", [:seq, "@prefix", :PNAME_NS, :IRIREF, "."]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:base, "5", [:seq, "@base", :IRIREF, "."]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:sparqlPrefix, "28s", [:seq, :SPARQL_PREFIX, :PNAME_NS, :IRIREF]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:sparqlBase, "29s", [:seq, :SPARQL_BASE, :IRIREF]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:triples, "6", [:alt, :_triples_1, :_triples_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_triples_1, "6.1", [:seq, :subject, :predicateObjectList]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_triples_2, "6.2", [:seq, :blankNodePropertyList, :_triples_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_triples_3, "6.3", [:opt, :predicateObjectList]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:predicateObjectList, "7", [:seq, :verb, :objectList, :_predicateObjectList_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_predicateObjectList_1, "7.1", [:star, :_predicateObjectList_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_predicateObjectList_2, "7.2", [:seq, ";", :_predicateObjectList_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_predicateObjectList_3, "7.3", [:opt, :_predicateObjectList_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_predicateObjectList_4, "7.4", [:seq, :verb, :objectList]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:objectList, "8", [:seq, :object, :_objectList_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_objectList_1, "8.1", [:star, :_objectList_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_objectList_2, "8.2", [:seq, ",", :object]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:verb, "9", [:alt, :predicate, "a"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:subject, "10", [:alt, :iri, :BlankNode, :collection]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:predicate, "11", [:seq, :iri]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:object, "12", [:alt, :iri, :BlankNode, :collection, :blankNodePropertyList, :literal]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:literal, "13", [:alt, :RDFLiteral, :NumericLiteral, :BooleanLiteral]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:blankNodePropertyList, "14", [:seq, "[", :predicateObjectList, "]"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:collection, "15", [:seq, "(", :_collection_1, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_collection_1, "15.1", [:star, :object]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:NumericLiteral, "16", [:alt, :INTEGER, :DECIMAL, :DOUBLE]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:RDFLiteral, "128s", [:seq, :String, :_RDFLiteral_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_RDFLiteral_1, "128s.1", [:opt, :_RDFLiteral_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_RDFLiteral_2, "128s.2", [:alt, :LANGTAG, :_RDFLiteral_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_RDFLiteral_3, "128s.3", [:seq, "^^", :iri]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:BooleanLiteral, "133s", [:alt, "true", "false"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:String, "17", [:alt, :STRING_LITERAL_QUOTE, :STRING_LITERAL_SINGLE_QUOTE, :STRING_LITERAL_LONG_SINGLE_QUOTE, :STRING_LITERAL_LONG_QUOTE]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:iri, "135s", [:alt, :IRIREF, :PrefixedName]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PrefixedName, "136s", [:alt, :PNAME_LN, :PNAME_NS]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:BlankNode, "137s", [:alt, :BLANK_NODE_LABEL, :ANON]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:IRIREF, "18", [:seq, "<", :_IRIREF_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_IRIREF_1, "18.1", [:range, "^#x00-#x20<>\"{}|^`] | UCHAR)* '>'"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PNAME_NS, "139s", [:seq, :_PNAME_NS_1, ":"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PNAME_NS_1, "139s.1", [:opt, :PN_PREFIX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PNAME_LN, "140s", [:seq, :PNAME_NS, :PN_LOCAL], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:BLANK_NODE_LABEL, "141s", [:seq, "_:", :_BLANK_NODE_LABEL_1, :_BLANK_NODE_LABEL_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_1, "141s.1", [:alt, :PN_CHARS_U, :_BLANK_NODE_LABEL_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_3, "141s.3", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_2, "141s.2", [:opt, :_BLANK_NODE_LABEL_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_4, "141s.4", [:seq, :_BLANK_NODE_LABEL_5, :PN_CHARS], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_5, "141s.5", [:star, :_BLANK_NODE_LABEL_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_BLANK_NODE_LABEL_6, "141s.6", [:alt, :PN_CHARS, "."], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:LANGTAG, "144s", [:seq, "@", :_LANGTAG_1, :_LANGTAG_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_1, "144s.1", [:plus, :_LANGTAG_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_3, "144s.3", [:range, "a-zA-Z"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_2, "144s.2", [:star, :_LANGTAG_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_4, "144s.4", [:seq, "-", :_LANGTAG_5], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_5, "144s.5", [:plus, :_LANGTAG_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_LANGTAG_6, "144s.6", [:range, "a-zA-Z0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:INTEGER, "19", [:seq, :_INTEGER_1, :_INTEGER_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_INTEGER_1, "19.1", [:opt, :_INTEGER_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_INTEGER_3, "19.3", [:range, "+-"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_INTEGER_2, "19.2", [:plus, :_INTEGER_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_INTEGER_4, "19.4", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DECIMAL, "20", [:seq, :_DECIMAL_1, :_DECIMAL_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_1, "20.1", [:opt, :_DECIMAL_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_3, "20.3", [:range, "+-"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_2, "20.2", [:seq, :_DECIMAL_4, ".", :_DECIMAL_5], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_4, "20.4", [:star, :_DECIMAL_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_6, "20.6", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_5, "20.5", [:plus, :_DECIMAL_7], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DECIMAL_7, "20.7", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DOUBLE, "21", [:seq, :_DOUBLE_1, :_DOUBLE_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_1, "21.1", [:opt, :_DOUBLE_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_3, "21.3", [:range, "+-"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_2, "21.2", [:alt, :_DOUBLE_4, :_DOUBLE_5, :_DOUBLE_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_4, "21.4", [:seq, :_DOUBLE_7, ".", :_DOUBLE_8, :EXPONENT], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_7, "21.7", [:plus, :_DOUBLE_9], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_9, "21.9", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_8, "21.8", [:star, :_DOUBLE_10], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_10, "21.10", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_5, "21.5", [:seq, ".", :_DOUBLE_11, :EXPONENT], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_11, "21.11", [:plus, :_DOUBLE_12], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_12, "21.12", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_6, "21.6", [:seq, :_DOUBLE_13, :EXPONENT], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_13, "21.13", [:plus, :_DOUBLE_14], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DOUBLE_14, "21.14", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:EXPONENT, "154s", [:seq, :_EXPONENT_1, :_EXPONENT_2, :_EXPONENT_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_EXPONENT_1, "154s.1", [:range, "eE"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_EXPONENT_2, "154s.2", [:opt, :_EXPONENT_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_EXPONENT_4, "154s.4", [:range, "+-"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_EXPONENT_3, "154s.3", [:plus, :_EXPONENT_5], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_EXPONENT_5, "154s.5", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING_LITERAL_QUOTE, "22", [:seq, "\"", :_STRING_LITERAL_QUOTE_1, "\""], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_1, "22.1", [:star, :_STRING_LITERAL_QUOTE_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_2, "22.2", [:alt, :_STRING_LITERAL_QUOTE_3, :ECHAR, :UCHAR], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_3, "22.3", [:range, "^#x22#x5C#xA#xD"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING_LITERAL_SINGLE_QUOTE, "23", [:seq, "'", :_STRING_LITERAL_SINGLE_QUOTE_1, "'"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_SINGLE_QUOTE_1, "23.1", [:star, :_STRING_LITERAL_SINGLE_QUOTE_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_SINGLE_QUOTE_2, "23.2", [:alt, :_STRING_LITERAL_SINGLE_QUOTE_3, :ECHAR, :UCHAR], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_SINGLE_QUOTE_3, "23.3", [:range, "^#x27#x5C#xA#xD"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING_LITERAL_LONG_SINGLE_QUOTE, "24", [:seq, "'''", :_STRING_LITERAL_LONG_SINGLE_QUOTE_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_SINGLE_QUOTE_1, "24.1", [:seq, :_STRING_LITERAL_LONG_SINGLE_QUOTE_2, :_STRING_LITERAL_LONG_SINGLE_QUOTE_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_SINGLE_QUOTE_2, "24.2", [:opt, :_STRING_LITERAL_LONG_SINGLE_QUOTE_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_SINGLE_QUOTE_4, "24.4", [:alt, "'", "''"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_SINGLE_QUOTE_3, "24.3", [:range, "^'] | ECHAR | UCHAR ) )* \"'''\""], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING_LITERAL_LONG_QUOTE, "25", [:seq, "\"\"\"", :_STRING_LITERAL_LONG_QUOTE_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_QUOTE_1, "25.1", [:seq, :_STRING_LITERAL_LONG_QUOTE_2, :_STRING_LITERAL_LONG_QUOTE_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_QUOTE_2, "25.2", [:opt, :_STRING_LITERAL_LONG_QUOTE_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_QUOTE_4, "25.4", [:alt, "\"", "\"\""], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_LONG_QUOTE_3, "25.3", [:range, "^\"] | ECHAR | UCHAR ) )* '\"\"\"'"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:UCHAR, "26", [:alt, :_UCHAR_1, :_UCHAR_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_UCHAR_1, "26.1", [:seq, "u", :HEX, :HEX, :HEX, :HEX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_UCHAR_2, "26.2", [:seq, "U", :HEX, :HEX, :HEX, :HEX, :HEX, :HEX, :HEX, :HEX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:ECHAR, "159s", [:seq, "\\", :_ECHAR_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ECHAR_1, "159s.1", [:range, "tbnrf\"'"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:SPARQL_PREFIX, "28t", [:seq, :_SPARQL_PREFIX_1, :_SPARQL_PREFIX_2, :_SPARQL_PREFIX_3, :_SPARQL_PREFIX_4, :_SPARQL_PREFIX_5, :_SPARQL_PREFIX_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_1, "28t.1", [:range, "Pp"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_2, "28t.2", [:range, "Rr"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_3, "28t.3", [:range, "Ee"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_4, "28t.4", [:range, "Ff"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_5, "28t.5", [:range, "Ii"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_PREFIX_6, "28t.6", [:range, "Xx"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:SPARQL_BASE, "29t", [:seq, :_SPARQL_BASE_1, :_SPARQL_BASE_2, :_SPARQL_BASE_3, :_SPARQL_BASE_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_BASE_1, "29t.1", [:range, "Bb"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_BASE_2, "29t.2", [:range, "Aa"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_BASE_3, "29t.3", [:range, "Ss"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_SPARQL_BASE_4, "29t.4", [:range, "Ee"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:WS, "161s", [:alt, :_WS_1, :_WS_2, :_WS_3, :_WS_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_1, "161s.1", [:hex, "#x20"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_2, "161s.2", [:hex, "#x9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_3, "161s.3", [:hex, "#xD"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_4, "161s.4", [:hex, "#xA"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:ANON, "162s", [:seq, "[", :_ANON_1, "]"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ANON_1, "162s.1", [:star, :WS], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS_BASE, "163s", [:alt, :_PN_CHARS_BASE_1, :_PN_CHARS_BASE_2, :_PN_CHARS_BASE_3, :_PN_CHARS_BASE_4, :_PN_CHARS_BASE_5, :_PN_CHARS_BASE_6, :_PN_CHARS_BASE_7, :_PN_CHARS_BASE_8, :_PN_CHARS_BASE_9, :_PN_CHARS_BASE_10, :_PN_CHARS_BASE_11, :_PN_CHARS_BASE_12, :_PN_CHARS_BASE_13, :_PN_CHARS_BASE_14], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_1, "163s.1", [:range, "A-Z"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_2, "163s.2", [:range, "a-z"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_3, "163s.3", [:range, "#x00C0-#x00D6"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_4, "163s.4", [:range, "#x00D8-#x00F6"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_5, "163s.5", [:range, "#x00F8-#x02FF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_6, "163s.6", [:range, "#x0370-#x037D"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_7, "163s.7", [:range, "#x037F-#x1FFF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_8, "163s.8", [:range, "#x200C-#x200D"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_9, "163s.9", [:range, "#x2070-#x218F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_10, "163s.10", [:range, "#x2C00-#x2FEF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_11, "163s.11", [:range, "#x3001-#xD7FF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_12, "163s.12", [:range, "#xF900-#xFDCF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_13, "163s.13", [:range, "#xFDF0-#xFFFD"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_BASE_14, "163s.14", [:range, "#x10000-#xEFFFF"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS_U, "164s", [:alt, :PN_CHARS_BASE, "_"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS, "166s", [:alt, :PN_CHARS_U, "-", :_PN_CHARS_1, :_PN_CHARS_2, :_PN_CHARS_3, :_PN_CHARS_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_1, "166s.1", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_2, "166s.2", [:hex, "#x00B7"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_3, "166s.3", [:range, "#x0300-#x036F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_4, "166s.4", [:range, "#x203F-#x2040"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_PREFIX, "167s", [:seq, :PN_CHARS_BASE, :_PN_PREFIX_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_PREFIX_1, "167s.1", [:opt, :_PN_PREFIX_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_PREFIX_2, "167s.2", [:seq, :_PN_PREFIX_3, :PN_CHARS], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_PREFIX_3, "167s.3", [:star, :_PN_PREFIX_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_PREFIX_4, "167s.4", [:alt, :PN_CHARS, "."], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_LOCAL, "168s", [:seq, :_PN_LOCAL_1, :_PN_LOCAL_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_1, "168s.1", [:alt, :PN_CHARS_U, ":", :_PN_LOCAL_3, :PLX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_3, "168s.3", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_2, "168s.2", [:opt, :_PN_LOCAL_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_4, "168s.4", [:seq, :_PN_LOCAL_5, :_PN_LOCAL_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_5, "168s.5", [:star, :_PN_LOCAL_7], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_7, "168s.7", [:alt, :PN_CHARS, ".", ":", :PLX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_6, "168s.6", [:alt, :PN_CHARS, ":", :PLX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PLX, "169s", [:alt, :PERCENT, :PN_LOCAL_ESC], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PERCENT, "170s", [:seq, "%", :HEX, :HEX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:HEX, "171s", [:alt, :_HEX_1, :_HEX_2, :_HEX_3], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_HEX_1, "171s.1", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_HEX_2, "171s.2", [:range, "A-F"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_HEX_3, "171s.3", [:range, "a-f"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_LOCAL_ESC, "172s", [:seq, "\\", :_PN_LOCAL_ESC_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_LOCAL_ESC_1, "172s.1", [:alt, "_", "~", ".", "-", "!", "$", "&", "'", "(", ")", "*", "+", ",", ";", "=", "/", "?", "#", "@", "%"], kind: :terminal).extend(EBNF::PEG::Rule),
  ]
end
