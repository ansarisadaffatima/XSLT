package com.transform.routes;

import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;

@Component
public class XMLTransformRoute extends RouteBuilder {

	@Override
	public void configure() throws Exception {
		from("file:input").to("xslt:rental.xslt").to("file:output");
	}

}
