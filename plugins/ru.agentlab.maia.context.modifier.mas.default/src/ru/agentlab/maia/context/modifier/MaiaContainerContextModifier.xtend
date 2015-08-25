package ru.agentlab.maia.context.modifier

import javax.annotation.PostConstruct
import javax.inject.Inject
import ru.agentlab.maia.context.IMaiaContext
import ru.agentlab.maia.context.IMaiaServiceDeployer
import ru.agentlab.maia.execution.IMaiaExecutorService
import ru.agentlab.maia.execution.MaiaExecutorService
import ru.agentlab.maia.execution.scheduler.sequence.SequenceContextScheduler
import ru.agentlab.maia.execution.tree.IExecutionNode

class MaiaContainerContextModifier {

	@Inject
	IMaiaContext context

	@PostConstruct
	def void setup() {
		context => [
			set(IMaiaContext.KEY_TYPE, "container")
			get(IMaiaServiceDeployer) => [
				deploy(SequenceContextScheduler, IExecutionNode)
				deploy(MaiaExecutorService, IMaiaExecutorService)
			]
		]
	}
}