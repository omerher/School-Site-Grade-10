<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="School_Site_Grade_10.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Movie Reviews</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>
        
        <div class="curved">
            <h1>Movie Reviews</h1>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160"><path fill="#1f2833" fill-opacity="1" d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
        </div>

        <div class="home-featured container">
            <div class="container" style="width: 60%; float: left;">
                <h1>Today's Featured Movie: <i>Avengers Endgame</i></h1>
                <div id="home-featured-text">After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. 
                    With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos's actions and undo the chaos to the universe,
                    no matter what consequences may be in store, and no matter who they face...
                </div>
                <br>
                <p style="font-size: 0.5rem;">Taken from Google</p>
            </div>

            <div style="width: 40%; float: left;" class="container">
                <a href="https://www.imdb.com/title/tt4154796/" target="_blank"><img src="imgs/endgame-poster.jpg" id="endgame-poster"/></a>
            </div>
        </div>
        
        
        <div class="home-bottom container">
            <div class="container">
                <h1>Sort Movies by Genre</h1>
                <ul>
                    <a href="https://www.imdb.com/search/title/?genres=action&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_1" target="blank_">Action</a> <br>
                    <a href="https://www.imdb.com/search/title?genres=drama&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_8" target="target_">Drama</a> <br>
                    <a href="https://www.imdb.com/search/title?genres=comedy&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_5" target="target_">Comedy</a> <br>
                    <a href="https://www.imdb.com/search/title?genres=sci-fi&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_18" target="target_">Sci-Fi</a> <br>
                    <a href="https://www.imdb.com/search/title?genres=horror&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_13" target="target_">Horror</a> <br>
                    <a href="https://www.imdb.com/search/title?genres=animation&title_type=feature&explore=genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=facfbd0c-6f3d-4c05-9348-22eebd58852e&pf_rd_r=BPQ19JE0G6NY10PZTZJV&pf_rd_s=center-6&pf_rd_t=15051&pf_rd_i=genre&ref_=ft_gnr_mvpop_3" target="target_">Animation</a>
                </ul>
            </div>

            <div style="top: 1rem; overflow: visible;" class="container" id="home-top-movies">
                <h1>Top Movies of All Time (by Rotten Tomatoes)</h1>
                <a href="https://www.imdb.com/title/tt1825683/" target="blank_">Black Panther</a> <br>
                <a href="https://www.imdb.com/title/tt4154796/" target="blank_">Avengers: Endgame</a> <br>
                <a href="https://www.imdb.com/title/tt6857112/" target="blank_">Us</a> <br>
                <a href="https://www.imdb.com/title/tt1979376/" target="blank_">Toy Story 4</a> <br>
                <a href="https://www.imdb.com/title/tt4925292/" target="blank_">Lady Bird</a> <br>
                <a href="https://www.imdb.com/title/tt4912910/" target="blank_">Mission Impossible - Fallout</a> <br>
            </div>
        </div>
</asp:Content>
