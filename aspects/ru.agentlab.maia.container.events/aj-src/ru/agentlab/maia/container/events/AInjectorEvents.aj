package ru.agentlab.maia.container.events;

import ru.agentlab.maia.container.aspect.AInjector;

public aspect AInjectorEvents extends AInjector {

	// before(IMaiaContextFactory factory, IMaiaContext parent, String name) :
	// onCreateChildContext(factory, parent, name) {
	// System.err.println("Before createChild Context");
	// }
	//
	// after(IMaiaContext parent, String name) returning:
	// onCreateChildContext(*, parent, name) {
	// System.err.println("Context [" + parent + "] add new child: [" + name +
	// "] context");
	// }

}
