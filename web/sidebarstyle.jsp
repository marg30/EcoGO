<style>
    .navbar {
    background: #fff;
    border: none;
    border-radius: 0;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
    display: flex;
    width: 100%;
    perspective: 1500px;
}

#sidebar {
    height: 100vh;
    margin-top:25px;
    min-width: 250px;
    max-width: 250px;
    background: #23DB3E;
    color: #fff;
    transition: all 0.6s cubic-bezier(0.945, 0.020, 0.270, 0.665);
    transform-origin: bottom left;
    position: fixed;
    right: 0;
    z-index: 999;
}

#sidebar.active {
    visibility: hidden;
    opacity: 0;
    transition: visibility 0s 1s, opacity 0.3s linear;
}

.sidebar-header {
    padding: 20px;
    background: #23DB3E;
}
#sidebar{
    background: white;
}
#sidebar ul p {
    color: black;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
    color: black;
}
#sidebar ul li a:hover {
    color: black;
    background:  #23DB3E;
}

#sidebar ul li.active > a, a[aria-expanded="true"] {
    color:  black;
}


a[data-toggle="collapse"] {
    position: relative;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content {
    width: 100%;
    min-height: 100vh;
    transition: all 0.3s;
    position: absolute;
    top: 0;
    left: 0;    
}

#content.active {
    width: 100%;
}

#sidebarCollapse {
    width: 40px;
    height: 40px;
    cursor: pointer;
}

#sidebarCollapse:hover{
}

#sidebarCollapse span {
    width: 80%;
    height: 2px;
    margin: 0 auto;
    display: block;
    background: #555;
    transition: all 0.8s cubic-bezier(0.810, -0.330, 0.345, 1.375);
    transition-delay: 0.2s;
}

#sidebarCollapse span:first-of-type {
    transform: rotate(45deg) translate(2px, 2px);
}
#sidebarCollapse span:nth-of-type(2) {
    opacity: 0;
}
#sidebarCollapse span:last-of-type {
    transform: rotate(-45deg) translate(1px, -1px);
}


#sidebarCollapse.active span {
    transform: none;
    opacity: 1;
    margin: 5px auto;
    z-index: 1000;
}

#map {
    position: absolute;
    top: 0;
    bottom: 0;
    width: 100%;
}

#barra-izq{
    padding-top: 20px;
    margin-left: 20px;
}
/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */
@media (max-width: 768px) {
    #sidebar {
        margin-right: -250px;
        transform: rotateY(90deg);
    }
    #sidebar.active {
        margin-right: 0;
        transform: none;
    }
    #sidebarCollapse span:first-of-type,
    #sidebarCollapse span:nth-of-type(2),
    #sidebarCollapse span:last-of-type {
        transform: none;
        opacity: 1;
        margin: 5px auto;
    }
    #sidebarCollapse.active span {
        margin: 0 auto;
    }
    #sidebarCollapse.active span:first-of-type {
        transform: rotate(45deg) translate(2px, 2px);
    }
    #sidebarCollapse.active span:nth-of-type(2) {
        opacity: 0;
    }
    #sidebarCollapse.active span:last-of-type {
        transform: rotate(-45deg) translate(1px, -1px);
    }
    #content {
        width: 100%;
    }
    #sidebarCollapse span {
        display: none;
    }

}

</style>