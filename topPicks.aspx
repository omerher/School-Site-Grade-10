<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="topPicks.aspx.cs" Inherits="School_Site_Grade_10.topPicks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Top Picks</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
    <div id="cover-div"></div>

    <div class="curved">
      <h1>Top Movies</h1>
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160">
        <path
          fill="#1f2833"
          fill-opacity="1"
          d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"
        ></path>
      </svg>
    </div>

    <div class="top-picks-left container">
      <div class="container" style="width: 60%; padding: 2%">
        <h1 id="top-picks-title">
          Click on one of the movies to learn more about them
        </h1>
        <div id="top-picks-text"></div>
      </div>

      <div style="width: 40%;" class="container">
        <a href="#" target="blank" id="poster-link"
          ><img id="top-picks-poster"
        /></a>
      </div>
    </div>

    <div class="top-picks-container">
      <div class="top-picks" id="black-panther">
        <h3>Black Panther</h3>
        <img src="imgs/black-panther-poster.jpg" />
      </div>

      <div class="top-picks" id="endgame">
        <img src="imgs/endgame-poster.jpg" />
        <h3>Avengers: Endgame</h3>
      </div>

      <div class="top-picks" id="us">
        <h3>Us</h3>
        <img src="imgs/us-poster.jpg" />
      </div>

      <div class="top-picks" id="toy-story-4">
        <img src="imgs/toy-story-4-poster.jpg" />
        <h3>Toy Story 4</h3>
      </div>

      <div class="top-picks" id="lady-bird">
        <h3>Lady Bird</h3>
        <img src="imgs/lady-bird-poster.jpg" />
      </div>

      <div class="top-picks" id="fallout">
        <img src="imgs/fallout-poster.jpg" />
        <h3>Mission: Impossible - Fallout</h3>
      </div>
    </div>
</asp:Content>
