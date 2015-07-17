package com.myself.finance.tag;

import org.sitemesh.SiteMeshContext;
import org.sitemesh.content.ContentProperty;
import org.sitemesh.content.tagrules.TagRuleBundle;
import org.sitemesh.content.tagrules.html.ExportTagToContentRule;
import org.sitemesh.tagprocessor.State;

public class JscriptTagRuleBundle implements TagRuleBundle {

	public void cleanUp(State state, ContentProperty contentProperty,
			SiteMeshContext siteMeshContext) {
		
	}

	public void install(State state, ContentProperty contentProperty,
			SiteMeshContext siteMeshContext) {
		state.addRule("jscript", new ExportTagToContentRule(
				siteMeshContext, contentProperty.getChild("jscript"), false));
	}
}
