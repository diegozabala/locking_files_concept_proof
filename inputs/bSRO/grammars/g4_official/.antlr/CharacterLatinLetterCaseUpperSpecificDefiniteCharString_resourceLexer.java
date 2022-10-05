// Generated from c:\bWa\DZa\antlr_ws\inputs\bSRO\grammars\g4_official\CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resource.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		LETTER_CASE_UPPER_STRING=1, NOT_LETTER=2;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"LETTER_CASE_UPPER_STRING", "NOT_LETTER", "KeywordPrkr", "KeywordPruefkreis", 
			"KeywordD014", "KeywordD015", "KeywordOrderedCharSet", "NotLetter", "Char"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "LETTER_CASE_UPPER_STRING", "NOT_LETTER"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resource.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\4V\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\3\2\3\2"+
		"\3\2\3\2\5\2\32\n\2\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b"+
		"\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3"+
		"\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\n\3\n\2\2\13\3\3\5\4\7\2\t\2"+
		"\13\2\r\2\17\2\21\2\23\2\3\2\2\2Q\2\3\3\2\2\2\2\5\3\2\2\2\3\31\3\2\2\2"+
		"\5\33\3\2\2\2\7\35\3\2\2\2\t\"\3\2\2\2\13-\3\2\2\2\r\62\3\2\2\2\17\67"+
		"\3\2\2\2\21R\3\2\2\2\23T\3\2\2\2\25\32\5\7\4\2\26\32\5\t\5\2\27\32\5\13"+
		"\6\2\30\32\5\r\7\2\31\25\3\2\2\2\31\26\3\2\2\2\31\27\3\2\2\2\31\30\3\2"+
		"\2\2\32\4\3\2\2\2\33\34\5\21\t\2\34\6\3\2\2\2\35\36\7R\2\2\36\37\7T\2"+
		"\2\37 \7M\2\2 !\7T\2\2!\b\3\2\2\2\"#\7R\2\2#$\7T\2\2$%\7W\2\2%&\7G\2\2"+
		"&\'\7H\2\2\'(\7M\2\2()\7T\2\2)*\7G\2\2*+\7K\2\2+,\7U\2\2,\n\3\2\2\2-."+
		"\7F\2\2./\7\62\2\2/\60\7\63\2\2\60\61\7\66\2\2\61\f\3\2\2\2\62\63\7F\2"+
		"\2\63\64\7\62\2\2\64\65\7\63\2\2\65\66\7\67\2\2\66\16\3\2\2\2\678\7C\2"+
		"\289\7D\2\29:\7E\2\2:;\7F\2\2;<\7G\2\2<=\7H\2\2=>\7I\2\2>?\7J\2\2?@\7"+
		"K\2\2@A\7L\2\2AB\7M\2\2BC\7N\2\2CD\7O\2\2DE\7P\2\2EF\7Q\2\2FG\7R\2\2G"+
		"H\7S\2\2HI\7T\2\2IJ\7U\2\2JK\7V\2\2KL\7W\2\2LM\7X\2\2MN\7Y\2\2NO\7Z\2"+
		"\2OP\7[\2\2PQ\7\\\2\2Q\20\3\2\2\2RS\5\23\n\2S\22\3\2\2\2TU\13\2\2\2U\24"+
		"\3\2\2\2\4\2\31\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}