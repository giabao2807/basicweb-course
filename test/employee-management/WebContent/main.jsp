<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="favicon.ico" type="image/icon" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Handlee&family=Sofia&display=swap"
	rel="stylesheet" />
</head>
<body>
	<div id="gallery">
		<div class="gallery">
			<div class="one big-script">
				<p>Today is hard, tomorrow will be worse, but the after tomorrow
					will be sunshine ✨</p>
			</div>
			
			<div class="two small-image">
				<img src="./images/cute-1.jpeg" />
			</div>
			<div class="three small-image">
				<img src="./images/bao5.JPG" />
			</div>
			<div class="four horizon-image">
				<img src="./images/cute-2.jpeg" />
			</div>
			<div class="five big-image">
				<img src="./images/bao3.jpeg" />
			</div>
			<div class="six small-script">
				<p>If you don’t walk today, you’ll have to run tomorrow. And...
					I'm running 😭</p>
			</div>
			<div class="seven vertical-image">
				<img src="./images/cute-3.jpeg" />
			</div>
			<div class="eight small-image">
				<img src="./images/cute-6.jpeg" />
			</div>
		</div>
	</div>
</body>
<style>
:root { -
	-pink-color: #44a9ce; -
	-pink-icon: #a1c9f1; -
	-pink-border: #76c9e8; -
	-pink-shadow: #84d4c8; -
	-white-shadow: #b2d9ea;
}

body {
	background-color: #ace5f9;
	color: var(- -pink-color);
	font-family: Sofia, cursive;
	margin: 0;
	padding-top: 5px;
	text-align: center;
}

* {
	box-sizing: border-box;
}

#gallery .gallery {
	display: grid;
	grid-template-columns: repeat(6, 200px);
	grid-template-rows: repeat(5, 200px);
	grid-gap: 10px;
	justify-content: center;
	margin: 5px auto;
}

#gallery .gallery p {
	display: flex;
	align-items: center;
	justify-content: center;
	align-content: center;
	background-color: #fff;
	box-shadow: 0 0 8px 0 var(- -white-shadow);
}

#gallery .gallery .small-script p {
	font-size: 14px;
	width: 200px;
	height: 200px;
	padding: 10px;
}

#gallery .gallery .horizon-script p {
	font-family: "Dancing Script", cursive;
	font-size: 50px;
	width: 410px;
	height: 200px;
	padding: 10px;
}

#gallery .gallery .big-script p {
	font-family: "Dancing Script", cursive;
	font-size: 50px;
	width: 410px;
	height: 410px;
	padding: 20px;
}

#gallery .gallery img {
	object-fit: cover;
	box-shadow: 0 0 8px 0 var(- -white-shadow);
}

#gallery .gallery .small-image img {
	width: 200px;
	height: 200px;
}

#gallery .gallery .horizon-image img {
	width: 410px;
	height: 200px;
}

#gallery .gallery .vertical-image img {
	width: 200px;
	height: 410px;
}

#gallery .gallery .big-image img {
	width: 410px;
	height: 410px;
}

#gallery .gallery .one {
	grid-row: 1/3;
	grid-column: 1/3;
}

#gallery .gallery .two {
	grid-row: 1/2;
	grid-column: 3/4;
}

#gallery .gallery .three {
	grid-row: 1/2;
	grid-column: 4/5;
}

#gallery .gallery .four {
	grid-row: 1/2;
	grid-column: 5/7;
}

#gallery .gallery .five {
	grid-row: 2/4;
	grid-column: 3/5;
}

#gallery .gallery .six {
	grid-row: 2/5;
	grid-column: 5/6;
}

#gallery .gallery .seven {
	grid-row: 2/5;
	grid-column: 6/7;
}

#gallery .gallery .eight {
	grid-row: 3/4;
	grid-column: 1/2;
}

@media ( max-width : 1024px) {
	#gallery .gallery {
		grid-template-columns: repeat(4, 200px);
		grid-template-rows: repeat(8, 200px);
		grid-gap: 5px;
	}
	#gallery .gallery .small-script p {
		font-size: 12px;
	}
	#gallery .gallery .horizon-script p {
		font-size: 40px;
		width: 405px;
	}
	#gallery .gallery .big-script p {
		font-size: 40px;
		width: 405px;
		height: 405px;
	}
	#gallery .gallery .horizon-image img {
		width: 405px;
	}
	#gallery .gallery .vertical-image img {
		height: 410px;
	}
	#gallery .gallery .big-image img {
		width: 405px;
		height: 405px;
	}
	#gallery .gallery .one {
		grid-row: 1/3;
		grid-column: 1/3;
	}
	#gallery .gallery .two {
		grid-row: 1/2;
		grid-column: 3/4;
	}
	#gallery .gallery .three {
		grid-row: 1/2;
		grid-column: 4/5;
	}
	#gallery .gallery .four {
		grid-row: 2/3;
		grid-column: 3/5;
	}
	#gallery .gallery .five {
		grid-row: 3/5;
		grid-column: 1/3;
	}
	#gallery .gallery .six {
		grid-row: 3/4;
		grid-column: 3/4;
	}
	#gallery .gallery .seven {
		grid-row: 3/5;
		grid-column: 4/5;
	}
	#gallery .gallery .eight {
		grid-row: 4/5;
		grid-column: 3/4;
	}
}

@media ( max-width : 768px) {
	#gallery .gallery {
		grid-template-columns: repeat(4, 150px);
		grid-template-rows: repeat(8, 150px);
	}
	#gallery .gallery .small-script p {
		font-size: 10px;
		width: 150px;
		height: 150px;
	}
	#gallery .gallery .horizon-script p {
		font-size: 30px;
		width: 305px;
		height: 150px;
	}
	#gallery .gallery .big-script p {
		font-size: 30px;
		width: 305px;
		height: 305px;
	}
	#gallery .gallery .small-image img {
		width: 150px;
		height: 150px;
	}
	#gallery .gallery .horizon-image img {
		width: 305px;
		height: 150px;
	}
	#gallery .gallery .vertical-image img {
		width: 150px;
		height: 305px;
	}
	#gallery .gallery .big-image img {
		width: 305px;
		height: 305px;
	}
}

@media ( max-width : 426px) {
	#gallery .gallery {
		grid-template-columns: repeat(3, 100px);
		grid-template-rows: repeat(9, 100px);
	}
	#gallery .gallery .small-script p {
		font-size: 10px;
		width: 100px;
		height: 100px;
	}
	#gallery .gallery .horizon-script p {
		font-size: 30px;
		width: 205px;
		height: 100px;
	}
	#gallery .gallery .big-script p {
		font-size: 30px;
		width: 205px;
		height: 205px;
	}
	#gallery .gallery .small-image img {
		width: 100px;
		height: 100px;
	}
	#gallery .gallery .horizon-image img {
		width: 205px;
		height: 100px;
	}
	#gallery .gallery .vertical-image img {
		width: 100px;
		height: 205px;
	}
	#gallery .gallery .big-image img {
		width: 205px;
		height: 205px;
	}
	#gallery .gallery .one {
		grid-row: 1/3;
		grid-column: 1/3;
	}
	#gallery .gallery .two {
		grid-row: 1/2;
		grid-column: 3/4;
	}
	#gallery .gallery .three {
		grid-row: 2/3;
		grid-column: 3/4;
	}
	#gallery .gallery .four {
		grid-row: 3/4;
		grid-column: 1/3;
	}
	#gallery .gallery .five {
		grid-row: 4/6;
		grid-column: 1/3;
	}
	#gallery .gallery .six {
		display: none;
	}
	#gallery .gallery .seven {
		grid-row: 3/5;
		grid-column: 3/4;
	}
	#gallery .gallery .eight {
		grid-row: 5/6;
		grid-column: 3/4;
	}
}

button, p {
	display: inline-block;
	border: none;
	margin: 0;
	text-decoration: none;
	padding: 0;
	background: 0 0;
	border-radius: 0;
	-webkit-appearance: none;
	-moz-appearance: none;
	overflow: hidden;
	user-select: none;
	-webkit-tap-highlight-color: transparent;
}
</style>
</html>
