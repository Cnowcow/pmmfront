import React from "react";
import {Link} from "react-router-dom";
import "./header.css"

const Header = () => {
  return (
    <header className="header">
      <div className="header-container">
        <Link to="/" className="logo">PMM</Link>
        <nav>
          <ul>
            <li><Link to="/">홈</Link></li>
            {/*<li><Link to="/map">지도</Link></li>*/}
            <li><Link to="/group1">설문 1</Link></li>
            {/*<li><Link to="/group2">설문 2</Link></li>*/}
            {/*<li><Link to="/group3">설문 3</Link></li>*/}
          </ul>
        </nav>
      </div>
    </header>
  )
}

export default Header;