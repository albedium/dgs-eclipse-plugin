/*
* generated by Xtext
*/
grammar InternalDGS;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.graphstream.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.graphstream.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.graphstream.services.DGSGrammarAccess;

}

@parser::members {

 	private DGSGrammarAccess grammarAccess;
 	
    public InternalDGSParser(TokenStream input, DGSGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Dgs";	
   	}
   	
   	@Override
   	protected DGSGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleDgs
entryRuleDgs returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDgsRule()); }
	 iv_ruleDgs=ruleDgs 
	 { $current=$iv_ruleDgs.current; } 
	 EOF 
;

// Rule Dgs
ruleDgs returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getDgsAccess().getHeaderHeaderParserRuleCall_0_0()); 
	    }
		lv_header_0_0=ruleHeader		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getDgsRule());
	        }
       		set(
       			$current, 
       			"header",
        		lv_header_0_0, 
        		"Header");
	        afterParserOrEnumRuleCall();
	    }

)
)((
(
		{ 
	        newCompositeNode(grammarAccess.getDgsAccess().getEventEventParserRuleCall_1_0_0()); 
	    }
		lv_event_1_0=ruleEvent		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getDgsRule());
	        }
       		add(
       			$current, 
       			"event",
        		lv_event_1_0, 
        		"Event");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		lv_comment_2_0=RULE_COMMENT
		{
			newLeafNode(lv_comment_2_0, grammarAccess.getDgsAccess().getCommentCOMMENTTerminalRuleCall_1_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDgsRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"comment",
        		lv_comment_2_0, 
        		"COMMENT");
	    }

)
)
    |this_EOL_3=RULE_EOL
    { 
    newLeafNode(this_EOL_3, grammarAccess.getDgsAccess().getEOLTerminalRuleCall_1_2()); 
    }
)*)
;





// Entry rule entryRuleHeader
entryRuleHeader returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getHeaderRule()); }
	 iv_ruleHeader=ruleHeader 
	 { $current=$iv_ruleHeader.current; } 
	 EOF 
;

// Rule Header
ruleHeader returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_magic_0_0=RULE_MAGIC
		{
			newLeafNode(lv_magic_0_0, grammarAccess.getHeaderAccess().getMagicMAGICTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getHeaderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"magic",
        		lv_magic_0_0, 
        		"MAGIC");
	    }

)
)this_EOL_1=RULE_EOL
    { 
    newLeafNode(this_EOL_1, grammarAccess.getHeaderAccess().getEOLTerminalRuleCall_1()); 
    }
(
(
(
		lv_name_2_1=RULE_ID
		{
			newLeafNode(lv_name_2_1, grammarAccess.getHeaderAccess().getNameIDTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getHeaderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_1, 
        		"ID");
	    }

    |		lv_name_2_2=RULE_STRING
		{
			newLeafNode(lv_name_2_2, grammarAccess.getHeaderAccess().getNameSTRINGTerminalRuleCall_2_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getHeaderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_2, 
        		"STRING");
	    }

)

)
)(
(
		lv_numberOfSteps_3_0=RULE_INT
		{
			newLeafNode(lv_numberOfSteps_3_0, grammarAccess.getHeaderAccess().getNumberOfStepsINTTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getHeaderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"numberOfSteps",
        		lv_numberOfSteps_3_0, 
        		"INT");
	    }

)
)(
(
		lv_numberOfEvents_4_0=RULE_INT
		{
			newLeafNode(lv_numberOfEvents_4_0, grammarAccess.getHeaderAccess().getNumberOfEventsINTTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getHeaderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"numberOfEvents",
        		lv_numberOfEvents_4_0, 
        		"INT");
	    }

)
)this_EOL_5=RULE_EOL
    { 
    newLeafNode(this_EOL_5, grammarAccess.getHeaderAccess().getEOLTerminalRuleCall_5()); 
    }
)
;





// Entry rule entryRuleEvent
entryRuleEvent returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEventRule()); }
	 iv_ruleEvent=ruleEvent 
	 { $current=$iv_ruleEvent.current; } 
	 EOF 
;

// Rule Event
ruleEvent returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(((
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getAnAnParserRuleCall_0_0_0()); 
	    }
		lv_an_0_0=ruleAn		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"an",
        		lv_an_0_0, 
        		"An");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getCnCnParserRuleCall_0_1_0()); 
	    }
		lv_cn_1_0=ruleCn		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"cn",
        		lv_cn_1_0, 
        		"Cn");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getDnDnParserRuleCall_0_2_0()); 
	    }
		lv_dn_2_0=ruleDn		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"dn",
        		lv_dn_2_0, 
        		"Dn");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getAeAeParserRuleCall_0_3_0()); 
	    }
		lv_ae_3_0=ruleAe		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"ae",
        		lv_ae_3_0, 
        		"Ae");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getCeCeParserRuleCall_0_4_0()); 
	    }
		lv_ce_4_0=ruleCe		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"ce",
        		lv_ce_4_0, 
        		"Ce");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getDeDeParserRuleCall_0_5_0()); 
	    }
		lv_de_5_0=ruleDe		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"de",
        		lv_de_5_0, 
        		"De");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getCgCgParserRuleCall_0_6_0()); 
	    }
		lv_cg_6_0=ruleCg		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"cg",
        		lv_cg_6_0, 
        		"Cg");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEventAccess().getStStParserRuleCall_0_7_0()); 
	    }
		lv_st_7_0=ruleSt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventRule());
	        }
       		set(
       			$current, 
       			"st",
        		lv_st_7_0, 
        		"St");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		lv_cl_8_0=RULE_CL
		{
			newLeafNode(lv_cl_8_0, grammarAccess.getEventAccess().getClClTerminalRuleCall_0_8_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEventRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"cl",
        		lv_cl_8_0, 
        		"Cl");
	    }

)
))((
(
		lv_comment_9_0=RULE_COMMENT
		{
			newLeafNode(lv_comment_9_0, grammarAccess.getEventAccess().getCommentCOMMENTTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEventRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"comment",
        		lv_comment_9_0, 
        		"COMMENT");
	    }

)
)
    |this_EOL_10=RULE_EOL
    { 
    newLeafNode(this_EOL_10, grammarAccess.getEventAccess().getEOLTerminalRuleCall_1_1()); 
    }
))
;





// Entry rule entryRuleAn
entryRuleAn returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAnRule()); }
	 iv_ruleAn=ruleAn 
	 { $current=$iv_ruleAn.current; } 
	 EOF 
;

// Rule An
ruleAn returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='an' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getAnAccess().getAnKeyword_0());
    }
(
(
(
		lv_idNode_1_1=RULE_ID
		{
			newLeafNode(lv_idNode_1_1, grammarAccess.getAnAccess().getIdNodeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_1, 
        		"ID");
	    }

    |		lv_idNode_1_2=RULE_STRING
		{
			newLeafNode(lv_idNode_1_2, grammarAccess.getAnAccess().getIdNodeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_2, 
        		"STRING");
	    }

)

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAnAccess().getAttributesAttributesParserRuleCall_2_0()); 
	    }
		lv_attributes_2_0=ruleAttributes		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAnRule());
	        }
       		set(
       			$current, 
       			"attributes",
        		lv_attributes_2_0, 
        		"Attributes");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleCn
entryRuleCn returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCnRule()); }
	 iv_ruleCn=ruleCn 
	 { $current=$iv_ruleCn.current; } 
	 EOF 
;

// Rule Cn
ruleCn returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='cn' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCnAccess().getCnKeyword_0());
    }
(
(
(
		lv_idNode_1_1=RULE_ID
		{
			newLeafNode(lv_idNode_1_1, grammarAccess.getCnAccess().getIdNodeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_1, 
        		"ID");
	    }

    |		lv_idNode_1_2=RULE_STRING
		{
			newLeafNode(lv_idNode_1_2, grammarAccess.getCnAccess().getIdNodeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_2, 
        		"STRING");
	    }

)

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCnAccess().getAttributesAttributesParserRuleCall_2_0()); 
	    }
		lv_attributes_2_0=ruleAttributes		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCnRule());
	        }
       		set(
       			$current, 
       			"attributes",
        		lv_attributes_2_0, 
        		"Attributes");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleDn
entryRuleDn returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDnRule()); }
	 iv_ruleDn=ruleDn 
	 { $current=$iv_ruleDn.current; } 
	 EOF 
;

// Rule Dn
ruleDn returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='dn' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getDnAccess().getDnKeyword_0());
    }
(
(
(
		lv_idNode_1_1=RULE_ID
		{
			newLeafNode(lv_idNode_1_1, grammarAccess.getDnAccess().getIdNodeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_1, 
        		"ID");
	    }

    |		lv_idNode_1_2=RULE_STRING
		{
			newLeafNode(lv_idNode_1_2, grammarAccess.getDnAccess().getIdNodeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDnRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_2, 
        		"STRING");
	    }

)

)
))
;





// Entry rule entryRuleAe
entryRuleAe returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAeRule()); }
	 iv_ruleAe=ruleAe 
	 { $current=$iv_ruleAe.current; } 
	 EOF 
;

// Rule Ae
ruleAe returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='ae' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getAeAccess().getAeKeyword_0());
    }
(
(
(
		lv_idEdge_1_1=RULE_ID
		{
			newLeafNode(lv_idEdge_1_1, grammarAccess.getAeAccess().getIdEdgeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idEdge",
        		lv_idEdge_1_1, 
        		"ID");
	    }

    |		lv_idEdge_1_2=RULE_STRING
		{
			newLeafNode(lv_idEdge_1_2, grammarAccess.getAeAccess().getIdEdgeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idEdge",
        		lv_idEdge_1_2, 
        		"STRING");
	    }

)

)
)(
(
(
		lv_idNode1_2_1=RULE_ID
		{
			newLeafNode(lv_idNode1_2_1, grammarAccess.getAeAccess().getIdNode1IDTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode1",
        		lv_idNode1_2_1, 
        		"ID");
	    }

    |		lv_idNode1_2_2=RULE_STRING
		{
			newLeafNode(lv_idNode1_2_2, grammarAccess.getAeAccess().getIdNode1STRINGTerminalRuleCall_2_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode1",
        		lv_idNode1_2_2, 
        		"STRING");
	    }

)

)
)(
(
		lv_direction_3_0=RULE_DIRECTION
		{
			newLeafNode(lv_direction_3_0, grammarAccess.getAeAccess().getDirectionDIRECTIONTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"direction",
        		lv_direction_3_0, 
        		"DIRECTION");
	    }

)
)?(
(
(
		lv_idNode2_4_1=RULE_ID
		{
			newLeafNode(lv_idNode2_4_1, grammarAccess.getAeAccess().getIdNode2IDTerminalRuleCall_4_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode2",
        		lv_idNode2_4_1, 
        		"ID");
	    }

    |		lv_idNode2_4_2=RULE_STRING
		{
			newLeafNode(lv_idNode2_4_2, grammarAccess.getAeAccess().getIdNode2STRINGTerminalRuleCall_4_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode2",
        		lv_idNode2_4_2, 
        		"STRING");
	    }

)

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAeAccess().getAttributesAttributesParserRuleCall_5_0()); 
	    }
		lv_attributes_5_0=ruleAttributes		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAeRule());
	        }
       		set(
       			$current, 
       			"attributes",
        		lv_attributes_5_0, 
        		"Attributes");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleCe
entryRuleCe returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCeRule()); }
	 iv_ruleCe=ruleCe 
	 { $current=$iv_ruleCe.current; } 
	 EOF 
;

// Rule Ce
ruleCe returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='ce' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCeAccess().getCeKeyword_0());
    }
(
(
(
		lv_idNode_1_1=RULE_ID
		{
			newLeafNode(lv_idNode_1_1, grammarAccess.getCeAccess().getIdNodeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_1, 
        		"ID");
	    }

    |		lv_idNode_1_2=RULE_STRING
		{
			newLeafNode(lv_idNode_1_2, grammarAccess.getCeAccess().getIdNodeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idNode",
        		lv_idNode_1_2, 
        		"STRING");
	    }

)

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCeAccess().getAttributesAttributesParserRuleCall_2_0()); 
	    }
		lv_attributes_2_0=ruleAttributes		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCeRule());
	        }
       		set(
       			$current, 
       			"attributes",
        		lv_attributes_2_0, 
        		"Attributes");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleDe
entryRuleDe returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDeRule()); }
	 iv_ruleDe=ruleDe 
	 { $current=$iv_ruleDe.current; } 
	 EOF 
;

// Rule De
ruleDe returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='de' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getDeAccess().getDeKeyword_0());
    }
(
(
(
		lv_idEdge_1_1=RULE_ID
		{
			newLeafNode(lv_idEdge_1_1, grammarAccess.getDeAccess().getIdEdgeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idEdge",
        		lv_idEdge_1_1, 
        		"ID");
	    }

    |		lv_idEdge_1_2=RULE_STRING
		{
			newLeafNode(lv_idEdge_1_2, grammarAccess.getDeAccess().getIdEdgeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idEdge",
        		lv_idEdge_1_2, 
        		"STRING");
	    }

)

)
))
;





// Entry rule entryRuleCg
entryRuleCg returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCgRule()); }
	 iv_ruleCg=ruleCg 
	 { $current=$iv_ruleCg.current; } 
	 EOF 
;

// Rule Cg
ruleCg returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='cg' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCgAccess().getCgKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getCgAccess().getAttributesAttributesParserRuleCall_1_0()); 
	    }
		lv_attributes_1_0=ruleAttributes		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCgRule());
	        }
       		set(
       			$current, 
       			"attributes",
        		lv_attributes_1_0, 
        		"Attributes");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleSt
entryRuleSt returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStRule()); }
	 iv_ruleSt=ruleSt 
	 { $current=$iv_ruleSt.current; } 
	 EOF 
;

// Rule St
ruleSt returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='st' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getStAccess().getStKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getStAccess().getRealRealParserRuleCall_1_0()); 
	    }
		lv_real_1_0=ruleReal		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStRule());
	        }
       		set(
       			$current, 
       			"real",
        		lv_real_1_0, 
        		"Real");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleAttributes
entryRuleAttributes returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAttributesRule()); }
	 iv_ruleAttributes=ruleAttributes 
	 { $current=$iv_ruleAttributes.current; } 
	 EOF 
;

// Rule Attributes
ruleAttributes returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getAttributesAccess().getAttributesAction_0(),
            $current);
    }
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAttributesAccess().getAttributeAttributeParserRuleCall_1_0()); 
	    }
		lv_attribute_1_0=ruleAttribute		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAttributesRule());
	        }
       		add(
       			$current, 
       			"attribute",
        		lv_attribute_1_0, 
        		"Attribute");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	 iv_ruleAttribute=ruleAttribute 
	 { $current=$iv_ruleAttribute.current; } 
	 EOF 
;

// Rule Attribute
ruleAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((	otherlv_0='+' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getAttributeAccess().getPlusSignKeyword_0_0());
    }

    |	otherlv_1='-' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getAttributeAccess().getHyphenMinusKeyword_0_1());
    }
)?(
(
(
		lv_idAttribute_2_1=RULE_ID
		{
			newLeafNode(lv_idAttribute_2_1, grammarAccess.getAttributeAccess().getIdAttributeIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idAttribute",
        		lv_idAttribute_2_1, 
        		"ID");
	    }

    |		lv_idAttribute_2_2=RULE_STRING
		{
			newLeafNode(lv_idAttribute_2_2, grammarAccess.getAttributeAccess().getIdAttributeSTRINGTerminalRuleCall_1_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"idAttribute",
        		lv_idAttribute_2_2, 
        		"STRING");
	    }

)

)
)((
(
		lv_assign_3_0=RULE_ASSIGN
		{
			newLeafNode(lv_assign_3_0, grammarAccess.getAttributeAccess().getAssignASSIGNTerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"assign",
        		lv_assign_3_0, 
        		"ASSIGN");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAttributeAccess().getValueValueParserRuleCall_2_1_0()); 
	    }
		lv_value_4_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAttributeRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_4_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_5=',' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getAttributeAccess().getCommaKeyword_2_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getAttributeAccess().getOtherValuesValueParserRuleCall_2_2_1_0()); 
	    }
		lv_otherValues_6_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAttributeRule());
	        }
       		add(
       			$current, 
       			"otherValues",
        		lv_otherValues_6_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?)
;





// Entry rule entryRuleValue
entryRuleValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getValueRule()); }
	 iv_ruleValue=ruleValue 
	 { $current=$iv_ruleValue.current; } 
	 EOF 
;

// Rule Value
ruleValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_string_0_0=RULE_STRING
		{
			newLeafNode(lv_string_0_0, grammarAccess.getValueAccess().getStringSTRINGTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"string",
        		lv_string_0_0, 
        		"STRING");
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getRealRealParserRuleCall_1_0()); 
	    }
		lv_real_1_0=ruleReal		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getValueRule());
	        }
       		set(
       			$current, 
       			"real",
        		lv_real_1_0, 
        		"Real");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getArrayArrayParserRuleCall_2_0()); 
	    }
		lv_array_2_0=ruleArray		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getValueRule());
	        }
       		set(
       			$current, 
       			"array",
        		lv_array_2_0, 
        		"Array");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getMapMapParserRuleCall_3_0()); 
	    }
		lv_map_3_0=ruleMap		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getValueRule());
	        }
       		set(
       			$current, 
       			"map",
        		lv_map_3_0, 
        		"Map");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleArray
entryRuleArray returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getArrayRule()); }
	 iv_ruleArray=ruleArray 
	 { $current=$iv_ruleArray.current; } 
	 EOF 
;

// Rule Array
ruleArray returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getArrayAccess().getArrayAction_0(),
            $current);
    }
)	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getArrayAccess().getLeftCurlyBracketKeyword_1());
    }
((
(
		{ 
	        newCompositeNode(grammarAccess.getArrayAccess().getValueValueParserRuleCall_2_0_0()); 
	    }
		lv_value_2_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArrayRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_3=',' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getArrayAccess().getCommaKeyword_2_1_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getArrayAccess().getOtherValuesValueParserRuleCall_2_1_1_0()); 
	    }
		lv_otherValues_4_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArrayRule());
	        }
       		add(
       			$current, 
       			"otherValues",
        		lv_otherValues_4_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getArrayAccess().getRightCurlyBracketKeyword_3());
    }
)
;





// Entry rule entryRuleMap
entryRuleMap returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMapRule()); }
	 iv_ruleMap=ruleMap 
	 { $current=$iv_ruleMap.current; } 
	 EOF 
;

// Rule Map
ruleMap returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='[' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getMapAccess().getLeftSquareBracketKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMapAccess().getMappingMappingParserRuleCall_1_0()); 
	    }
		lv_mapping_1_0=ruleMapping		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMapRule());
	        }
       		set(
       			$current, 
       			"mapping",
        		lv_mapping_1_0, 
        		"Mapping");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getMapAccess().getCommaKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMapAccess().getOtherMappingMappingParserRuleCall_2_1_0()); 
	    }
		lv_otherMapping_3_0=ruleMapping		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMapRule());
	        }
       		add(
       			$current, 
       			"otherMapping",
        		lv_otherMapping_3_0, 
        		"Mapping");
	        afterParserOrEnumRuleCall();
	    }

)
))*	otherlv_4=']' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getMapAccess().getRightSquareBracketKeyword_3());
    }
)
;





// Entry rule entryRuleMapping
entryRuleMapping returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMappingRule()); }
	 iv_ruleMapping=ruleMapping 
	 { $current=$iv_ruleMapping.current; } 
	 EOF 
;

// Rule Mapping
ruleMapping returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
(
		lv_id_0_1=RULE_ID
		{
			newLeafNode(lv_id_0_1, grammarAccess.getMappingAccess().getIdIDTerminalRuleCall_0_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMappingRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"id",
        		lv_id_0_1, 
        		"ID");
	    }

    |		lv_id_0_2=RULE_STRING
		{
			newLeafNode(lv_id_0_2, grammarAccess.getMappingAccess().getIdSTRINGTerminalRuleCall_0_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMappingRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"id",
        		lv_id_0_2, 
        		"STRING");
	    }

)

)
)(
(
		lv_assign_1_0=RULE_ASSIGN
		{
			newLeafNode(lv_assign_1_0, grammarAccess.getMappingAccess().getAssignASSIGNTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMappingRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"assign",
        		lv_assign_1_0, 
        		"ASSIGN");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getMappingAccess().getValueValueParserRuleCall_2_0()); 
	    }
		lv_value_2_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMappingRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleReal
entryRuleReal returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRealRule()); } 
	 iv_ruleReal=ruleReal 
	 { $current=$iv_ruleReal.current.getText(); }  
	 EOF 
;

// Rule Real
ruleReal returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_INT_0=RULE_INT    {
		$current.merge(this_INT_0);
    }

    { 
    newLeafNode(this_INT_0, grammarAccess.getRealAccess().getINTTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getRealAccess().getFullStopKeyword_1_0()); 
    }
(
	kw='0' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getRealAccess().getDigitZeroKeyword_1_1()); 
    }
)*    this_INT_3=RULE_INT    {
		$current.merge(this_INT_3);
    }

    { 
    newLeafNode(this_INT_3, grammarAccess.getRealAccess().getINTTerminalRuleCall_1_2()); 
    }
))
    ;





RULE_MAGIC : ('DGS003'|'DGS004');

RULE_CL : 'cl';

RULE_DIRECTION : ('<'|'>');

RULE_ASSIGN : ('='|':');

RULE_COMMENT : '#' ( options {greedy=false;} : . )*RULE_EOL;

RULE_INT : ('0'|'1'..'9' ('0'..'9')*);

RULE_STRING : '"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"';

RULE_ID : ('a'..'z'|'A'..'Z'|'0'..'9')+;

RULE_EOL : '\r'? '\n';

RULE_WS : (' '|'\t')+;


