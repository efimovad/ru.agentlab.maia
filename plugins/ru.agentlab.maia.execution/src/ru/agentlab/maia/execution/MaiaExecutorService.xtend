package ru.agentlab.maia.execution

import java.util.concurrent.ExecutorService
import java.util.concurrent.atomic.AtomicBoolean
import javax.inject.Inject
import ru.agentlab.maia.execution.tree.IExecutionNode

class MaiaExecutorService implements IMaiaExecutorService {

	@Inject
	ExecutorService executor

	@Inject
	IExecutionNode node

	var isActive = new AtomicBoolean(false)

	override void start() {
		isActive.set(true)
		executor.submit(new Runnable {
			override run() {
				if (isActive.get) {
					node.run
					executor.submit(this)
				}
			}
		})
	}

	override void stop() {
		isActive.set(false)
	}

}