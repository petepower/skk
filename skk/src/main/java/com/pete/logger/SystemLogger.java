package com.pete.logger;

import org.apache.log4j.Logger;

public class SystemLogger extends Logger{
	
	protected SystemLogger(String name) {
		super(name);
	}

	public void info(String module, String block, String infos) {
		info("["+module+"]-->["+block+"]-->["+infos+"]");
	}
	
	public void info(String infos) {
		info(infos);
	}
	
	public void debug(String module, String block, String infos) {
		debug("["+module+"]-->["+block+"]-->["+infos+"]");
	}
	
	public void error(String module, String block, String infos) {
		error("["+module+"]-->["+block+"]-->["+infos+"]");
	}
	
	
}
