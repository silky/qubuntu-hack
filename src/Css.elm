module Css exposing (..)

css = """
h2 {
  font-weight: normal;
  font-size: 40px;
  }

div.languages {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
  }

h3 {
  font-weight: normal;
  }

h2 small {
  font-size: 12px;
  margin-left: 10px;
  color: #919191;
  }

body {
  border: 0;
  margin: 0;
  background: #4f194b;
  font-family: Ubuntu;
  font-size: 20px;
  color: white;
}

div.header {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  background: #3d223d;
  padding: 5px;
  padding-left: 20px;
  margin-bottom: 100px;
  }

div.user-image {
  background: #562353;
  border-radius: 300px;
  border: solid 10px #562353;
  margin: 20px;
  padding: 20px;
  }

div.user-image img {
  width: 100px;
}

div.login {
  }

div.login input[type="password"]{
  border: solid 2px #eaeaea;
  background: #3d223d;
  padding: 5px;
  width: 300px;
  border-radius: 3px;
  color: white;
  font-size: 20px;
  margin-top: 10px;
  }

div.user-info {
  display: flex;
  flex-direction: column;
  color: white;
  align-items: center;
  }

div.footer {
  margin-top: 100px;
  display: flex;
  flex-direction: column;
  align-items: center;
  }

div.lang {
  cursor: pointer;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 20px;
  margin: 5px;
  font-family: "Ubuntu Mono";
  border: solid 2px #562353;
  background: #562353;
  border-radius: 50px;
  }

div.lang:hover {
  border: solid 2px orange;
  }

div.lang img {
  width: 80px;
  }

div.lang div.i {
  padding: 10px;
  background: #eaeaea;
  margin: 10px;
  border-radius: 100px;
  }

div.lang-list {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
  width: 500px;
  }

div.the-net {
  margin: 20px;
  display: flex;
  align-items: column;
  justify-content: flex-end;
  }

div.the-net a {
  color: #919191;
  text-decoration: none;
  }

div.hack-time {
  position: absolute;
  font-size: 50px;
  background: crimson;
  padding: 45px;
  padding-left: 120px;
  left: -100px;
  border-radius: 200px;
  }

p.hack-warning {
  font-size: 20px;
  }
"""


