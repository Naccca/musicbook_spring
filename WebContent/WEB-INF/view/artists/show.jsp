<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>${artist.getName()} - Artist</title>
	<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>${artist.getName()}</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<p>Id: ${artist.getId()}</p>
			<p>Username: ${artist.getUsername()}</p>
			<p>Name: ${artist.getName()}</p>
			<p>Bio: ${artist.getBio()}</p>
			<p>Location: ${artist.getLocation()}</p>
			<p>Instruments: ${artist.getInstruments()}</p>
			<p>Created at: ${artist.getCreated_at()}</p>
			<p>Updated at: ${artist.getUpdated_at()}</p>
			<p>
				<a href="${pageContext.request.contextPath}/artists">Back to List</a>
			</p>
		</div>
	</div>
</body>
</html>