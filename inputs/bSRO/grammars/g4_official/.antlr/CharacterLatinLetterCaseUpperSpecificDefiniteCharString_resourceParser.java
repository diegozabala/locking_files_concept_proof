// Generated from c:\bWa\DZa\antlr_ws\inputs\bSRO\grammars\g4_official\CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resource.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		LETTER_CASE_UPPER_STRING=1, NOT_LETTER=2;
	public static final int
		RULE_foCharStream = 0, RULE_foChar = 1;
	private static String[] makeRuleNames() {
		return new String[] {
			"foCharStream", "foChar"
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

	@Override
	public String getGrammarFileName() { return "CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resource.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class FoCharStreamContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceParser.EOF, 0); }
		public List<FoCharContext> foChar() {
			return getRuleContexts(FoCharContext.class);
		}
		public FoCharContext foChar(int i) {
			return getRuleContext(FoCharContext.class,i);
		}
		public FoCharStreamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_foCharStream; }
	}

	public final FoCharStreamContext foCharStream() throws RecognitionException {
		FoCharStreamContext _localctx = new FoCharStreamContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_foCharStream);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(7);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LETTER_CASE_UPPER_STRING || _la==NOT_LETTER) {
				{
				{
				setState(4);
				foChar();
				}
				}
				setState(9);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(10);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FoCharContext extends ParserRuleContext {
		public TerminalNode LETTER_CASE_UPPER_STRING() { return getToken(CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceParser.LETTER_CASE_UPPER_STRING, 0); }
		public TerminalNode NOT_LETTER() { return getToken(CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resourceParser.NOT_LETTER, 0); }
		public FoCharContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_foChar; }
	}

	public final FoCharContext foChar() throws RecognitionException {
		FoCharContext _localctx = new FoCharContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_foChar);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(12);
			_la = _input.LA(1);
			if ( !(_la==LETTER_CASE_UPPER_STRING || _la==NOT_LETTER) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\4\21\4\2\t\2\4\3"+
		"\t\3\3\2\7\2\b\n\2\f\2\16\2\13\13\2\3\2\3\2\3\3\3\3\3\3\2\2\4\2\4\2\3"+
		"\3\2\3\4\2\17\2\t\3\2\2\2\4\16\3\2\2\2\6\b\5\4\3\2\7\6\3\2\2\2\b\13\3"+
		"\2\2\2\t\7\3\2\2\2\t\n\3\2\2\2\n\f\3\2\2\2\13\t\3\2\2\2\f\r\7\2\2\3\r"+
		"\3\3\2\2\2\16\17\t\2\2\2\17\5\3\2\2\2\3\t";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}