<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>List of Artist</title>
	<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Artists</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<input type="button" value="Add Artist" 
				   onclick="window.location.href='artists/new'; return false;"
				   class="add-button" />
			<table>
				<tr>
					<th>Username</th>
					<th>Name</th>
					<th>Bio</th>
					<th>Location</th>
					<th>Instruments</th>
					<th>Action</th>
				</tr>
				<c:forEach var="tempArtist" items="${artists}">
					<c:url var="showLink" value="/artists/show">
						<c:param name="artistId" value="${tempArtist.id}"></c:param>
					</c:url>
					<c:url var="updateLink" value="/artists/edit">
						<c:param name="artistId" value="${tempArtist.id}"></c:param>
					</c:url>
					<tr>
						<td> <a href="${showLink}">${tempArtist.getUsername()}</a> </td>
						<td> ${tempArtist.getName()} </td>
						<td> ${tempArtist.getBio()} </td>
						<td> ${tempArtist.getLocation()} </td>
						<td> ${tempArtist.getInstruments()} </td>
						<td>
							<a href="${updateLink}">Update</a>
							|
							<form action="artists/delete" method="POST">
								<input name="id" value="${tempArtist.getId()}" type="hidden" />
								<input type="submit" value="Delete" class="delete" onclick="if(!(confirm('Are you sure you want to delete this artist?'))) return false" />
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>

</html>