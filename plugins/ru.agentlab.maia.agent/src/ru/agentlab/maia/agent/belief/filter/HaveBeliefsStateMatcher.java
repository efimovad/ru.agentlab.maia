package ru.agentlab.maia.agent.belief.filter;

import java.util.Map;

import javax.inject.Inject;

import de.derivo.sparqldlapi.Query;
import de.derivo.sparqldlapi.QueryEngine;
import de.derivo.sparqldlapi.QueryResult;
import ru.agentlab.maia.agent.filter.IPlanStateFilter;

public class HaveBeliefsStateMatcher implements IPlanStateFilter {

	Query query;

	@Inject
	QueryEngine engine;

	public HaveBeliefsStateMatcher(Query query) {
		this.query = query;
	}

	// @PostConstruct
	// public void init(IBeliefBase bb){
	// engine = bb.getQueryEngine();
	// }

	@Override
	public boolean matches(Object item, Map<String, Object> values) {
		try {
			QueryResult result = engine.execute(query);
			if (query.isSelect()) {
				values.put(QueryResult.class.getName(), result);
			}
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
