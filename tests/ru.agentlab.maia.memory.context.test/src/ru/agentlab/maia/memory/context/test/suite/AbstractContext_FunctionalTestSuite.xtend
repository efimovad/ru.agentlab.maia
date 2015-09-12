package ru.agentlab.maia.memory.context.test.suite

import org.junit.runner.RunWith
import org.junit.runners.Parameterized
import org.junit.runners.Suite.SuiteClasses
import ru.agentlab.maia.memory.context.test.AbstractContext_GetByClass_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetByName_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetKeySet_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetLocalByClass_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetLocalByName_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetParent_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_GetUuid_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_RemoveByClass_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_RemoveByName_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_SetByClass_FunctionalTests
import ru.agentlab.maia.memory.context.test.AbstractContext_SetByName_FunctionalTests

@RunWith(Parameterized)
@SuiteClasses(#[
	AbstractContext_GetByClass_FunctionalTests,
	AbstractContext_GetByName_FunctionalTests,
	AbstractContext_GetKeySet_FunctionalTests,
	AbstractContext_GetLocalByClass_FunctionalTests,
	AbstractContext_GetLocalByName_FunctionalTests,
	AbstractContext_GetParent_FunctionalTests,
	AbstractContext_GetUuid_FunctionalTests,
	AbstractContext_RemoveByClass_FunctionalTests,
	AbstractContext_RemoveByName_FunctionalTests,
	AbstractContext_SetByClass_FunctionalTests,
	AbstractContext_SetByName_FunctionalTests
])
abstract class AbstractContext_FunctionalTestSuite {
}