import React from 'react';
import {useState, useEffect} from 'react';  
import { Form, Button} from 'react-bootstrap';

export default function Contatos(){
  
    const [msg, setmsg ] = useState([]);
      // trocamos mensagens para msg---

    const [render, setRender] = useState(false);
    const [msgok, setMsgok] = useState(false);
    // trocamos o msg para msgok
    
    React.useEffect(async () => {
      const url = "http://localhost/Backend/backend/comentarios/";
      const response = await fetch (url);
      setmsg(await response.json());

    },[render]);


  
    
    async function registercomentarios(event) {
        event.preventDefault();
        
        let formData = new FormData(event.target);
        
        const url = "http://localhost/Backend/backend/comentarios/register-comentarios.php";
  
        fetch(url, {
            method: "POST",
            body: formData
        }).then((response) => response.json()).then((dados) => {
            setRender(!render);
            setMsgok(dados);
  
            setTimeout(() => {
              setMsgok(false)
            }, 3000);
  
        });
    }
    
    return(
      
      <div id="fale">
        
        <title>Fale Conosco</title>
        
        <main className="container-fluid">
          <header>
            <h1>Fale Conosco</h1>
          </header>
  
          <hr/>
          <div>  
  
            {/* //logotipo da pagina */}
            <section className="container"> 
              <div className="card-deck mb-3 text-center">
            
  
                  <div className="card mx-auto my-auto" >
                      <img width="40px" src="./imagens/E-mail.png" alt="Email"/>contato@fullstackeletro.com
                  </div>
                  <div className="card whid mx-auto my-auto ">
                      <img width="40px" src="./imagens/whatspp.png" alt="Whatsapp"/>(11) 99999-9999
                  </div>
                
              </div>
            </section><br/><br/>
          </div>
  
  
          <div>
            <form className="col-lg mx-auto" onSubmit={registercomentarios}>
              <section className="container-fluid">
                  <div className="form-group-sm">
                    <label>Nome:</label>
                    <input className= "form-control" name="nome" id="nome" style={{width:'800px'}} type="text" placeholder="Seu nome"/>
                  </div>
                  <div className="form-group-sm">  
                    <label>Mensagem:</label>
                    <textarea className= "form-control" name="msg" id="msg" style={{width:'800px'}}  placeholder="Digite sua mensagem"></textarea>
                    <button className="btn btn-primary  col-lg" style={{width:'800px'}} type="submit">
                      Enviar
                    </button>
                     <br/><br/>
                  </div>
              </section>
            </form>  
          </div>
          
          { 
            msgok && <div className="alert alert-success mx-auto mt-4 w-75" role="alert">
              Obrigada por sua mensagem!
            </div>
          }
  
          <div className="col-lg-8 mx-auto">
          <div>
                <div>
                    
                    {msg.map((item) =>{
                        return(
            
                            <div key={item.id}>
                                {/* <div>
                                    Data: {item.data}
                                </div> */}
                                <div>
                                    Nome: {item.nome}
                                </div>
                                <div>
                                    Cliente {item.nome} disse: {item.msg}
                                </div><br/><br/>
                            </div>
                        )            
                    })}
                </div><br/><br/>
            </div>
          </div>
      
        </main>
      </div>
    );
  }
