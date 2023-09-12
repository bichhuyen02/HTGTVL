
import { useContext, useEffect, useState } from "react";
import { Badge, Button, Col, Container, Form, Nav, Navbar, NavDropdown, Row } from "react-bootstrap";
import { Link, useNavigate } from "react-router-dom";
import { MyCartContext, MyUserContext } from "../App";
import Apis, { endpoints } from "../configs/Apis";
import MySpinner from "./MySpinner";

const Header = () => {
  const [user, dispatch] = useContext(MyUserContext);

  const logout = () => {
    dispatch({
        "type": "logout"
    })
}

  return (
    <>
      <Navbar style={{ background: 'linear-gradient( #5567C9, #C7D7FB)', color: '#f8fafc' }} data-bs-theme="dark">
        <Container>
          <Navbar.Brand href="#home">&#128178;JOB24H-WEBSITE</Navbar.Brand>
          <Nav className="me-auto">
            <Link className="nav-link" to="/">&#127968;Trang chủ</Link>
           
            {user === null ? <>
                        <Link className="nav-link text-danger" to="/login">Đăng nhập</Link>
                        <Link className="nav-link text-danger" to="/register">Đăng ký</Link>
                        
                       
                    </>: <>
                        <Link className="nav-link text-danger" to="/">Chào {user.username}!</Link>
                        <Button variant="secondary" onClick={logout}>Đăng xuất</Button>
                    </>}
          </Nav>
        </Container>
      </Navbar>
    </>
  )
}

export default Header;