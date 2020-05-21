class musicItem {
  String image,artistName, songName, maxTime;
  musicItem(this.image,this.artistName, this.songName, this.maxTime);
}

List<musicItem> musicList = [
  new musicItem('img/avengers.jpg','KYLE LAMB', "Avengers Theme", "2:36"),
  new musicItem('img/shapeOfYou.jpg','ED SHEERAN', 'Shape Of You', '3:39'),
  new musicItem('img/seeYouAgain.jpg','WIZ KHALIFA', 'See You Again', '3:25'),
  new musicItem('img/troyeSivan.jpg','OSCAR HAYES', 'The Dawn', '3:02'),
  new musicItem('img/girlsLikeYou.jpg','MAROON 5', 'Girls Like You', '2:45'),
  new musicItem('img/despacito.jpg','LUIS FONSI', 'Despacito', '4:06'),
  new musicItem('img/attention.jpg','CHARLIE PUTH', 'Attention', "3:35"),
  new musicItem('img/24KMagic.jpg','BRUNO MARS', '24K Magic', '4:05')
];

int selectedMusic = 3;
