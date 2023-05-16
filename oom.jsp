<%@ page import="java.util.*" %>  

Cause OutOfMemory

<%

List<byte[]> list = new ArrayList<>();
			int index = 1;
			while (true) {
					// 1MB each loop, 1 x 1024 x 1024 = 1048576
					byte[] b = new byte[1048576];
					list.add(b);
					Runtime rt = Runtime.getRuntime();
					out.println("free memory: " + rt.freeMemory() + "<br>");
			}

 %>