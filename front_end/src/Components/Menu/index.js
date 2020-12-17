import { Navbar, Nav } from 'react-bootstrap';
import { Link, withRouter } from 'react-router-dom';
import './Menu.css';

function BaseMenu(props) {
    const { location } = props
    return (
        <Navbar className="navbar-dark" bg="primary" expand="lg" fixed="top">
        <Navbar.Brand>
            FullStackEletro react      
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="item-menu" />
        <Navbar.Collapse id="item-menu">
            <Nav activekey={location.pathname} className="ml-auto mr-3">
                <Nav.Item>
                    <Nav.Link as={Link} href="/PaginaIni" to="/PaginaIni"> Pagina inicial</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/produtos" to="/produtos"> Produtos</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/lojas" to="/lojas"> Nossas Lojas </Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/contatos" to="/contatos"> Contato</Nav.Link>
                </Nav.Item>


                <Nav.Item>
                    <Nav.Link as={Link} href="/Pedidoss" to="/Pedidoss"> Seus Pedidos </Nav.Link>
                </Nav.Item>



            </Nav>
        </Navbar.Collapse>
        
        {/* <h1>óla mundo</h1> */}

        </Navbar>
     
    )
}

const Menu = withRouter(BaseMenu);

export default Menu;