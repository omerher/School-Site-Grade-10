<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="genres.aspx.cs" Inherits="School_Site_Grade_10.genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Movie Reviews</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
    <div id="cover-div"></div>
        
    <div class="curved">
        <h1>Find Movies by Genre</h1>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160"><path fill="#1f2833" fill-opacity="1" d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
    </div>
        
    <div class="genres-container">
        <div class="genre-container">
        <h1>Action</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt2488496" target="blank"><img src="imgs\star-wars-vii-poster.jpg" alt="Star Wars VII Poster"></a><br>
            <span>Star Wars: Episode VII - The Force Awakens (2015)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt4154796" target="blank"><img src="imgs\endgame-poster.jpg" alt="Avengers Endgame Poster"></a><br>
            <span>Avengers: Endgame (2019)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt0499549" target="blank"><img src="imgs\avatar-poster.jpg" alt="Avatar Poster"></a><br>
            <span>Avatar (2009)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt0369610" target="blank"><img src="imgs\jurassic-world-poster.jpg" alt="Jurassic World Poster"></a><br>
            <span>Jurassic World (2015)</span>
        </div>
        </div>
        <div class="genre-container">
        <h1>Drama</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt0108052" target="blank"><img src="imgs\schindlers-list-poster.jpg" alt="Schindler's List Poster"></a><br>
            <span>Schindler's List (1993)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt1895587" target="blank"><img src="imgs\spotlight-poster.jpg" alt="Spotlight Poster"></a><br>
            <span>Spotlight (2015)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt6155172" target="blank"><img src="imgs\roma-poster.jpg" alt="Roma Poster"></a><br>
            <span>Roma (2018)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt2396589" target="blank"><img src="imgs\mudbound-poster.jpg" alt="Mudbound Poster"></a><br>
            <span>Mudbound (2017)</span>
        </div>
        </div>
        <div class="genre-container">
        <h1>Comedy</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt1489889" target="blank"><img src="imgs\center-intelligence-poster.jpg" alt="Center Intelligence Poster"></a><br>
            <span>Center Intelligence (2016)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt1431045" target="blank"><img src="imgs\deadpool-poster.jpg" alt="Deadpool Poster"></a><br>
            <span>Deadpool (2016)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt0838283" target="blank"><img src="imgs\step-brothers-poster.jpg" alt="Step Brothers Poster"></a><br>
            <span>Step Brothers (2008)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt2584384" target="blank"><img src="imgs\jojo-rabbit-poster.jpg" alt="Jojo Rabbit Poster"></a><br>
            <span>Jojo Rabbit (2019)</span>
        </div>
        </div>
    </div>

    <div class="genres-container" style="top: 5rem;">
        <div class="genre-container">
        <h1>Sci-Fi</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt1375666" target="blank"><img src="imgs\inception-poster.jpg" alt="Inception Poster"></a><br>
            <span>Inception (2010)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt0816692" target="blank"><img src="imgs\interstellar-poster.jpg" alt="Interstellar Poster"></a><br>
            <span>Interstellar (2014)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt1677720" target="blank"><img src="imgs\ready-player-one-poster.jpg" alt="Ready Player One Poster"></a><br>
            <span>Ready Player One (2018)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt0133093" target="blank"><img src="imgs\matrix-poster.jpg" alt="Matrix Poster"></a><br>
            <span>The Matrix (1999)</span>
        </div>
        </div>
        <div class="genre-container">
        <h1>Horror</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt1396484" target="blank"><img src="imgs\it-poster.jpg" alt="It Poster"></a><br>
            <span>It (2017)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt6857112" target="blank"><img src="imgs\us-poster.jpg" alt="Us Poster"></a><br>
            <span>Us (2019)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt1457767" target="blank"><img src="imgs\the-conjuring-poster.jpg" alt="The Conjuring Poster"></a><br>
            <span>The Conjuring (2013)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt0387564" target="blank"><img src="imgs\saw-poster.jpg" alt="Saw Poster"></a><br>
            <span>Saw (2004)</span>
        </div>
        </div>
        <div class="genre-container">
        <h1>Animation</h1>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt3606756" target="blank"><img src="imgs\incredibles-2-poster.jpg" alt="Incredibles 2 Poster"></a><br>
            <span>Incredibles 2 (2018)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt2277860" target="blank"><img src="imgs\finding-dory-poster.jpg" alt="Finding Dory Poster"></a><br>
            <span>Finding Dory (2016)</span>
        </div>
        <div class="genre-movie left">
            <a href="https://www.imdb.com/title/tt0435761" target="blank"><img src="imgs\toy-story-3-poster.jpg" alt="Toy Story 3 Poster"></a><br>
            <span>Toy Story 3 (2010)</span>
        </div>
        <div class="genre-movie right">
            <a href="https://www.imdb.com/title/tt2294629" target="blank"><img src="imgs\frozen-poster.jpg" alt="Frozen Poster"></a><br>
            <span>Frozen (2013)</span>
        </div>
        </div>
    </div>
</asp:Content>