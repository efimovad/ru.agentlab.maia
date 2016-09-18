package ru.agentlab.maia.event;

import java.util.Map;

@SuppressWarnings("all")
public interface IMaiaEvent {
  public abstract String getTopic();
  
  public abstract Map<String, Object> getData();
}
