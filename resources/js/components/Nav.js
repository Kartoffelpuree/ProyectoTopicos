import React from 'react';
import { Link } from "react-router-dom";
import { Button, Form, Nav, Navbar, FormControl, NavDropdown, Container} from 'react-bootstrap';


const Navigation = () => {
    return (
        
            <Navbar bg="light" expand="lg">
                <Container>
                    <Navbar.Brand as={Link} to="/cyberdoor/public/">CyberDoor</Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="me-auto">
                            <Nav.Link as={Link} to="/cyberdoor/public/LoginForm">Login</Nav.Link> 
                            <Nav.Link as={Link} to="/cyberdoor/public/LoginForm">Logout</Nav.Link>
                            <Nav.Link as={Link} to="/cyberdoor/public/Acerca">About us</Nav.Link>  
                        </Nav>
                    </Navbar.Collapse>
                </Container>
            </Navbar>
        
    );
}

export default Navigation;