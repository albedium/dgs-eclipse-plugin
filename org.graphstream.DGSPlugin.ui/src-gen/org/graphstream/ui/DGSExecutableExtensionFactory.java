/*
 * generated by Xtext
 */
package org.graphstream.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class DGSExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return org.graphstream.ui.internal.DGSActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return org.graphstream.ui.internal.DGSActivator.getInstance().getInjector("org.graphstream.DGS");
	}
	
}
