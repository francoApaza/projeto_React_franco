
import React from 'react';
import {useState, useEffect} from 'react';
import './celula.css';


export default function Produtos() {
    
    const aumentar = (event) => {
        if (event.target.style.width === "160px") {
            event.target.style.width = "80px";
        }
        else {
            event.target.style.width = "160px";
        }
    }
    
    const diminuir = (event) => {
        if (event.target.style.width === "80px") {
            event.target.style.width = "160px";
        }
        else {
            event.target.style.width = "80px";
        }
    }
     
    const [ produtos, setProdutos ] = useState([]);
    useEffect(() => {
        async function fetchData(){
            const resposta = await fetch("http://localhost/Backend/backend/produtos/")

            const dados = await resposta.json()
            setProdutos(dados);
        }
        fetchData();   
    }, []); 

    function exibir_todos() {
        let elementos = document.getElementsByClassName('celula');
        for(let i=0; i<elementos.length; i++){
            elementos[i].style="display:inline-block";
        }
    }

    function exibir_categorias(categoria) {
        let elementos = document.getElementsByClassName('celula');
        for(let i = 0; i < elementos.length; i++){
            if (categoria === elementos[i].children[0].id)
                elementos[i].style="display: inline-block";
            else
                elementos[i].style="display:none";
        }
    }
    
    return(
        <div>
            <div className="container-fluid">
                <title>Nossos Produtos</title>

                <h1>Nossos Produtos</h1>
                <hr />

                <h4>Categorias</h4>
                
                <nav className="nav">
                    <ul className="list-group">
                        <li className="list-group-item border-0 p-1">
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={exibir_todos} href="#">Todos (12)</button>
                        </li>
                        <li className="list-group-item border-0 p-1">
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={()=>exibir_categorias('geladeira')} href="#">Geladeiras (3)</button>
                        </li>
                        <li className="list-group-item border-0 p-1">
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={()=>exibir_categorias('fogao')} href="#">Fogões (2)</button>
                        </li>
                        <li className="list-group-item border-0 p-1">
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={()=>exibir_categorias('micro-ondas')} href="#">Micro-ondas (3)</button>
                        </li>
                        <li className="list-group-item border-0 p-1"> 
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={()=>exibir_categorias('lavadora')} href="#">Lavadora de roupas (2)</button>
                        </li>
                        <li className="list-group-item border-0 p-1">
                            <button className="list-group-item list-group-item-action border-0 p-1" onClick={()=>exibir_categorias('lava-louca')} href="#">Lava-louças (2)</button>
                        </li>
                    </ul>
                </nav>
            </div>

            <div className="container pl-5">
                <div className="row">
                    {produtos.map((item) =>{
                        
                        return(
                            <div className='celula'>
                                <div className="pr-3 itens" key={item.idproduto} id={item.categoria}>
                                    <div>
                                        <img id="img" onMouseOver={aumentar}  onMouseOut={diminuir} style={{width:60}} src={require(`./img/${item.imagem}`).default} alt={item.categoria} />
                                    </div> 
                                    <div className="informacoes_do_produto">
                                        {item.descricao}
                                        <hr/>
                                    </div>
                                    <div className="preco_antigo">
                                        R${item.preco}
                                    </div>
                                    <div className="preco">
                                        R${item.precofinal}
                                    </div>
                                </div>
                            </div>
                        )            
                    })}
                </div>
            </div>
        </div>
    )
}

